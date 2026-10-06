.class Lcom/miui/gamebooster/service/DockWindowManagerService$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/DockWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/DockWindowManagerService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/DockWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$f;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Ls5/a;->e(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "DockWindowManagerService"

    if-nez p1, :cond_0

    const-string p1, "migame service is invalid!!!"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$f;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p2}, Lcom/xiaomi/migameservice/IGameCenterInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/migameservice/IGameCenterInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/service/DockWindowManagerService;->v(Lcom/miui/gamebooster/service/DockWindowManagerService;Lcom/xiaomi/migameservice/IGameCenterInterface;)Lcom/xiaomi/migameservice/IGameCenterInterface;

    :try_start_0
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$f;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->u(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lcom/xiaomi/migameservice/IGameCenterInterface;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$f;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->u(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lcom/xiaomi/migameservice/IGameCenterInterface;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-interface {p1, p2}, Lcom/xiaomi/migameservice/IGameCenterInterface;->Z6(I)Z

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$f;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->u(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lcom/xiaomi/migameservice/IGameCenterInterface;

    move-result-object p1

    const p2, 0x856ee

    iget-object v1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$f;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->w(Lcom/miui/gamebooster/service/DockWindowManagerService;)Lcom/xiaomi/migameservice/IGameServiceCallback$Stub;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/xiaomi/migameservice/IGameCenterInterface;->z(ILcom/xiaomi/migameservice/IGameServiceCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "set migameservice error"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$f;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    iget-object p1, p1, Lcom/miui/gamebooster/service/DockWindowManagerService;->h:Ljava/lang/String;

    invoke-static {p1}, La8/y0;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$f;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/DockWindowManagerService;->x(Lcom/miui/gamebooster/service/DockWindowManagerService;)V

    :cond_2
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gamecenter service disconnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DockWindowManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/DockWindowManagerService$f;->a:Lcom/miui/gamebooster/service/DockWindowManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/service/DockWindowManagerService;->v(Lcom/miui/gamebooster/service/DockWindowManagerService;Lcom/xiaomi/migameservice/IGameCenterInterface;)Lcom/xiaomi/migameservice/IGameCenterInterface;

    return-void
.end method
