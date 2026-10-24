package com.gzy.qinglian.remote;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Base64;
import org.json.JSONObject;
import java.io.*;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.regex.*;

/** Runs under Shizuku's shell identity. Only typed, fixed commands are accepted. */
public final class ShellService extends IShell.Stub {
    private static final int LIMIT = 16 * 1024 * 1024;
    public ShellService() {}
    private byte[] run(String... argv) throws Exception {
        Process p = new ProcessBuilder(argv).redirectError(ProcessBuilder.Redirect.DISCARD).start();
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        final Exception[] failure = {null};
        Thread reader = new Thread(() -> {
            try (InputStream input = p.getInputStream()) {
                byte[] buffer = new byte[32768]; int count;
                while ((count = input.read(buffer)) != -1) {
                    if (out.size() + count > LIMIT) throw new IOException("Output too large");
                    out.write(buffer, 0, count);
                }
            } catch (Exception e) { failure[0] = e; p.destroyForcibly(); }
        });
        reader.start();
        if (!p.waitFor(8, TimeUnit.SECONDS)) { p.destroyForcibly(); throw new IOException("Command timeout"); }
        reader.join(1000);
        if (reader.isAlive() || failure[0] != null || p.exitValue() != 0) throw new IOException("Shell operation failed");
        return out.toByteArray();
    }
    private String text(String... argv) throws Exception { return new String(run(argv), java.nio.charset.StandardCharsets.UTF_8); }
    private int number(JSONObject d, String key, int min, int max) throws Exception {
        Object value = d.get(key);
        if (!(value instanceof Integer) || (int)value < min || (int)value > max) throw new IOException("Invalid coordinate");
        return (int)value;
    }
    private void control(JSONObject d) throws Exception {
        String action = d.getString("action");
        switch (action) {
            case "wake": run("input", "keyevent", "224"); break;
            case "sleep": run("input", "keyevent", "223"); break;
            case "unlock": run("input", "keyevent", "224"); run("wm", "dismiss-keyguard"); break;
            case "key":
                Map<String,String> keys = new HashMap<>();
                keys.put("home","3"); keys.put("back","4"); keys.put("recent","187"); keys.put("volume_up","24"); keys.put("volume_down","25");
                String key = keys.get(d.getString("key")); if(key == null) throw new IOException("Unknown key");
                run("input","keyevent",key); break;
            case "text":
                String value = d.getString("text");
                if (!value.matches("[A-Za-z0-9 .,@_+:/=-]{1,300}")) throw new IOException("Unsupported text");
                run("input","text",value.replace(" ","%s")); break;
            case "tap": case "swipe":
                int w = number(d,"width",1,16384), h = number(d,"height",1,16384);
                String x = ""+number(d,"x",0,w-1), y = ""+number(d,"y",0,h-1);
                if (action.equals("tap")) run("input","tap",x,y);
                else run("input","swipe",x,y,""+number(d,"x2",0,w-1),""+number(d,"y2",0,h-1),""+number(d,"duration",100,2000));
                break;
            default: throw new IOException("Unknown operation");
        }
    }
    private JSONObject state() throws Exception {
        String power = text("dumpsys","power"), window = text("dumpsys","window","policy");
        Matcher screen = Pattern.compile("Display Power: state=(ON|OFF|DOZE_SUSPEND|DOZE|VR)\\b").matcher(power);
        String current = "unknown";
        if (screen.find()) { String s = screen.group(1); current = s.equals("OFF") ? "off" : s.startsWith("DOZE") ? "doze" : "on"; }
        else {
            Matcher legacy = Pattern.compile("mScreenOn=(true|false)\\b").matcher(power);
            if(legacy.find()) current = legacy.group(1).equals("true") ? "on":"off";
        }
        Matcher lock = Pattern.compile("(?:mShowingLockscreen|isStatusBarKeyguard|mKeyguardShowing|showing)=(true|false)\\b").matcher(window);
        JSONObject result = new JSONObject().put("connected",true).put("screen",current)
            .put("locked",lock.find() ? Boolean.valueOf(lock.group(1)) : JSONObject.NULL);
        Matcher size = Pattern.compile("(?:Physical|Override) size:\\s*(\\d+)x(\\d+)").matcher(text("wm","size"));
        result.put("width",JSONObject.NULL).put("height",JSONObject.NULL);
        while(size.find()) result.put("width",Integer.parseInt(size.group(1))).put("height",Integer.parseInt(size.group(2)));
        return result;
    }
    @Override public ParcelFileDescriptor execute(String action, String payload) throws RemoteException {
        try {
            ParcelFileDescriptor[] pipe = ParcelFileDescriptor.createPipe();
            new Thread(() -> {
                try (OutputStream output = new ParcelFileDescriptor.AutoCloseOutputStream(pipe[1])) {
                    JSONObject result;
                    try {
                        if (action.equals("screen")) result = new JSONObject().put("png",Base64.encodeToString(run("screencap","-p"),Base64.NO_WRAP));
                        else if (action.equals("state")) result = new JSONObject().put("state",state());
                        else if (action.equals("control")) { control(new JSONObject(payload)); result = new JSONObject().put("state",state()); }
                        else throw new IOException("Unknown action");
                    } catch(Exception e) { result = new JSONObject().put("error","手机控制权限不可用或操作失败"); }
                    output.write(result.toString().getBytes(java.nio.charset.StandardCharsets.UTF_8));
                } catch(Exception ignored) {}
            },"remote-shell-command").start();
            return pipe[0];
        } catch(IOException e) { throw new RemoteException("Cannot create result pipe"); }
    }
    @Override public void destroy() { System.exit(0); }
}
