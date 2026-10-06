.class La7/p$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/p$b;->onVpnStateChanged(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:La7/p$b;


# direct methods
.method constructor <init>(La7/p$b;I)V
    .locals 0

    iput-object p1, p0, La7/p$b$a;->b:La7/p$b;

    iput p2, p0, La7/p$b$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "XunyouBoosterService"

    :try_start_0
    iget-object v1, p0, La7/p$b$a;->b:La7/p$b;

    iget-object v1, v1, La7/p$b;->a:La7/p;

    invoke-static {v1}, La7/p;->j(La7/p;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget v1, p0, La7/p$b$a;->a:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    iget-object v1, p0, La7/p$b$a;->b:La7/p$b;

    iget-object v1, v1, La7/p$b;->a:La7/p;

    invoke-static {v1, v2}, La7/p;->k(La7/p;Z)Z

    :cond_0
    iget-object v1, p0, La7/p$b$a;->b:La7/p$b;

    iget-object v1, v1, La7/p$b;->a:La7/p;

    invoke-static {v1}, La7/p;->j(La7/p;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, La7/p$b$a;->b:La7/p$b;

    iget-object v1, v1, La7/p$b;->a:La7/p;

    invoke-static {v1}, La7/p;->l(La7/p;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDSDASwitch:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, La7/p$b$a;->b:La7/p$b;

    iget-object v3, v3, La7/p$b;->a:La7/p;

    invoke-static {v3}, La7/p;->m(La7/p;)Lcom/miui/gamebooster/service/w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, La7/p$b$a;->b:La7/p$b;

    iget-object v1, v1, La7/p$b;->a:La7/p;

    invoke-static {v1}, La7/p;->f(La7/p;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->setDSDASwitch(Z)V

    :cond_1
    iget-object v1, p0, La7/p$b$a;->b:La7/p$b;

    iget-object v1, v1, La7/p$b;->a:La7/p;

    invoke-static {v1}, La7/p;->f(La7/p;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v1

    iget-object v2, p0, La7/p$b$a;->b:La7/p$b;

    iget-object v2, v2, La7/p$b;->a:La7/p;

    invoke-static {v2}, La7/p;->m(La7/p;)Lcom/miui/gamebooster/service/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->connectVpn(Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La7/p$b$a;->b:La7/p$b;

    iget-object v2, v2, La7/p$b;->a:La7/p;

    invoke-static {v2}, La7/p;->m(La7/p;)Lcom/miui/gamebooster/service/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, La7/p$b$a;->b:La7/p$b;

    iget-object v1, v1, La7/p$b;->a:La7/p;

    sget-object v2, Lcom/miui/gamebooster/service/a0;->c:Lcom/miui/gamebooster/service/a0;

    invoke-static {v1, v2}, La7/p;->o(La7/p;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;

    iget-object v1, p0, La7/p$b$a;->b:La7/p$b;

    iget-object v1, v1, La7/p$b;->a:La7/p;

    const/4 v2, 0x0

    invoke-static {v1, v2}, La7/p;->k(La7/p;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
