.class public La7/p;
.super La7/c;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Lcom/miui/gamebooster/service/w;

.field private g:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

.field private h:Lcom/miui/gamebooster/service/a0;

.field private i:Landroid/content/ServiceConnection;

.field private j:Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gamebooster/service/w;)V
    .locals 1

    invoke-direct {p0}, La7/c;-><init>()V

    sget-object v0, Lcom/miui/gamebooster/service/a0;->a:Lcom/miui/gamebooster/service/a0;

    iput-object v0, p0, La7/p;->h:Lcom/miui/gamebooster/service/a0;

    new-instance v0, La7/p$a;

    invoke-direct {v0, p0}, La7/p$a;-><init>(La7/p;)V

    iput-object v0, p0, La7/p;->i:Landroid/content/ServiceConnection;

    new-instance v0, La7/p$b;

    invoke-direct {v0, p0}, La7/p$b;-><init>(La7/p;)V

    iput-object v0, p0, La7/p;->j:Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;

    iput-object p1, p0, La7/p;->e:Landroid/content/Context;

    iput-object p2, p0, La7/p;->f:Lcom/miui/gamebooster/service/w;

    return-void
.end method

.method static synthetic f(La7/p;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iget-object p0, p0, La7/p;->g:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p0
.end method

.method static synthetic g(La7/p;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;
    .locals 0

    iput-object p1, p0, La7/p;->g:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-object p1
.end method

.method static synthetic h(La7/p;)Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;
    .locals 0

    iget-object p0, p0, La7/p;->j:Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;

    return-object p0
.end method

.method static synthetic i(La7/p;)V
    .locals 0

    invoke-direct {p0}, La7/p;->p()V

    return-void
.end method

.method static synthetic j(La7/p;)Z
    .locals 0

    iget-boolean p0, p0, La7/p;->b:Z

    return p0
.end method

.method static synthetic k(La7/p;Z)Z
    .locals 0

    iput-boolean p1, p0, La7/p;->b:Z

    return p1
.end method

.method static synthetic l(La7/p;)Z
    .locals 0

    iget-boolean p0, p0, La7/p;->d:Z

    return p0
.end method

.method static synthetic m(La7/p;)Lcom/miui/gamebooster/service/w;
    .locals 0

    iget-object p0, p0, La7/p;->f:Lcom/miui/gamebooster/service/w;

    return-object p0
.end method

.method static synthetic n(La7/p;)Lcom/miui/gamebooster/service/a0;
    .locals 0

    iget-object p0, p0, La7/p;->h:Lcom/miui/gamebooster/service/a0;

    return-object p0
.end method

.method static synthetic o(La7/p;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;
    .locals 0

    iput-object p1, p0, La7/p;->h:Lcom/miui/gamebooster/service/a0;

    return-object p1
.end method

.method private p()V
    .locals 3

    :try_start_0
    iget-object v0, p0, La7/p;->g:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    const-string v1, "xunyou"

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->init(Ljava/lang/String;)I

    const-string v0, "game_network_speed_real_open"

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a;->J(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMiuiVpnService Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XunyouBoosterService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, La7/p;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {}, La8/o0;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, La7/p;->g:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, La7/p;->j:Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;

    invoke-interface {v0, v2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->unregisterCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    iget-object v0, p0, La7/p;->i:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, La7/p;->c:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, La7/p;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, La7/p;->g:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->setDSDASwitch(Z)V

    :cond_2
    iget-object v0, p0, La7/p;->g:Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    invoke-interface {v0}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->disConnectVpn()V

    iget-object v0, p0, La7/p;->e:Landroid/content/Context;

    iget-object v2, p0, La7/p;->i:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v1, p0, La7/p;->c:Z

    const-string v0, "GameBoosterService"

    const-string v2, "xunyoubooster...stop"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMiuiVpnService Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XunyouBoosterService"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-object v0, p0, La7/p;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lp6/b;->g(Landroid/content/Context;Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, La7/p;->f:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, La7/p;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, La7/p;->a:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, La7/p;->f:Lcom/miui/gamebooster/service/w;

    invoke-virtual {v1}, Lcom/miui/gamebooster/service/w;->G()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La8/o0;->m()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.networkassistant.vpn.MIUI_VPN_MANAGE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, La7/p;->e:Landroid/content/Context;

    iget-object v3, p0, La7/p;->i:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {v1, v0, v3, v2, v4}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, La7/p;->c:Z

    const-string v0, "GameBoosterService"

    const-string v1, "xunyoubooster...start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "game_network_speed_start"

    invoke-static {v0}, Lcom/miui/gamebooster/utils/a;->J(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, La7/p;->e:Landroid/content/Context;

    invoke-static {v0, v2}, Lp6/b;->g(Landroid/content/Context;Z)V

    :goto_1
    return-void
.end method

.method public d()V
    .locals 3

    invoke-static {}, Ln6/a;->a()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, La7/p;->e:Landroid/content/Context;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    invoke-static {v2}, Lm6/a;->O(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La7/p;->e:Landroid/content/Context;

    invoke-static {v0}, Lm6/a;->e(Landroid/content/Context;)Lm6/a;

    invoke-static {v1}, Lm6/a;->C(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, La7/p;->a:Z

    invoke-static {}, La8/g0;->m0()Z

    move-result v0

    iput-boolean v0, p0, La7/p;->d:Z

    sget-object v0, Lcom/miui/gamebooster/service/a0;->a:Lcom/miui/gamebooster/service/a0;

    iput-object v0, p0, La7/p;->h:Lcom/miui/gamebooster/service/a0;

    return-void
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
