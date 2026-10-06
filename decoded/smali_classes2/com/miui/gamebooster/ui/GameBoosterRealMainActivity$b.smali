.class Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$b;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$b;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const/4 p1, 0x1

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$b;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    invoke-interface {v0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSupportVpn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xunyou"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$b;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    iput-boolean p2, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->m:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$b;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    iput-boolean p1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->m:Z

    iget-boolean v1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->p:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->O()V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$b;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    iget-object v1, v0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->f0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)Lcom/miui/gamebooster/xunyou/MainMiuiVpnManageServiceCallback;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "gb_update_adapter_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "gb_intent_xunyouuser"

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$b;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    iget-boolean v2, v2, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->m:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$b;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->g0(Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;)Lr0/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lr0/a;->d(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMiuiVpnService :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$b;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    iget-object v2, v2, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity$b;->a:Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/gamebooster/ui/GameBoosterRealMainActivity;->h:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-void
.end method
