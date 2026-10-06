.class Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;
.super Lmg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/icon/WifiSignalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Lcom/miui/superpower/statusbar/icon/WifiSignalView;


# direct methods
.method public constructor <init>(Lcom/miui/superpower/statusbar/icon/WifiSignalView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;->d:Lcom/miui/superpower/statusbar/icon/WifiSignalView;

    invoke-direct {p0, p2}, Lmg/a;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lmg/a;->c:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lmg/a;->c:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lmg/a;->c:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/4 p1, 0x4

    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_0
    const-string p2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;->d:Lcom/miui/superpower/statusbar/icon/WifiSignalView;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->a(Lcom/miui/superpower/statusbar/icon/WifiSignalView;)V

    goto :goto_0

    :cond_1
    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;->d:Lcom/miui/superpower/statusbar/icon/WifiSignalView;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->b(Lcom/miui/superpower/statusbar/icon/WifiSignalView;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;->d:Lcom/miui/superpower/statusbar/icon/WifiSignalView;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/icon/WifiSignalView;->a(Lcom/miui/superpower/statusbar/icon/WifiSignalView;)V

    iget-object p1, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;->d:Lcom/miui/superpower/statusbar/icon/WifiSignalView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/superpower/statusbar/icon/WifiSignalView$a;->d:Lcom/miui/superpower/statusbar/icon/WifiSignalView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
