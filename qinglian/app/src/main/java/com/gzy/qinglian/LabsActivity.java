package com.gzy.qinglian;
import android.os.Bundle;
import android.widget.*;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.materialswitch.MaterialSwitch;
import com.google.android.material.color.DynamicColors;
/** Speed experiments are optional and reversible, never global server tuning. */
public final class LabsActivity extends AppCompatActivity {
 private LinearLayout body;
 @Override public void onCreate(Bundle state){AppAppearance.apply(this);DynamicColors.applyToActivityIfAvailable(this);super.onCreate(state);
  LinearLayout root=new LinearLayout(this);root.setOrientation(LinearLayout.VERTICAL);MaterialToolbar bar=new MaterialToolbar(this);bar.setTitle("速度实验室");bar.setNavigationIcon(androidx.appcompat.R.drawable.abc_ic_ab_back_material);bar.setNavigationContentDescription("返回");bar.setNavigationOnClickListener(v->finish());root.addView(bar);ScrollView scroll=new ScrollView(this);body=new LinearLayout(this);body.setOrientation(LinearLayout.VERTICAL);int pad=dp(20);body.setPadding(pad,pad,pad,pad);scroll.addView(body);root.addView(scroll,new LinearLayout.LayoutParams(-1,0,1));setContentView(root);
  note("实验功能默认关闭，测速选项在下次测试生效。性能受Wi-Fi、跨境线路、服务器和目标站点共同限制，参数加大不保证更快。HY2高性能配置已正式加入连接页，加速通道默认使用。");
  option("multiHy2","双HY2隧道（实验）","下次连接加速通道时建立两条独立QUIC隧道，按连接随机分担，最多两条；同一服务器、同一凭据和合并额度，不为单个下载叠加带宽。可能增加内存、耗电和拥塞，默认关闭；敏感服务仍走兼容通道。");
  option("parallel","四路并行下载测速","测速页用4路请求测合计吞吐，总下载大小保持不变，仍计入流量额度。适合与单路比较；不会改变其他App下载方式。");
  option("raw","原始速度曲线","显示约250毫秒采样速度，替代近1秒平滑曲线；全程平均算法不变。更容易观察波动，不会提高连接速度。");
  note("双隧道仅改变本设备的连接方式，不修改共享节点和服务器全局参数。测速选项只影响测速；所有流量仍合并计量。高性能与保守HY2均在连接页选择，修改后重连生效。");
 }
 private int dp(int n){return Math.round(n*getResources().getDisplayMetrics().density);}
 private void note(String value){TextView t=new TextView(this);t.setText(value);t.setTextSize(14);t.setPadding(0,dp(8),0,dp(20));body.addView(t);}
 private void option(String key,String title,String detail){MaterialSwitch toggle=new MaterialSwitch(this);toggle.setText(title);toggle.setTextSize(18);toggle.setChecked(LabSettings.enabled(this,key));toggle.setPadding(0,dp(8),0,dp(8));body.addView(toggle);note(detail);toggle.setOnCheckedChangeListener((button,checked)->LabSettings.set(this,key,checked));}
}
