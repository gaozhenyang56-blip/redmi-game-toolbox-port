.class Lcom/miui/dock/DockMonitorService$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/dock/DockMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/DockMonitorService;


# direct methods
.method private constructor <init>(Lcom/miui/dock/DockMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/DockMonitorService$m;->a:Lcom/miui/dock/DockMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/dock/DockMonitorService;Lcom/miui/dock/DockMonitorService$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/dock/DockMonitorService$m;-><init>(Lcom/miui/dock/DockMonitorService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$m;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {p2}, Lcom/miui/gamebooster/service/IGameBoosterWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/IGameBoosterWindow;

    move-result-object v0

    iput-object v0, p1, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    :try_start_0
    const-string p1, "GlobalDock-MonitorService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: mGameWindowBinder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/dock/DockMonitorService$m;->a:Lcom/miui/dock/DockMonitorService;

    iget-object v1, v1, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$m;->a:Lcom/miui/dock/DockMonitorService;

    iget-object v0, p1, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/miui/gamebooster/service/IGameBoosterWindow;->D4(IZLjava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$m;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {p1}, Lcom/miui/dock/DockMonitorService;->m(Lcom/miui/dock/DockMonitorService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$m;->a:Lcom/miui/dock/DockMonitorService;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/dock/DockMonitorService;->l(Lcom/miui/dock/DockMonitorService;Z)Z

    return-void
.end method
