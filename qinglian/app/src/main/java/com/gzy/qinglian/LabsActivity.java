package com.gzy.qinglian;
import android.os.Bundle;
import android.widget.*;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.color.DynamicColors;
/** Speed experiments are optional and reversible, never global server tuning. */
public final class LabsActivity extends AppCompatActivity {
 private LinearLayout body;
 @Override public void onCreate(Bundle state){AppAppearance.apply(this);DynamicColors.applyToActivityIfAvailable(this);super.onCreate(state);
  LinearLayout root=new LinearLayout(this);root.setOrientation(LinearLayout.VERTICAL);MaterialToolbar bar=new MaterialToolbar(this);bar.setTitle("速度实验室");bar.setNavigationIcon(androidx.appcompat.R.drawable.abc_ic_ab_back_material);bar.setNavigationContentDescription("返回");bar.setNavigationOnClickListener(v->finish());root.addView(bar);ScrollView scroll=new ScrollView(this);body=new LinearLayout(this);body.setOrientation(LinearLayout.VERTICAL);int pad=dp(20);body.setPadding(pad,pad,pad,pad);scroll.addView(body);root.addView(scroll,new LinearLayout.LayoutParams(-1,0,1));setContentView(root);
  note("实验功能默认关闭。性能受Wi-Fi、跨境线路、服务器和目标站点共同限制，参数加大不保证更快。HY2设置需断开VPN后修改，再使用加速通道连接。");
  option("hy2","HY2 激进性能模式","为本设备申请独立HY2节点；客户端与服务端使用最高激进档BBR aggressive，接收窗口扩展至单流32MiB、连接64MiB，不设置固定带宽上限。保留限额、证书校验和服务兼容分流。可能增加耗电、内存和拥塞；线路差时反而变慢。",true);
  option("parallel","四路并行下载测速","测速页用4路请求测合计吞吐，总下载大小保持不变，仍计入流量额度。适合与单路比较；不会改变其他App下载方式。",false);
  option("raw","原始速度曲线","显示约250毫秒采样速度，替代近1秒平滑曲线；全程平均算法不变。更容易观察波动，不会提高连接速度。",false);
  note("已开启项目仅对本设备生效。关闭激进模式并重新连接即可恢复保守参数；不修改服务器全局网络设置或其他设备节点。共享物理带宽仍会互相竞争。");
 }
 private int dp(int n){return Math.round(n*getResources().getDisplayMetrics().density);}
 private void note(String value){TextView t=new TextView(this);t.setText(value);t.setTextSize(14);t.setPadding(0,dp(8),0,dp(20));body.addView(t);}
 private void option(String key,String title,String detail,boolean transport){MaterialSwitch toggle=new MaterialSwitch(this);toggle.setText(title);toggle.setTextSize(18);toggle.setChecked(LabSettings.enabled(this,key));toggle.setPadding(0,dp(8),0,dp(8));body.addView(toggle);note(detail);
  toggle.setOnCheckedChangeListener((button,checked)->{if(transport&&!TunnelService.state.equals("disconnected")){button.setChecked(LabSettings.enabled(this,key));Toast.makeText(this,"请先断开VPN再修改",Toast.LENGTH_SHORT).show();return;}
   if(checked&&transport&&!LabSettings.enabled(this,key)){button.setChecked(false);new MaterialAlertDialogBuilder(this).setTitle("开启激进性能实验？").setMessage("更高窗口与激进拥塞探测可能增加耗电、内存及波动；不保证1Gbps。只创建本设备实验节点，保留原流量额度。下次加速连接时需服务器确认支持。").setPositiveButton("开启",(d,w)->{LabSettings.set(this,key,true);button.setChecked(true);}).setNegativeButton("取消",null).show();}else LabSettings.set(this,key,checked);
  });
 }
}
