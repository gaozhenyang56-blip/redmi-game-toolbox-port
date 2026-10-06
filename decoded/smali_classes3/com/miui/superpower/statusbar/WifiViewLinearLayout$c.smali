.class Lcom/miui/superpower/statusbar/WifiViewLinearLayout$c;
.super Lmg/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/superpower/statusbar/WifiViewLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic d:Lcom/miui/superpower/statusbar/WifiViewLinearLayout;


# direct methods
.method public constructor <init>(Lcom/miui/superpower/statusbar/WifiViewLinearLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$c;->d:Lcom/miui/superpower/statusbar/WifiViewLinearLayout;

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

    if-nez v0, :cond_5

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    const-string v0, "wifi_state"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$c;->d:Lcom/miui/superpower/statusbar/WifiViewLinearLayout;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->b(Lcom/miui/superpower/statusbar/WifiViewLinearLayout;)Lcom/miui/superpower/statusbar/button/WifiButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Lng/a;->setChecked(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$c;->d:Lcom/miui/superpower/statusbar/WifiViewLinearLayout;

    invoke-static {p1}, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->b(Lcom/miui/superpower/statusbar/WifiViewLinearLayout;)Lcom/miui/superpower/statusbar/button/WifiButton;

    move-result-object p1

    invoke-virtual {p1, p2}, Lng/a;->setChecked(Z)V

    :cond_2
    iget-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$c;->d:Lcom/miui/superpower/statusbar/WifiViewLinearLayout;

    invoke-static {p1, p2}, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->c(Lcom/miui/superpower/statusbar/WifiViewLinearLayout;Z)V

    goto :goto_1

    :cond_3
    const-string p2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :goto_0
    iget-object p1, p0, Lcom/miui/superpower/statusbar/WifiViewLinearLayout$c;->d:Lcom/miui/superpower/statusbar/WifiViewLinearLayout;

    invoke-static {p1, v1}, Lcom/miui/superpower/statusbar/WifiViewLinearLayout;->c(Lcom/miui/superpower/statusbar/WifiViewLinearLayout;Z)V

    goto :goto_1

    :cond_4
    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method
