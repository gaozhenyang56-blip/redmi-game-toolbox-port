"""Read ZIP/7z entries through libarchive, writing only validated regular files."""
import ctypes as C
import ctypes.util
import shutil
from pathlib import Path
from file_manager import FileError

MAX_EXPANDED=2*1024**3

def extract(source,destination,validate):
 library=ctypes.util.find_library('archive')
 if not library:raise FileError(503,'服务器缺少压缩包读取组件')
 lib=C.CDLL(library)
 signatures={
  'archive_read_new':([],C.c_void_p),
  'archive_read_support_filter_all':([C.c_void_p],C.c_int),
  'archive_read_support_format_all':([C.c_void_p],C.c_int),
  'archive_read_open_filename':([C.c_void_p,C.c_char_p,C.c_size_t],C.c_int),
  'archive_read_next_header':([C.c_void_p,C.POINTER(C.c_void_p)],C.c_int),
  'archive_read_data':([C.c_void_p,C.c_void_p,C.c_size_t],C.c_ssize_t),
  'archive_read_free':([C.c_void_p],C.c_int),
  'archive_entry_pathname_utf8':([C.c_void_p],C.c_char_p),
  'archive_entry_filetype':([C.c_void_p],C.c_uint),
  'archive_entry_size':([C.c_void_p],C.c_longlong),
  'archive_entry_symlink':([C.c_void_p],C.c_char_p),
  'archive_entry_hardlink':([C.c_void_p],C.c_char_p),
  'archive_entry_is_encrypted':([C.c_void_p],C.c_int),
 }
 for name,(args,result) in signatures.items():
  f=getattr(lib,name);f.argtypes=args;f.restype=result
 archive=lib.archive_read_new();entries=[];seen=set();total=0;buffer=C.create_string_buffer(1024**2)
 try:
  lib.archive_read_support_filter_all(archive);lib.archive_read_support_format_all(archive)
  if lib.archive_read_open_filename(archive,str(source).encode(),1024**2)!=0:raise FileError(400,'压缩包无法读取，可能损坏或需要密码')
  while True:
   entry=C.c_void_p();result=lib.archive_read_next_header(archive,C.byref(entry))
   if result==1:break
   if result!=0:raise FileError(400,'压缩包损坏或格式不受支持')
   raw=lib.archive_entry_pathname_utf8(entry)
   try:name=raw.decode('utf-8') if raw else ''
   except UnicodeError:raise FileError(400,'压缩包文件名编码无效')
   if lib.archive_entry_symlink(entry) or lib.archive_entry_hardlink(entry) or lib.archive_entry_is_encrypted(entry):raise FileError(400,'压缩包不能包含链接或加密文件')
   kind=lib.archive_entry_filetype(entry)
   if kind==0o040000:
    validate(name.rstrip('/')+'/_directory_check.txt');continue
   if kind!=0o100000:raise FileError(400,'压缩包仅允许普通文件和目录')
   name=validate(name)
   if name.casefold() in seen:raise FileError(400,'压缩包存在重名文件')
   seen.add(name.casefold())
   if len(seen)>3000:raise FileError(413,'压缩包最多3000个文件')
   declared=lib.archive_entry_size(entry)
   if declared<0 or total+declared>MAX_EXPANDED:raise FileError(413,'解压后总大小不能超过2 GiB')
   if shutil.disk_usage(destination).free<declared+512*1024**2:raise FileError(507,'空间不足，需保留512 MiB运行空间')
   target=Path(destination)/name;target.parent.mkdir(parents=True,exist_ok=True);written=0
   with target.open('xb') as out:
    while True:
     length=lib.archive_read_data(archive,buffer,len(buffer))
     if length==0:break
     if length<0:raise FileError(400,'压缩包数据校验失败')
     written+=length;total+=length
     if written>declared or total>MAX_EXPANDED:raise FileError(413,'压缩包展开大小超出限制')
     out.write(buffer.raw[:length])
   if written!=declared:raise FileError(400,'压缩包文件不完整')
   entries.append({'path':name,'bytes':written})
  if not entries:raise FileError(400,'压缩包中没有可部署文件')
  return entries
 finally:lib.archive_read_free(archive)
