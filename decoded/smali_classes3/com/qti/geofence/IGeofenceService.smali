.class public interface abstract Lcom/qti/geofence/IGeofenceService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/geofence/IGeofenceService$Stub;,
        Lcom/qti/geofence/IGeofenceService$Default;
    }
.end annotation


# virtual methods
.method public abstract B4(IDDDIIIIII)V
.end method

.method public abstract I2(Lcom/qti/geofence/IGeofenceCallback;)V
.end method

.method public abstract N5(I)V
.end method

.method public abstract T5(DDDIIIII)I
.end method

.method public abstract W6(I)V
.end method

.method public abstract X4(Lcom/qti/geofence/GeofenceData;I)I
.end method

.method public abstract c3(Landroid/app/PendingIntent;)V
.end method

.method public abstract o1(Lcom/qti/geofence/GeofenceData;)I
.end method

.method public abstract r0(I)V
.end method

.method public abstract registerComponent(Landroid/content/ComponentName;)V
.end method

.method public abstract s6(III)V
.end method

.method public abstract unregisterComponent()V
.end method

.method public abstract w1(Landroid/app/PendingIntent;)V
.end method

.method public abstract w3(Lcom/qti/geofence/IGeofenceCallback;)V
.end method

.method public abstract z4(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/geofence/GeofenceData;",
            ">;)V"
        }
    .end annotation
.end method
