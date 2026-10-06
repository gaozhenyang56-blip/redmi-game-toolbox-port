.class public Lcom/qti/geofence/IGeofenceService$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qti/geofence/IGeofenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/geofence/IGeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public I2(Lcom/qti/geofence/IGeofenceCallback;)V
    .locals 0

    return-void
.end method

.method public N5(I)V
    .locals 0

    return-void
.end method

.method public T5(DDDIIIII)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public o1(Lcom/qti/geofence/GeofenceData;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public r0(I)V
    .locals 0

    return-void
.end method

.method public w1(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public w3(Lcom/qti/geofence/IGeofenceCallback;)V
    .locals 0

    return-void
.end method

.method public z4(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/geofence/GeofenceData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
