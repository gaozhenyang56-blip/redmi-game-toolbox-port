//go:build windows

package main

import (
	"encoding/binary"
	"errors"
	M "github.com/xjasonlyu/tun2socks/v2/metadata"
	"golang.org/x/sys/windows"
	"net/netip"
	"strings"
	"unicode/utf16"
	"unsafe"
)

var iphelper = windows.NewLazySystemDLL("iphlpapi.dll")
var tcpTable = iphelper.NewProc("GetExtendedTcpTable")
var udpTable = iphelper.NewProc("GetExtendedUdpTable")
var ntQuery = windows.NewLazySystemDLL("ntdll.dll").NewProc("NtQueryInformationProcess")

func getTable(udp, ipv6 bool) ([]byte, error) {
	proc := tcpTable
	class := uintptr(5)
	if udp {
		proc = udpTable
		class = 1
	}
	family := uintptr(2)
	if ipv6 {
		family = 23
	}
	var size uint32
	code, _, _ := proc.Call(0, uintptr(unsafe.Pointer(&size)), 0, family, class, 0)
	if code != 122 && code != 0 {
		return nil, errors.New("owner table unavailable")
	}
	for i := 0; i < 3; i++ {
		if size < 4 || size > 16<<20 {
			return nil, errors.New("owner table limit")
		}
		b := make([]byte, size)
		code, _, _ = proc.Call(uintptr(unsafe.Pointer(&b[0])), uintptr(unsafe.Pointer(&size)), 0, family, class, 0)
		if code == 0 {
			return b[:size], nil
		}
		if code != 122 {
			break
		}
	}
	return nil, errors.New("owner table changed")
}
func tableOwner(data []byte, udp, ipv6 bool, m *M.Metadata) uint32 {
	rowSize, localOffset, localPort, remoteOffset, remotePort, pidOffset := 24, 4, 8, 12, 16, 20
	if ipv6 {
		rowSize, localOffset, localPort, remoteOffset, remotePort, pidOffset = 56, 0, 20, 24, 44, 52
	}
	if udp {
		rowSize, localOffset, localPort, pidOffset = 12, 0, 4, 8
		if ipv6 {
			rowSize, localPort, pidOffset = 28, 20, 24
		}
	}
	if len(data) < 4 {
		return 0
	}
	count := int(binary.LittleEndian.Uint32(data[:4]))
	data = data[4:]
	if count > len(data)/rowSize {
		return 0
	}
	var found uint32
	addr := func(b []byte, offset int) netip.Addr {
		if ipv6 {
			var ip [16]byte
			copy(ip[:], b[offset:offset+16])
			return netip.AddrFrom16(ip)
		}
		var ip [4]byte
		copy(ip[:], b[offset:offset+4])
		return netip.AddrFrom4(ip)
	}
	for i := 0; i < count; i++ {
		row := data[i*rowSize : (i+1)*rowSize]
		if binary.BigEndian.Uint16(row[localPort:localPort+2]) != m.SrcPort {
			continue
		}
		local := addr(row, localOffset)
		if local != m.SrcIP && !(udp && local.IsUnspecified()) {
			continue
		}
		if !udp && (addr(row, remoteOffset) != m.DstIP || binary.BigEndian.Uint16(row[remotePort:remotePort+2]) != m.DstPort) {
			continue
		}
		pid := binary.LittleEndian.Uint32(row[pidOffset : pidOffset+4])
		if pid == 0 || found != 0 && found != pid {
			return 0
		}
		found = pid
	}
	return found
}
func processSID(handle windows.Handle) (string, error) {
	var token windows.Token
	err := windows.OpenProcessToken(handle, windows.TOKEN_QUERY, &token)
	if err != nil {
		return "", err
	}
	defer token.Close()
	user, err := token.GetTokenUser()
	if err != nil {
		return "", err
	}
	return user.User.Sid.String(), nil
}
func commandLine(handle windows.Handle) string {
	// ProcessCommandLineInformation is supported on Windows 10+. Returned pointers
	// are validated within the allocated response before decoding UTF-16.
	b := make([]byte, 65536)
	var length uint32
	code, _, _ := ntQuery.Call(uintptr(handle), 60, uintptr(unsafe.Pointer(&b[0])), uintptr(len(b)), uintptr(unsafe.Pointer(&length)))
	if code != 0 {
		return ""
	}
	type unicodeString struct {
		Length, MaximumLength uint16
		Buffer                *uint16
	}
	value := (*unicodeString)(unsafe.Pointer(&b[0]))
	start := uintptr(unsafe.Pointer(value.Buffer))
	base := uintptr(unsafe.Pointer(&b[0]))
	n := uintptr(value.Length)
	if n == 0 || n%2 != 0 || start < base || start+n > base+uintptr(len(b)) {
		return ""
	}
	chars := make([]uint16, n/2)
	offset := int(start - base)
	for i := range chars {
		chars[i] = binary.LittleEndian.Uint16(b[offset+2*i : offset+2*i+2])
	}
	return string(utf16.Decode(chars))
}
func ownerWithInspector(m *M.Metadata, inspect func(windows.Handle, uint32) bool) uint32 {
	udp := m.Network == M.UDP
	ipv6 := m.SrcIP.Is6()
	data, err := getTable(udp, ipv6)
	if err != nil {
		return 0
	}
	pid := tableOwner(data, udp, ipv6, m)
	if pid == 0 {
		return 0
	}
	handle, err := windows.OpenProcess(windows.PROCESS_QUERY_LIMITED_INFORMATION, false, pid)
	if err != nil {
		return 0
	}
	defer windows.CloseHandle(handle)
	if !inspect(handle, pid) {
		return 0
	}
	again, err := getTable(udp, ipv6)
	if err != nil || tableOwner(again, udp, ipv6, m) != pid {
		return 0
	}
	return pid
}
func windowsOwner(ownerSID, programFiles string) func(*M.Metadata) uint32 {
	return func(m *M.Metadata) uint32 {
		return ownerWithInspector(m, func(handle windows.Handle, pid uint32) bool {
			sid, err := processSID(handle)
			if err != nil || sid != ownerSID {
				return false
			}
			image := make([]uint16, 32768)
			size := uint32(len(image))
			if windows.QueryFullProcessImageName(handle, 0, &image[0], &size) != nil {
				return false
			}
			return candidate(windows.UTF16ToString(image[:size]), commandLine(handle), programFiles)
		})
	}
}

func programFiles() string {
	path, err := windows.KnownFolderPath(windows.FOLDERID_ProgramFilesX64, 0)
	if err != nil {
		return ""
	}
	return strings.TrimRight(path, "\\")
}
