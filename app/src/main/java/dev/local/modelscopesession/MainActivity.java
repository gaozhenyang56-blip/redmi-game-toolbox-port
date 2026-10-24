package dev.local.modelscopesession;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.net.http.SslError;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;

/**
 * Unofficial, first-party ModelScope WebView session helper.
 * Cookies are obtained only from THIS app's WebView cookie jar.
 * Never logs, uploads, or automatically copies session credentials.
 */
public final class MainActivity extends Activity {
    private static final String HOME_URL = "https://www.modelscope.cn/home";
    private static final String COOKIE_URL = "https://www.modelscope.cn/";
    private static final String BARE_COOKIE_URL = "https://modelscope.cn/";
    private static final long CHECK_INTERVAL_MS = 2500L;

    private WebView webView;
    private TextView statusText;
    private TextView originText;
    private boolean blockedSslError;
    private ProgressBar loadingBar;
    private Handler handler;
    private boolean watching;
    private String lastCookieFingerprint = "";

    private final Runnable cookieWatcher = new Runnable() {
        @Override public void run() {
            if (!watching) return;
            refreshCookieStatus(false);
            handler.postDelayed(this, CHECK_INTERVAL_MS);
        }
    };

    @Override public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        handler = new Handler(Looper.getMainLooper());
        statusText = findViewById(R.id.statusText);
        originText = findViewById(R.id.originText);
        loadingBar = findViewById(R.id.loadingBar);
        webView = findViewById(R.id.siteWebView);

        CookieManager.getInstance().setAcceptCookie(true);
        configureWebView(webView, false, null);

        findViewById(R.id.homeButton).setOnClickListener(v -> webView.loadUrl(HOME_URL));
        findViewById(R.id.checkButton).setOnClickListener(v -> refreshCookieStatus(true));
        findViewById(R.id.copyButton).setOnClickListener(v -> confirmCopyCookie());
        findViewById(R.id.logoutButton).setOnClickListener(v -> confirmLogout());

