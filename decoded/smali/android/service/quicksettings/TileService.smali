.class public synthetic Landroid/service/quicksettings/TileService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    throw v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final native synthetic getQsTile()Landroid/service/quicksettings/Tile;
.end method

.method public final native synthetic isLocked()Z
.end method

.method public native synthetic onDestroy()V
.end method

.method public native synthetic onStartListening()V
.end method

.method public native synthetic onTileAdded()V
.end method

.method public final native synthetic unlockAndRun(Ljava/lang/Runnable;)V
.end method
