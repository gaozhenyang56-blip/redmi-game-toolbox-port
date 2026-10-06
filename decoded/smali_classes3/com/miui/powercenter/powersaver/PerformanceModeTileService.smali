.class public Lcom/miui/powercenter/powersaver/PerformanceModeTileService;
.super Landroid/service/quicksettings/TileService;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private final b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->a:Landroid/os/Handler;

    new-instance v0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$a;-><init>(Lcom/miui/powercenter/powersaver/PerformanceModeTileService;)V

    iput-object v0, p0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/powersaver/PerformanceModeTileService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->h(Z)V

    return-void
.end method

.method static synthetic b(Lcom/miui/powercenter/powersaver/PerformanceModeTileService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->f(Landroid/content/Context;)V

    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lce/g;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lpg/i;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->h(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->a:Landroid/os/Handler;

    new-instance v1, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$d;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$d;-><init>(Lcom/miui/powercenter/powersaver/PerformanceModeTileService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lce/g;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lpg/i;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->h(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->a:Landroid/os/Handler;

    new-instance v1, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$c;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$c;-><init>(Lcom/miui/powercenter/powersaver/PerformanceModeTileService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lme/w;->P(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->c()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->d()V

    :goto_0
    return-void
.end method

.method private g(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-static {}, Lpg/i;->H()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120fff

    goto :goto_0

    :cond_0
    const p1, 0x7f12105a

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_1
    return-void
.end method

.method private h(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-ne v1, v4, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_3
    return-void
.end method


# virtual methods
.method protected e()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->b:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public onClick()V
    .locals 2

    const-string v0, "PerformanceModeTileService"

    const-string v1, "onTileClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lx4/y;->f()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$b;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService$b;-><init>(Lcom/miui/powercenter/powersaver/PerformanceModeTileService;)V

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p0}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->f(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    invoke-virtual {p0}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->e()V

    const-string v0, "PerformanceModeTileService"

    const-string v1, "TileService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    iget-object v0, p0, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onStartListening()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    const-string v0, "PerformanceModeTileService"

    const-string v1, "onTileStartListening"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->h(Z)V

    return-void
.end method

.method public onTileAdded()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    const-string v0, "PerformanceModeTileService"

    const-string v1, "onTileAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lce/g;->q()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/powersaver/PerformanceModeTileService;->g(Z)V

    return-void
.end method