        if (savedInstanceState == null) {
            webView.loadUrl(HOME_URL);
        } else {
            if (webView.restoreState(savedInstanceState) == null) webView.loadUrl(HOME_URL);
        }
        refreshCookieStatus(false);
    }

    private void configureWebView(WebView view, boolean popup, Dialog popupDialog) {
        WebSettings settings = view.getSettings();
        settings.setJavaScriptEnabled(true);     // Needed by ModelScope's SPA/login page.
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setMixedContentMode(WebSettings.MIXED_CONTENT_NEVER_ALLOW);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setMediaPlaybackRequiresUserGesture(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        CookieManager.getInstance().setAcceptThirdPartyCookies(view, false);
        view.setWebViewClient(new WebViewClient() {
            @Override public boolean shouldOverrideUrlLoading(WebView w, WebResourceRequest req) {
                Uri uri = req.getUrl();
                if (uri != null && "https".equalsIgnoreCase(uri.getScheme())) {
                    showBrowsingOrigin(uri);
                    return false;
                }
                if (uri != null && "about".equalsIgnoreCase(uri.getScheme())
                        && "about:blank".equalsIgnoreCase(uri.toString())) return false;
                toast("已阻止非 HTTPS 或外部应用跳转");
                return true;
            }
            @Override public void onPageStarted(WebView w, String url, android.graphics.Bitmap favicon) {
                blockedSslError = false;
                showBrowsingOrigin(Uri.parse(url));
            }
            @Override public void onPageFinished(WebView w, String url) {
                showBrowsingOrigin(Uri.parse(url));
                handler.postDelayed(() -> refreshCookieStatus(false), 700L);
            }
            @Override public void onReceivedError(WebView w, WebResourceRequest req,
                                                  WebResourceError error) {
                if (req.isForMainFrame()) {
                    statusText.setText("网页加载失败。请检查网络，或更新 Android System WebView。");
                }
            }
            @Override public void onReceivedSslError(WebView w, SslErrorHandler sslHandler,
                                                     SslError error) {
                // Never bypass invalid certificates for a login flow.
                sslHandler.cancel();
                blockedSslError = true;
                statusText.setText("HTTPS 证书验证失败，已阻止不安全连接。");
            }
        });
        view.setWebChromeClient(new WebChromeClient() {
            @Override public void onProgressChanged(WebView w, int progress) {
                if (!popup && loadingBar != null) {
                    loadingBar.setProgress(progress);
                    loadingBar.setVisibility(progress >= 100 ? View.GONE : View.VISIBLE);
                }
            }
            @Override public boolean onCreateWindow(WebView w, boolean isDialog,
                                                    boolean isUserGesture, Message resultMsg) {
                if (!isUserGesture) return false;
                openTrustedBrowserPopup(resultMsg);
                return true;
            }
            @Override public void onCloseWindow(WebView window) {
                if (popup && popupDialog != null && popupDialog.isShowing()) popupDialog.dismiss();
            }
        });
    }

    private void openTrustedBrowserPopup(Message resultMsg) {
        // Some login providers open a separate web window; cookie storage is shared.
        Dialog dialog = new Dialog(this);
        WebView child = new WebView(this);
        configureWebView(child, true, dialog);
        dialog.setContentView(child);
        dialog.setOnDismissListener(d -> {
            child.stopLoading();
            child.destroy();
            if (webView != null && webView.getUrl() != null) {
                showBrowsingOrigin(Uri.parse(webView.getUrl()));
            }
            refreshCookieStatus(false);
        });
        dialog.show();
        if (dialog.getWindow() != null) {
            dialog.getWindow().setLayout(ViewGroup.LayoutParams.MATCH_PARENT,
                                         ViewGroup.LayoutParams.MATCH_PARENT);
        }
        WebView.WebViewTransport transport = (WebView.WebViewTransport) resultMsg.obj;
        transport.setWebView(child);
        resultMsg.sendToTarget();
    }

    /** Shows the real current site, including external login domains. */
    private void showBrowsingOrigin(Uri url) {
        if (url == null || !"https".equalsIgnoreCase(url.getScheme())) return;
        String host = url.getHost();
        if (host == null) return;
        String lowerHost = host.toLowerCase(Locale.ROOT);
        boolean official = lowerHost.equals("modelscope.cn") || lowerHost.endsWith(".modelscope.cn");
        originText.setText((official ? "魔搭官方站点：" : "外部站点，请核对域名：") + host);
        originText.setTextColor(android.graphics.Color.parseColor(official ? "#2563EB" : "#B45309"));
    }

    /** Never reads Chrome's, other apps', or Android account cookies. */
    private String readOwnSiteCookies() {
        CookieManager cm = CookieManager.getInstance();
        String www = cm.getCookie(COOKIE_URL);
        if (www != null && !www.trim().isEmpty()) return www.trim();
        String apex = cm.getCookie(BARE_COOKIE_URL);
        return apex == null ? "" : apex.trim();
    }

    private void refreshCookieStatus(boolean fromButton) {
        if (isFinishing() || blockedSslError) return;
        String cookie = readOwnSiteCookies();
        if (cookie.isEmpty()) {
            statusText.setText("尚未检测到魔搭站点 Cookie。请在下方官网页面登录。 ");
            if (fromButton) toast("尚未检测到 Cookie");
        } else {
            int count = cookie.split(";", -1).length;
            boolean looksLikeSession = cookie.toLowerCase(Locale.ROOT).contains("m_session_id=");
            String kind = looksLikeSession ? "检测到会话标识" : "已检测到站点数据";
            statusText.setText(kind + " · 共 " + count + " 项 Cookie · 已由 WebView 本机保存\n" +
                    "提醒：检测到 Cookie 不代表登录仍有效，请以网页实际状态为准。");
            if (fromButton) toast("本机已检测到 " + count + " 项 Cookie");
        }
        String fingerprint = sha256(cookie);
        if (!fingerprint.equals(lastCookieFingerprint)) {
            lastCookieFingerprint = fingerprint;
            // Cookie persistence is built into Android WebView. Flush forces disk write.
            CookieManager.getInstance().flush();
        }
    }

    private static String sha256(String text) {
        try {
            byte[] value = MessageDigest.getInstance("SHA-256")
                    .digest(text.getBytes(StandardCharsets.UTF_8));
            StringBuilder out = new StringBuilder(value.length * 2);
            for (byte b : value) out.append(String.format(Locale.ROOT, "%02x", b & 0xff));
            return out.toString();
        } catch (NoSuchAlgorithmException impossible) {
            return Integer.toString(text.hashCode());
        }
    }

    private void confirmCopyCookie() {
        if (readOwnSiteCookies().isEmpty()) {
            toast("没有可复制的本站 Cookie，请先在官方网页完成登录");
            return;
        }
        new AlertDialog.Builder(this)
                .setTitle("复制敏感会话信息？")
                .setMessage("Cookie 可能相当于账号的登录凭证。仅用于你自己的账号，不要发给陌生人、机器人或不可信的网站。\n\n应用不会自行导出或上传 Cookie。")
                .setNegativeButton("取消", null)
                .setPositiveButton("确认复制", (d, which) -> {
                    String cookie = readOwnSiteCookies();
                    if (cookie.isEmpty()) { toast("会话已过期或被清除"); return; }
                    ClipboardManager clipboard = (ClipboardManager) getSystemService(Context.CLIPBOARD_SERVICE);
                    if (clipboard == null) { toast("系统剪贴板不可用"); return; }
                    clipboard.setPrimaryClip(ClipData.newPlainText("ModelScope Cookie（敏感）", cookie));
                    toast("Cookie 已复制，请妥善保护并及时清理剪贴板");
                }).show();
    }

    private void confirmLogout() {
        new AlertDialog.Builder(this)
                .setTitle("清除本机登录信息？")
                .setMessage("将删除本应用 WebView 保存的所有站点 Cookie 与网页存储数据，并重新打开魔搭首页。不会影响其他浏览器的登录。")
                .setNegativeButton("取消", null)
                .setPositiveButton("清除", (d, which) -> {
                    CookieManager.getInstance().removeAllCookies(removed -> {
                        CookieManager.getInstance().flush();
                        WebStorage.getInstance().deleteAllData();
                        webView.clearCache(true);
                        webView.clearHistory();
                        lastCookieFingerprint = "";
                        webView.loadUrl(HOME_URL);
                        refreshCookieStatus(false);
                        toast("已清除本应用的本机会话");
                    });
                }).show();
    }

    private void toast(String message) {
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show();
    }

    @Override protected void onResume() {
        super.onResume();
        watching = true;
        handler.removeCallbacks(cookieWatcher);
        handler.post(cookieWatcher);
        if (webView != null) webView.onResume();
    }

    @Override protected void onPause() {
        watching = false;
        handler.removeCallbacks(cookieWatcher);
        CookieManager.getInstance().flush();
        if (webView != null) webView.onPause();
        super.onPause();
    }

    @Override protected void onSaveInstanceState(Bundle state) {
        if (webView != null) webView.saveState(state);
        super.onSaveInstanceState(state);
    }

    @Override public void onBackPressed() {
        if (webView != null && webView.canGoBack()) webView.goBack();
        else super.onBackPressed();
    }

    @Override protected void onDestroy() {
        watching = false;
        handler.removeCallbacks(cookieWatcher);
        if (webView != null) {
            webView.stopLoading();
            if (webView.getParent() instanceof ViewGroup) {
                ((ViewGroup) webView.getParent()).removeView(webView);
            }
            webView.destroy();
        }
        super.onDestroy();
    }
}
