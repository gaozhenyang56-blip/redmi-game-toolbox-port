.class public interface abstract Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener$Stub;,
        Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener$Default;
    }
.end annotation


# virtual methods
.method public abstract J5(Ljava/util/List;Landroid/location/Location;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APInfoExt;",
            ">;",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation
.end method

.method public abstract V3(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract a2(Ljava/util/List;ILandroid/location/Location;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APInfoExt;",
            ">;I",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation
.end method

.method public abstract g()V
.end method

.method public abstract x(ZLjava/lang/String;)V
.end method
