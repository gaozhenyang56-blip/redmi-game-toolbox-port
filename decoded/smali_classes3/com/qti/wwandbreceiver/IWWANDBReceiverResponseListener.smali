.class public interface abstract Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub;,
        Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Default;
    }
.end annotation


# virtual methods
.method public abstract R(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wwandbreceiver/BSInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract g()V
.end method

.method public abstract x(ZLjava/lang/String;)V
.end method

.method public abstract z0(Ljava/util/List;ILandroid/location/Location;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wwandbreceiver/BSInfo;",
            ">;I",
            "Landroid/location/Location;",
            ")V"
        }
    .end annotation
.end method
