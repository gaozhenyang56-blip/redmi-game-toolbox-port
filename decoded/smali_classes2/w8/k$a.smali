.class Lw8/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw8/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw8/k;


# direct methods
.method constructor <init>(Lw8/k;)V
    .locals 0

    iput-object p1, p0, Lw8/k$a;->a:Lw8/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "xunyou"

    const-string v0, "XunyouManager"

    iget-object v1, p0, Lw8/k$a;->a:Lw8/k;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object p2

    invoke-static {v1, p2}, Lw8/k;->b(Lw8/k;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    iget-object p2, p0, Lw8/k$a;->a:Lw8/k;

    new-instance v1, Lw8/k$d;

    invoke-direct {v1}, Lw8/k$d;-><init>()V

    invoke-static {p2, v1}, Lw8/k;->e(Lw8/k;Lw8/k$d;)Lw8/k$d;

    :try_start_0
    iget-object p2, p0, Lw8/k$a;->a:Lw8/k;

    invoke-static {p2}, Lw8/k;->a(Lw8/k;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object p2

    iget-object v1, p0, Lw8/k$a;->a:Lw8/k;

    invoke-static {v1}, Lw8/k;->c(Lw8/k;)Lw8/k$d;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    iget-object p2, p0, Lw8/k$a;->a:Lw8/k;

    invoke-static {p2}, Lw8/k;->a(Lw8/k;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object p2

    invoke-interface {p2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSupportVpn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "xunyou getSupportVpn:false"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p2, p0, Lw8/k$a;->a:Lw8/k;

    invoke-static {p2}, Lw8/k;->a(Lw8/k;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->init(Ljava/lang/String;)I

    iget-object p1, p0, Lw8/k$a;->a:Lw8/k;

    sget-object p2, Lcom/miui/gamebooster/service/a0;->f:Lcom/miui/gamebooster/service/a0;

    invoke-static {p1, p2}, Lw8/k;->h(Lw8/k;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiuiVpnServiceException:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mMiuiVpnService :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lw8/k$a;->a:Lw8/k;

    invoke-static {p2}, Lw8/k;->a(Lw8/k;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lw8/k$a;->a:Lw8/k;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lw8/k;->b(Lw8/k;Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    return-void
.end method
