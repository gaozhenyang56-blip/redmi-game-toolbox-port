.class Lcom/miui/antivirus/service/GuardService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/service/GuardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/service/GuardService;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/service/GuardService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/service/GuardService$c;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string p1, "GuardService"

    const-string v0, "game switch cashier service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/xiaomi/gamecenter/for3thd/migame/IMiGameSwitchCashier$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gamecenter/for3thd/migame/IMiGameSwitchCashier;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$c;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->n(Lcom/miui/antivirus/service/GuardService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$c;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->o(Lcom/miui/antivirus/service/GuardService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGameSwitchCashier calling pay pkg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/antivirus/service/GuardService$c;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v1}, Lcom/miui/antivirus/service/GuardService;->n(Lcom/miui/antivirus/service/GuardService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/antivirus/service/GuardService$c;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v0}, Lcom/miui/antivirus/service/GuardService;->n(Lcom/miui/antivirus/service/GuardService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antivirus/service/GuardService$c;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v1}, Lcom/miui/antivirus/service/GuardService;->o(Lcom/miui/antivirus/service/GuardService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/service/GuardService$c;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {v2}, Lcom/miui/antivirus/service/GuardService;->q(Lcom/miui/antivirus/service/GuardService;)J

    move-result-wide v2

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/for3thd/migame/IMiGameSwitchCashier;->onSwitchCashierByPkg(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "set switch cashier pkg failed"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/miui/antivirus/service/GuardService$c;->a:Lcom/miui/antivirus/service/GuardService;

    invoke-static {p1}, Lcom/miui/antivirus/service/GuardService;->s(Lcom/miui/antivirus/service/GuardService;)Landroid/content/ServiceConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "GuardService"

    const-string v0, "gameSwitchCashierService disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
