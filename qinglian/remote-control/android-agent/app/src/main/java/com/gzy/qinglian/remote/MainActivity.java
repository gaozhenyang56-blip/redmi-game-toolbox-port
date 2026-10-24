package com.gzy.qinglian.remote;

import android.Manifest;
import android.app.*;
import android.content.*;
import android.content.pm.PackageManager;
import android.os.*;
import android.view.*;
import android.widget.*;
import java.io.*;
import rikka.shizuku.Shizuku;

public final class MainActivity extends Activity {
    private EditText endpoint, token;
    private TextView status;
    private final Shizuku.OnRequestPermissionResultListener permission = (request, result) ->
        runOnUiThread(() -> status.setText(result == PackageManager.PERMISSION_GRANTED ? "已授权，请点击开始连接":"未获得控制授权"));
    @Override public void onCreate(Bundle saved) {
        super.onCreate(saved);
        Shizuku.addRequestPermissionResultListener(permission);
        LinearLayout layout = new LinearLayout(this); layout.setOrientation(LinearLayout.VERTICAL); layout.setPadding(36,48,36,24);
        ScrollView scroll = new ScrollView(this); scroll.addView(layout); setContentView(scroll);
        TextView title = new TextView(this); title.setText("轻连 · 手机被控端"); title.setTextSize(25); layout.addView(title);
        TextView info = new TextView(this); info.setText("本机主动连接服务器，供网页与 Ubuntu 客户端操作。\n支持 Shizuku 授权或电脑 ADB 直接授权。连接期间有常驻通知，可随时停止。控制端每次登录必须验证 TOTP。\n"); layout.addView(info);
        endpoint = new EditText(this); endpoint.setHint("服务器 HTTPS 地址，例如 https://服务器:18443");
        endpoint.setSingleLine(true); endpoint.setInputType(android.text.InputType.TYPE_CLASS_TEXT|android.text.InputType.TYPE_TEXT_VARIATION_URI);
        endpoint.setText(getPreferences(0).getString("endpoint","https://107.150.7.124:18443")); layout.addView(endpoint);
        token = new EditText(this); token.setHint("手机专用连接密钥（不是管理员令牌）"); token.setSingleLine(true);
        token.setSaveEnabled(false); token.setInputType(android.text.InputType.TYPE_CLASS_TEXT|android.text.InputType.TYPE_TEXT_VARIATION_PASSWORD); layout.addView(token);
        Button grant = new Button(this); grant.setText("授权 Shizuku 控制权限"); layout.addView(grant);
        grant.setOnClickListener(v -> {
            if(!Shizuku.pingBinder()) {status.setText("请先安装并启动 Shizuku，再返回本应用"); return;}
            if(Shizuku.checkSelfPermission() == PackageManager.PERMISSION_GRANTED) status.setText("Shizuku 已授权");
            else Shizuku.requestPermission(1);
        });
        Button ca = new Button(this); ca.setText("导入服务器 CA 证书（自签部署时）"); layout.addView(ca);
        ca.setOnClickListener(v -> startActivityForResult(new Intent(Intent.ACTION_OPEN_DOCUMENT).setType("*/*").addCategory(Intent.CATEGORY_OPENABLE), 2));
        Button start = new Button(this); start.setText("开始连接，允许远程控制"); layout.addView(start);
        start.setOnClickListener(v -> {
            if (AdbReceiver.shell==null && (!Shizuku.pingBinder() || Shizuku.checkSelfPermission()!=PackageManager.PERMISSION_GRANTED)) {status.setText("请先授权 Shizuku 或执行下方 ADB 授权命令"); return;}
            if(!endpoint.getText().toString().startsWith("https://") || token.length()<32) {status.setText("需要 HTTPS 地址和至少32位手机连接密钥"); return;}
            if(Build.VERSION.SDK_INT>=33 && checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS)!=PackageManager.PERMISSION_GRANTED) {
                requestPermissions(new String[]{Manifest.permission.POST_NOTIFICATIONS},3); status.setText("请允许通知后再次开始连接"); return;
            }
            getPreferences(0).edit().putString("endpoint",endpoint.getText().toString().trim()).apply();
            startForegroundService(new Intent(this,AgentService.class).putExtra("endpoint",endpoint.getText().toString().trim()).putExtra("token",token.getText().toString().trim()));
            token.setText(""); status.setText("已发起连接，权限来源："+(AdbReceiver.shell!=null ? "ADB 直接授权":"Shizuku")+"。连接状态见常驻通知。");
        });
        Button stop = new Button(this); stop.setText("停止远程控制"); layout.addView(stop);
        stop.setOnClickListener(v -> {stopService(new Intent(this,AgentService.class)); status.setText("已停止远程控制");});
        TextView adb = new TextView(this); adb.setTextIsSelectable(true);
        adb.setText("\nADB 直接授权（安装并打开本应用后，在电脑执行）：\nadb shell sh /sdcard/Android/data/com.gzy.qinglian.remote/files/start-adb.sh\n重启手机或被系统结束授权进程后需重新执行。执行后可拔掉电脑。\n"); layout.addView(adb);
        try {
            File directory=getExternalFilesDir(null);
            if(directory!=null) try(FileOutputStream output=new FileOutputStream(new File(directory,"start-adb.sh"))) {
                output.write(("#!/system/bin/sh\napk=$(pm path com.gzy.qinglian.remote | head -n 1 | cut -d: -f2)\n[ -n \"$apk\" ] || exit 1\nCLASSPATH=\"$apk\" app_process /system/bin com.gzy.qinglian.remote.AdbMain >/dev/null 2>&1 &\n").getBytes(java.nio.charset.StandardCharsets.UTF_8));
            }
        } catch(Exception ignored) {}
        status = new TextView(this); status.setPadding(0,24,0,0); status.setText("未连接"); layout.addView(status);
    }
    @Override protected void onActivityResult(int request, int result, Intent data) {
        super.onActivityResult(request,result,data);
        if(request!=2 || result!=RESULT_OK || data==null) return;
        try(InputStream in=getContentResolver().openInputStream(data.getData())) {
            ByteArrayOutputStream bytes=new ByteArrayOutputStream(); byte[] buffer=new byte[4096]; int n;
            while((n=in.read(buffer))!=-1) {if(bytes.size()+n>65536) throw new IOException(); bytes.write(buffer,0,n);}
            java.security.cert.CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(bytes.toByteArray()));
            try(OutputStream out=openFileOutput("server-ca.pem",MODE_PRIVATE)) {out.write(bytes.toByteArray());}
            status.setText("服务器 CA 已导入，仍校验证书主机名。请仅导入管理员提供的证书。");
        } catch(Exception e) {status.setText("证书导入失败");}
    }
    @Override protected void onDestroy() {Shizuku.removeRequestPermissionResultListener(permission); super.onDestroy();}
}
