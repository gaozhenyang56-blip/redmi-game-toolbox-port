package com.gzy.qinglian;
import android.content.Intent;
import android.os.Bundle;
import android.widget.*;
import androidx.appcompat.app.AppCompatActivity;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.color.DynamicColors;
import org.json.JSONObject;
/** A dedicated account screen; connecting as a guest never requires opening it. */
public final class AccountActivity extends AppCompatActivity {
 private AccountPage page;private JSONObject pending;
 @Override public void onCreate(Bundle state){AppAppearance.apply(this);DynamicColors.applyToActivityIfAvailable(this);super.onCreate(state);if(state!=null)try{pending=new JSONObject(state.getString("export",""));}catch(Exception ignored){}
  LinearLayout root=new LinearLayout(this);root.setOrientation(LinearLayout.VERTICAL);MaterialToolbar toolbar=new MaterialToolbar(this);toolbar.setTitle("账号与节点导出");toolbar.setNavigationIcon(androidx.appcompat.R.drawable.abc_ic_ab_back_material);toolbar.setNavigationContentDescription("返回");toolbar.setNavigationOnClickListener(v->finish());root.addView(toolbar,new LinearLayout.LayoutParams(-1,(int)(64*getResources().getDisplayMetrics().density)));
  page=new AccountPage(this,profile->{pending=profile;startActivityForResult(new Intent(Intent.ACTION_CREATE_DOCUMENT).addCategory(Intent.CATEGORY_OPENABLE).setType("application/zip").putExtra(Intent.EXTRA_TITLE,ExportClient.archiveName(profile)),88);});root.addView(page.content,new LinearLayout.LayoutParams(-1,0,1));setContentView(root);page.show();
 }
 @Override protected void onSaveInstanceState(Bundle state){if(pending!=null)state.putString("export",pending.toString());super.onSaveInstanceState(state);}
 @Override protected void onActivityResult(int request,int result,Intent data){super.onActivityResult(request,result,data);if(request==88&&result==RESULT_OK&&pending!=null&&data!=null&&data.getData()!=null){JSONObject profile=pending;pending=null;android.net.Uri target=data.getData();new Thread(()->{try(java.io.OutputStream out=getContentResolver().openOutputStream(target)){if(out==null)throw new java.io.IOException();ExportClient.archive(profile,out);runOnUiThread(()->Toast.makeText(this,"节点配置包已保存",Toast.LENGTH_SHORT).show());}catch(Exception e){runOnUiThread(()->Toast.makeText(this,"保存失败，请重新导出",Toast.LENGTH_SHORT).show());}},"account-export").start();}}
 @Override protected void onDestroy(){if(page!=null)page.close();super.onDestroy();}
}
