.class Lcom/miui/gamebooster/ui/BoosterFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/BoosterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/ui/BoosterFragment;->g0(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    new-instance p1, Lcom/miui/gamebooster/ui/BoosterFragment$a$a;

    invoke-direct {p1, p0}, Lcom/miui/gamebooster/ui/BoosterFragment$a$a;-><init>(Lcom/miui/gamebooster/ui/BoosterFragment$a;)V

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->f0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p2}, Lcom/miui/gamebooster/ui/BoosterFragment;->G0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/BoosterFragment$h0;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "top"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->R0(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lc3/w;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/BoosterFragment;->b1(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/BoosterFragment$g0;

    move-result-object p1

    const/16 p2, 0x72

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2, v1}, Lw4/e;->a(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/miui/gamebooster/ui/BoosterFragment;->u0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-static {}, Lcom/miui/gamebooster/ui/BoosterFragment;->u0()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMiuiVpnService :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v1}, Lcom/miui/gamebooster/ui/BoosterFragment;->f0(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$a;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->g0(Lcom/miui/gamebooster/ui/BoosterFragment;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-void
.end method
