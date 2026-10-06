.class public Lcom/miui/superpower/notification/SuperPowerTileService;
.super Landroid/service/quicksettings/TileService;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/superpower/notification/SuperPowerTileService;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/miui/superpower/notification/SuperPowerTileService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/notification/SuperPowerTileService;->b()V

    return-void
.end method

.method private b()V
    .locals 4

    invoke-static {p0}, Lpg/i;->F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lme/w;->S(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/superpower/notification/SuperPowerTileService;->a:Landroid/os/Handler;

    new-instance v1, Lcom/miui/superpower/notification/SuperPowerTileService$b;

    invoke-direct {v1, p0}, Lcom/miui/superpower/notification/SuperPowerTileService$b;-><init>(Lcom/miui/superpower/notification/SuperPowerTileService;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private c(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/service/quicksettings/Tile;->setState(I)V

    const p1, 0x7f1218fc

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    const-string v0, "SuperPowerSaveManager"

    const-string v1, "onTileClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/superpower/notification/SuperPowerTileService$a;

    invoke-direct {v0, p0}, Lcom/miui/superpower/notification/SuperPowerTileService$a;-><init>(Lcom/miui/superpower/notification/SuperPowerTileService;)V

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/TileService;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lme/w;->f(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/superpower/notification/SuperPowerTileService;->b()V

    :goto_0
    return-void
.end method

.method public onStartListening()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    const-string v0, "SuperPowerSaveManager"

    const-string v1, "onTileStartListening"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lpg/i;->F(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/superpower/notification/SuperPowerTileService;->c(Z)V

    return-void
.end method

.method public onTileAdded()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    const-string v0, "SuperPowerSaveManager"

    const-string v1, "onTileAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lpg/i;->F(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/superpower/notification/SuperPowerTileService;->c(Z)V

    return-void
.end method
