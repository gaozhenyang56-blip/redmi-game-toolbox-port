.class Lcom/miui/autotask/activity/WlanSelectActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autotask/activity/WlanSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/activity/WlanSelectActivity;


# direct methods
.method constructor <init>(Lcom/miui/autotask/activity/WlanSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/activity/WlanSelectActivity$a;->a:Lcom/miui/autotask/activity/WlanSelectActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/autotask/activity/WlanSelectActivity$a;->a:Lcom/miui/autotask/activity/WlanSelectActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/WlanSelectActivity;->A0(Lcom/miui/autotask/activity/WlanSelectActivity;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/miui/autotask/activity/WlanSelectActivity$a;->a:Lcom/miui/autotask/activity/WlanSelectActivity;

    invoke-static {p2, p1}, Lcom/miui/autotask/activity/WlanSelectActivity;->B0(Lcom/miui/autotask/activity/WlanSelectActivity;Ljava/util/List;)V

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string p1, "wifi_state"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_a

    const/4 p2, 0x1

    if-eq p1, p2, :cond_9

    const/4 p2, 0x2

    if-eq p1, p2, :cond_8

    const/4 p2, 0x3

    if-eq p1, p2, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/miui/autotask/activity/WlanSelectActivity$a;->a:Lcom/miui/autotask/activity/WlanSelectActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/WlanSelectActivity;->C0(Lcom/miui/autotask/activity/WlanSelectActivity;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/autotask/activity/WlanSelectActivity$a;->a:Lcom/miui/autotask/activity/WlanSelectActivity;

    invoke-static {p1, v0}, Lcom/miui/autotask/activity/WlanSelectActivity;->D0(Lcom/miui/autotask/activity/WlanSelectActivity;Z)Z

    return-void

    :cond_7
    iget-object p1, p0, Lcom/miui/autotask/activity/WlanSelectActivity$a;->a:Lcom/miui/autotask/activity/WlanSelectActivity;

    invoke-virtual {p1}, Lcom/miui/autotask/activity/BaseSelectActivity;->v0()V

    iget-object p1, p0, Lcom/miui/autotask/activity/WlanSelectActivity$a;->a:Lcom/miui/autotask/activity/WlanSelectActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/WlanSelectActivity;->E0(Lcom/miui/autotask/activity/WlanSelectActivity;)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/miui/autotask/activity/WlanSelectActivity$a;->a:Lcom/miui/autotask/activity/WlanSelectActivity;

    invoke-virtual {p1}, Lcom/miui/autotask/activity/BaseSelectActivity;->p0()V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/miui/autotask/activity/WlanSelectActivity$a;->a:Lcom/miui/autotask/activity/WlanSelectActivity;

    invoke-virtual {p1}, Lcom/miui/autotask/activity/BaseSelectActivity;->m0()V

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/miui/autotask/activity/WlanSelectActivity$a;->a:Lcom/miui/autotask/activity/WlanSelectActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/WlanSelectActivity;->F0(Lcom/miui/autotask/activity/WlanSelectActivity;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    iget-object p1, p0, Lcom/miui/autotask/activity/WlanSelectActivity$a;->a:Lcom/miui/autotask/activity/WlanSelectActivity;

    invoke-virtual {p1}, Lcom/miui/autotask/activity/BaseSelectActivity;->o0()V

    :goto_1
    return-void
.end method
