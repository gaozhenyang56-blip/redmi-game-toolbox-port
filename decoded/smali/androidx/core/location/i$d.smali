.class Landroidx/core/location/i$d;
.super Landroid/location/GnssStatus$Callback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/location/GnssStatusCompat$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    const/4 p1, 0x0

    const-string v0, "invalid null callback"

    invoke-static {p1, v0}, Lb0/h;->b(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 0

    invoke-static {p1}, Landroidx/core/location/GnssStatusCompat;->a(Landroid/location/GnssStatus;)Landroidx/core/location/GnssStatusCompat;

    const/4 p1, 0x0

    throw p1
.end method

.method public onStarted()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public onStopped()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
