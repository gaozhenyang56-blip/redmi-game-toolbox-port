.class Lcom/miui/antivirus/service/GuardService$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/service/GuardService$h;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/miui/antivirus/service/GuardService$h;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/GuardService$h;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService$h$a;->b:Lcom/miui/antivirus/service/GuardService$h;

    iput-object p2, p0, Lcom/miui/antivirus/service/GuardService$h$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$h$a;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$h$a;->a:Landroid/content/Intent;

    const/4 v1, -0x1

    const-string v3, "changeReason"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$h$a;->a:Landroid/content/Intent;

    const-string v1, "wifiConfiguration"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/service/GuardService$h$a;->b:Lcom/miui/antivirus/service/GuardService$h;

    iget-object v1, v1, Lcom/miui/antivirus/service/GuardService$h;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v1}, Lcom/miui/antivirus/service/GuardService;->v(Lcom/miui/antivirus/service/GuardService;)Lo2/i;

    move-result-object v1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v0}, Lo2/i;->b(I)V

    :cond_0
    return-void

    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_8

    invoke-static {}, Lo2/h;->y()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$h$a;->b:Lcom/miui/antivirus/service/GuardService$h;

    iget-object v0, v0, Lcom/miui/antivirus/service/GuardService$h;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->l(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/antivirus/service/GuardService$g;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$h$a;->b:Lcom/miui/antivirus/service/GuardService$h;

    iget-object v0, v0, Lcom/miui/antivirus/service/GuardService$h;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->u(Lcom/miui/antivirus/service/GuardService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v3, 0x0

    const-string v4, "GuardService"

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$h$a;->a:Landroid/content/Intent;

    const-string v5, "networkInfo"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    iget-object v5, p0, Lcom/miui/antivirus/service/GuardService$h$a;->b:Lcom/miui/antivirus/service/GuardService$h;

    iget-object v5, v5, Lcom/miui/antivirus/service/GuardService$h;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v5}, Lcom/miui/antivirus/service/GuardService;->u(Lcom/miui/antivirus/service/GuardService;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v6, v7, :cond_6

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v3, "<unknown ssid>"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v3, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$h$a;->b:Lcom/miui/antivirus/service/GuardService$h;

    iget-object v0, v0, Lcom/miui/antivirus/service/GuardService$h;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->l(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/antivirus/service/GuardService$g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lw2/w;

    iget-object v3, p0, Lcom/miui/antivirus/service/GuardService$h$a;->b:Lcom/miui/antivirus/service/GuardService$h;

    iget-object v3, v3, Lcom/miui/antivirus/service/GuardService$h;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-direct {v1, v3}, Lw2/w;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lw2/w;->e(Landroid/net/wifi/WifiInfo;)V

    iget-object v3, p0, Lcom/miui/antivirus/service/GuardService$h$a;->b:Lcom/miui/antivirus/service/GuardService$h;

    iget-object v3, v3, Lcom/miui/antivirus/service/GuardService$h;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v3}, Lcom/miui/antivirus/service/GuardService;->v(Lcom/miui/antivirus/service/GuardService;)Lo2/i;

    move-result-object v3

    invoke-virtual {v3, v5}, Lo2/i;->d(Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lw2/w;->d(Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/antivirus/service/GuardService$h$a;->b:Lcom/miui/antivirus/service/GuardService$h;

    iget-object v1, v1, Lcom/miui/antivirus/service/GuardService$h;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v1}, Lcom/miui/antivirus/service/GuardService;->l(Lcom/miui/antivirus/service/GuardService;)Lcom/miui/antivirus/service/GuardService$g;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v0, "start wifi check."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$h$a;->b:Lcom/miui/antivirus/service/GuardService$h;

    iget-object v0, v0, Lcom/miui/antivirus/service/GuardService$h;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0, v3}, Lcom/miui/antivirus/service/GuardService;->r(Lcom/miui/antivirus/service/GuardService;Lw2/w;)Lw2/w;

    return-void

    :cond_7
    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$h$a;->b:Lcom/miui/antivirus/service/GuardService$h;

    iget-object v0, v0, Lcom/miui/antivirus/service/GuardService$h;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->u(Lcom/miui/antivirus/service/GuardService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-gt v0, v2, :cond_8

    const-string v0, "cancel wifi check."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$h$a;->b:Lcom/miui/antivirus/service/GuardService$h;

    iget-object v0, v0, Lcom/miui/antivirus/service/GuardService$h;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0, v3}, Lcom/miui/antivirus/service/GuardService;->r(Lcom/miui/antivirus/service/GuardService;Lw2/w;)Lw2/w;

    :cond_8
    :goto_2
    return-void
.end method
