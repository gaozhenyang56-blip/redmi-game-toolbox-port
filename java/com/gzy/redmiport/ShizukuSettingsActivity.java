package com.gzy.redmiport;
import android.app.Activity;
import android.content.*;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.*;
import android.provider.Settings;
import android.view.View;
import android.widget.*;
import rikka.shizuku.Shizuku;
import com.gzy.redmidiag.CrashReporter;
import java.io.*;
import java.util.concurrent.*;

public final class ShizukuSettingsActivity extends Activity {
    private TextView status,probe;
    private final ExecutorService worker=Executors.newSingleThreadExecutor();
    private final Shizuku.OnBinderReceivedListener received=new Shizuku.OnBinderReceivedListener(){
        public void onBinderReceived(){refreshOnUi();}
    };
    private final Shizuku.OnBinderDeadListener dead=new Shizuku.OnBinderDeadListener(){
        public void onBinderDead(){refreshOnUi();}
    };
    private final Shizuku.OnRequestPermissionResultListener permission=new Shizuku.OnRequestPermissionResultListener(){
        public void onRequestPermissionResult(int code,int result){refreshOnUi();}
    };
    protected void onCreate(Bundle state) {
        super.onCreate(state);
        ScrollView scroll=new ScrollView(this);
        LinearLayout content=new LinearLayout(this);content.setOrientation(LinearLayout.VERTICAL);
        int padding=(int)(20*getResources().getDisplayMetrics().density);
        content.setPadding(padding,padding,padding,padding);scroll.addView(content);setContentView(scroll);
        TextView title=new TextView(this);title.setText("Shizuku");title.setTextSize(26);content.addView(title);
        status=new TextView(this);status.setTextSize(16);status.setPadding(0,padding,0,padding);content.addView(status);
        button(content,"申请授权",new View.OnClickListener(){public void onClick(View view){authorize();}});
        button(content,"打开 Shizuku",new View.OnClickListener(){public void onClick(View view){openManager();}});
        button(content,"悬浮窗权限",new View.OnClickListener(){public void onClick(View view){
            launch(new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION,Uri.parse("package:"+getPackageName())));
        }});
        button(content,"检测 FPS 数据通道",new View.OnClickListener(){public void onClick(View view){testChannel();}});
        button(content,"启动侧栏监测",new View.OnClickListener(){public void onClick(View view){SidebarRuntime.start(ShizukuSettingsActivity.this);refresh();}});
        probe=new TextView(this);probe.setPadding(0,padding,0,padding);content.addView(probe);
        button(content,"刷新状态",new View.OnClickListener(){public void onClick(View view){refresh();}});
        button(content,"崩溃日志",new View.OnClickListener(){public void onClick(View view){
            launch(new Intent().setClassName(getPackageName(),"com.gzy.redmidiag.CrashReportActivity"));
        }});
        button(content,"返回",new View.OnClickListener(){public void onClick(View view){finish();}});
        Shizuku.addBinderReceivedListenerSticky(received);Shizuku.addBinderDeadListener(dead);
        Shizuku.addRequestPermissionResultListener(permission);
        refresh();
    }
    private void button(LinearLayout parent,String label,View.OnClickListener listener){
        Button b=new Button(this);b.setText(label);b.setAllCaps(false);b.setOnClickListener(listener);parent.addView(b);
    }
    private void refreshOnUi(){runOnUiThread(new Runnable(){public void run(){if (!isFinishing()) refresh();}});}
    private void refresh(){
        String service="未运行",grant="未授权";
        try {
            if (Shizuku.pingBinder()) {
                service="运行中";
                grant=Shizuku.checkSelfPermission()==PackageManager.PERMISSION_GRANTED?"已授权":"未授权";
            }
        } catch (Throwable ignored) {service="连接失败";}
        status.setText("Shizuku 服务："+service+"\n应用授权："+grant
            +"\n悬浮窗权限："+(Settings.canDrawOverlays(this)?"已允许":"未允许")+"\n\n"+GameStore.status(this)
            +"\n\n"+SidebarRuntime.status()+"\n\n白条与系统侧边小窗重叠时，可在原设置中调整白条左右位置、高度与边缘内缩。");
    }
    private void authorize(){
        try {
            if (!Shizuku.pingBinder()) {Toast.makeText(this,"请先启动 Shizuku 服务",Toast.LENGTH_SHORT).show();return;}
            if (Shizuku.checkSelfPermission()==PackageManager.PERMISSION_GRANTED) {refresh();return;}
            if (Shizuku.shouldShowRequestPermissionRationale()) {openManager();return;}
            Shizuku.requestPermission(1401);
        } catch(Throwable failure){CrashReporter.record("Shizuku settings authorization",failure);Toast.makeText(this,"授权失败，请查看日志",Toast.LENGTH_SHORT).show();}
    }
    private void openManager(){
        Intent intent=getPackageManager().getLaunchIntentForPackage("moe.shizuku.privileged.api");
        if (intent==null) Toast.makeText(this,"未找到 Shizuku 应用",Toast.LENGTH_SHORT).show();
        else launch(intent);
    }
    private void launch(Intent intent){
        try {startActivity(intent);}catch(Exception failure){Toast.makeText(this,"无法打开此页面",Toast.LENGTH_SHORT).show();}
    }
    private void testChannel(){
        probe.setText("正在检测…");
        worker.execute(new Runnable(){public void run(){
            String result;
            try(InputStream stream=PortRuntime.open("dumpsys SurfaceFlinger --list")) {
                if (stream==null) result="数据通道未连接，请启动 Shizuku 并授权";
                else {
                    BufferedReader input=new BufferedReader(new InputStreamReader(stream,"UTF-8"));
                    String line;int layers=0;
                    while((line=input.readLine())!=null) if(!line.trim().isEmpty()) layers++;
                    result=layers>0?"SurfaceFlinger 数据可读取；游戏 FPS 请进入游戏后查看":"未读取到 SurfaceFlinger 数据";
                }
            }catch(Throwable failure){result="检测失败："+failure.getClass().getSimpleName();CrashReporter.record("FPS channel probe",failure);}
            final String text=result;
            runOnUiThread(new Runnable(){public void run(){if(!isFinishing()){probe.setText(text);refresh();}}});
        }});
    }
    protected void onResume(){super.onResume();if(status!=null) refresh();}
    protected void onDestroy(){
        Shizuku.removeBinderReceivedListener(received);Shizuku.removeBinderDeadListener(dead);
        Shizuku.removeRequestPermissionResultListener(permission);worker.shutdownNow();super.onDestroy();
    }
}
