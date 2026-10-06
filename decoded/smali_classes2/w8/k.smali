.class public Lw8/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw8/k$d;
    }
.end annotation


# static fields
.field private static m:Lw8/k;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;

.field private g:Lw8/k$d;

.field private h:Lcom/miui/gamebooster/service/a0;

.field private i:Lcom/miui/gamebooster/service/IGameBooster;

.field private j:I

.field private k:Landroid/content/ServiceConnection;

.field l:Lo4/a$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/gamebooster/service/a0;->a:Lcom/miui/gamebooster/service/a0;

    iput-object v0, p0, Lw8/k;->h:Lcom/miui/gamebooster/service/a0;

    const/4 v0, 0x0

    iput v0, p0, Lw8/k;->j:I

    new-instance v0, Lw8/k$a;

    invoke-direct {v0, p0}, Lw8/k$a;-><init>(Lw8/k;)V

    iput-object v0, p0, Lw8/k;->k:Landroid/content/ServiceConnection;

    new-instance v0, Lw8/k$b;

    invoke-direct {v0, p0}, Lw8/k$b;-><init>(Lw8/k;)V

    iput-object v0, p0, Lw8/k;->l:Lo4/a$a;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iput-object v0, p0, Lw8/k;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lw8/k;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lw8/k;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iget-object p0, p0, Lw8/k;->d:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p0
.end method

.method static synthetic b(Lw8/k;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iput-object p1, p0, Lw8/k;->d:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p1
.end method

.method static synthetic c(Lw8/k;)Lw8/k$d;
    .locals 0

    iget-object p0, p0, Lw8/k;->g:Lw8/k$d;

    return-object p0
.end method

.method static synthetic d(Lw8/k;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw8/k;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lw8/k;Lw8/k$d;)Lw8/k$d;
    .locals 0

    iput-object p1, p0, Lw8/k;->g:Lw8/k$d;

    return-object p1
.end method

.method static synthetic f(Lw8/k;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lw8/k;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lw8/k;)Lcom/miui/gamebooster/service/a0;
    .locals 0

    iget-object p0, p0, Lw8/k;->h:Lcom/miui/gamebooster/service/a0;

    return-object p0
.end method

.method static synthetic h(Lw8/k;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;
    .locals 0

    iput-object p1, p0, Lw8/k;->h:Lcom/miui/gamebooster/service/a0;

    return-object p1
.end method

.method static synthetic i(Lw8/k;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iget-object p0, p0, Lw8/k;->i:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p0
.end method

.method static synthetic j(Lw8/k;Lcom/miui/gamebooster/service/IGameBooster;)Lcom/miui/gamebooster/service/IGameBooster;
    .locals 0

    iput-object p1, p0, Lw8/k;->i:Lcom/miui/gamebooster/service/IGameBooster;

    return-object p1
.end method

.method static synthetic k(Lw8/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lw8/k;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic l(Lw8/k;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lw8/k;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lw8/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lw8/k;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic n(Lw8/k;)I
    .locals 0

    iget p0, p0, Lw8/k;->j:I

    return p0
.end method

.method static synthetic o(Lw8/k;)Z
    .locals 0

    invoke-direct {p0}, Lw8/k;->t()Z

    move-result p0

    return p0
.end method

.method static synthetic p(Lw8/k;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lw8/k;->y(Z)V

    return-void
.end method

.method static synthetic q(Lw8/k;)Z
    .locals 0

    iget-boolean p0, p0, Lw8/k;->c:Z

    return p0
.end method

.method public static declared-synchronized s()Lw8/k;
    .locals 2

    const-class v0, Lw8/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw8/k;->m:Lw8/k;

    if-nez v1, :cond_0

    new-instance v1, Lw8/k;

    invoke-direct {v1}, Lw8/k;-><init>()V

    sput-object v1, Lw8/k;->m:Lw8/k;

    :cond_0
    sget-object v1, Lw8/k;->m:Lw8/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private t()Z
    .locals 2

    const-string v0, "key_refresh_xunyou_user_state"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La8/m0;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static u(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lx4/f1;->m(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "game_turbo_api_version"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private y(Z)V
    .locals 1

    const-string v0, "key_refresh_xunyou_user_state"

    invoke-static {v0, p1}, La8/m0;->f(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public r(Ljava/lang/String;Z)V
    .locals 3

    iput-object p1, p0, Lw8/k;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lw8/k;->c:Z

    invoke-static {}, La8/o0;->m()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lw8/k;->d:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.miui.securitycenter"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.miui.networkassistant.vpn.MIUI_VPN_MANAGE_SERVICE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lw8/k;->a:Landroid/content/Context;

    iget-object v0, p0, Lw8/k;->k:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {p2, p1, v0, v1, v2}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    goto :goto_0

    :cond_1
    :try_start_0
    const-string p2, "xunyou"

    invoke-interface {p1, p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->init(Ljava/lang/String;)I

    sget-object p1, Lcom/miui/gamebooster/service/a0;->f:Lcom/miui/gamebooster/service/a0;

    iput-object p1, p0, Lw8/k;->h:Lcom/miui/gamebooster/service/a0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public v()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lw8/k;->d:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->refreshUserState()I

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/service/a0;->e:Lcom/miui/gamebooster/service/a0;

    iput-object v0, p0, Lw8/k;->h:Lcom/miui/gamebooster/service/a0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XunyouManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public w()V
    .locals 3

    iget-object v0, p0, Lw8/k;->d:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lw8/k;->g:Lw8/k$d;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->unregisterCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    iget-object v0, p0, Lw8/k;->a:Landroid/content/Context;

    iget-object v1, p0, Lw8/k;->k:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MiuiVpnServiceException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XunyouManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lw8/k;->d:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-void
.end method

.method public x(I)V
    .locals 0

    iput p1, p0, Lw8/k;->j:I

    return-void
.end method
