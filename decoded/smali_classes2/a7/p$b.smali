.class La7/p$b;
.super Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La7/p;


# direct methods
.method constructor <init>(La7/p;)V
    .locals 0

    iput-object p1, p0, La7/p$b;->a:La7/p;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public isVpnConnected()Z
    .locals 1

    invoke-super {p0}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->isVpnConnected()Z

    move-result v0

    return v0
.end method

.method public onVpnStateChanged(IILjava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->onVpnStateChanged(IILjava/lang/String;)V

    iget-object v0, p0, La7/p$b;->a:La7/p;

    invoke-static {v0}, La7/p;->f(La7/p;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, La7/p$b$a;

    invoke-direct {v0, p0, p2}, La7/p$b$a;-><init>(La7/p$b;I)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, La7/p$b;->a:La7/p;

    invoke-static {v0}, La7/p;->n(La7/p;)Lcom/miui/gamebooster/service/a0;

    move-result-object v0

    sget-object v1, Lcom/miui/gamebooster/service/a0;->c:Lcom/miui/gamebooster/service/a0;

    const-string v2, "XunyouBoosterService"

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    const-string v0, "vpn booster success"

    :goto_0
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La7/p$b;->a:La7/p;

    sget-object v1, Lcom/miui/gamebooster/service/a0;->b:Lcom/miui/gamebooster/service/a0;

    invoke-static {v0, v1}, La7/p;->o(La7/p;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;

    goto :goto_1

    :cond_1
    iget-object v0, p0, La7/p$b;->a:La7/p;

    invoke-static {v0}, La7/p;->n(La7/p;)Lcom/miui/gamebooster/service/a0;

    move-result-object v0

    if-ne v0, v1, :cond_2

    const/16 v0, 0x3ea

    if-ne p2, v0, :cond_2

    const-string v0, "vpn booster failed"

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VpnType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " VpnState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Vpndata:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
