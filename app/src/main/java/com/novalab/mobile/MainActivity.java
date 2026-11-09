package com.novalab.mobile;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.JavascriptInterface;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
public class MainActivity extends Activity {
  private static final int EXPORT_REQUEST=156;
  private WebView webView;
  private String pendingExport="[]";
  @SuppressLint({"SetJavaScriptEnabled", "AddJavascriptInterface"})
  @Override public void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    getWindow().setStatusBarColor(Color.rgb(8,14,29));
    getWindow().setNavigationBarColor(Color.rgb(16,25,43));
    webView=new WebView(this);
    webView.setBackgroundColor(Color.rgb(8,14,29));
    webView.getSettings().setJavaScriptEnabled(true);
    webView.getSettings().setDomStorageEnabled(true);
    webView.getSettings().setAllowFileAccess(true);
    webView.getSettings().setAllowContentAccess(false);
    webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(false);
    webView.setWebChromeClient(new WebChromeClient());
    webView.setWebViewClient(new WebViewClient() {
      @Override public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        return !"file".equals(request.getUrl().getScheme());
      }
    });
    webView.addJavascriptInterface(new Object() {
      @JavascriptInterface public void saveRecords(String json) {
        runOnUiThread(()->launchExport(json));
      }
    },"AndroidBridge");
    setContentView(webView);
    webView.loadUrl("file:///android_asset/index.html");
  }
  private void launchExport(String json) {
    pendingExport=json;
    Intent intent=new Intent(Intent.ACTION_CREATE_DOCUMENT);
    intent.addCategory(Intent.CATEGORY_OPENABLE);
    intent.setType("application/json");
    intent.putExtra(Intent.EXTRA_TITLE,"星图实验记录.json");
    startActivityForResult(intent, EXPORT_REQUEST);
  }
  @Override protected void onActivityResult(int requestCode,int resultCode,Intent data) {
    super.onActivityResult(requestCode,resultCode,data);
    if(requestCode==EXPORT_REQUEST&&resultCode==RESULT_OK&&data!=null){
      Uri uri=data.getData();
      if(uri!=null)try(OutputStream os=getContentResolver().openOutputStream(uri)){
        if(os!=null){
          os.write(pendingExport.getBytes(StandardCharsets.UTF_8));
          Toast.makeText(this,"实验记录已导出",Toast.LENGTH_SHORT).show();
        }
      }catch(Exception e){Toast.makeText(this,"导出失败",Toast.LENGTH_SHORT).show();}
    }
  }
  @Override public void onBackPressed() {
    webView.evaluateJavascript("typeof store==='undefined' ? 'home' : (store.page === 'home' ? 'home' : (openPage('home'),'other'))", v->{
      if("\"home\"".equals(v)) super.onBackPressed();
    });
  }
  @Override protected void onDestroy(){
    if(webView!=null){webView.removeJavascriptInterface("AndroidBridge");webView.destroy();}
    super.onDestroy();
  }
}
