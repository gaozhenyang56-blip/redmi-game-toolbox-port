package com.gzy.qinglian;
import android.content.*;
import android.os.Bundle;
import android.widget.*;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import org.json.JSONObject;
/** Import only the bootstrap exported by an administrator of a Qinglian panel. */
public final class ServerActivity extends AppCompatActivity {
 @Override public void onCreate(Bundle state){AppAppearance.apply(this);super.onCreate(state);
  LinearLayout root=new LinearLayout(this);root.setOrientation(LinearLayout.VERTICAL);int pad=(int)(20*getResources().getDisplayMetrics().density);root.setPadding(pad,pad,pad,pad);
  MaterialToolbar bar=new MaterialToolbar(this);bar.setTitle("面板服务器");bar.setNavigationIcon(androidx.appcompat.R.drawable.abc_ic_ab_back_material);bar.setNavigationOnClickListener(v->finish());root.addView(bar);
  TextView text=new TextView(this);text.setText("当前："+ServerSettings.display(this)+"\n\n导入其他轻连面板管理员导出的服务器配置文件。不是第三方节点或订阅。\n账号、流量和域名记录由所选面板管理；账号按服务器隔离。切换需先断开连接，保存后退出，重新打开生效。");root.addView(text);
  MaterialButton load=new MaterialButton(this);load.setText("导入服务器配置文件");root.addView(load);load.setOnClickListener(v->startActivityForResult(new Intent(Intent.ACTION_OPEN_DOCUMENT).addCategory(Intent.CATEGORY_OPENABLE).setType("*/*"),93));
  MaterialButton reset=new MaterialButton(this);reset.setText("恢复内置服务器");root.addView(reset);reset.setOnClickListener(v->confirm(null));setContentView(root);
 }
 private void confirm(JSONObject root){String name=root==null?"安装包内置服务器":root.optString("name")+"\n"+root.optJSONObject("profile").optString("url");new MaterialAlertDialogBuilder(this).setTitle("切换面板服务器").setMessage(name+"\n保存后退出，请重新打开轻连。").setPositiveButton("保存并退出",(d,w)->{try{ServerSettings.saveAndExit(this,root);}catch(Exception error){Toast.makeText(this,"保存失败，请先断开VPN后重试",Toast.LENGTH_LONG).show();}}).setNegativeButton("取消",null).show();}
 @Override protected void onActivityResult(int request,int result,Intent data){super.onActivityResult(request,result,data);if(request!=93||result!=RESULT_OK||data==null||data.getData()==null)return;
  android.net.Uri uri=data.getData();new Thread(()->{
  try(java.io.InputStream in=getContentResolver().openInputStream(uri);java.io.ByteArrayOutputStream out=new java.io.ByteArrayOutputStream()){
   if(in==null)throw new java.io.IOException();byte[] buffer=new byte[4096];int n;while((n=in.read(buffer))!=-1){if(out.size()+n>ServerSettings.MAX)throw new java.io.IOException();out.write(buffer,0,n);}JSONObject value=ServerSettings.validate(out.toString("UTF-8"));runOnUiThread(()->{if(!isFinishing()&&!isDestroyed())confirm(value);});
  }catch(Exception error){runOnUiThread(()->{if(!isFinishing()&&!isDestroyed())Toast.makeText(this,"配置无效，请导入轻连面板导出的服务器配置",Toast.LENGTH_LONG).show();});}
  },"server-config-import").start();
 }
}
