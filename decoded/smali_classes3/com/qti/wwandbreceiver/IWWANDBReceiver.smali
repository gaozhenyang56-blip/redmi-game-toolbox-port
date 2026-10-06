.class public interface abstract Lcom/qti/wwandbreceiver/IWWANDBReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wwandbreceiver/IWWANDBReceiver$Stub;,
        Lcom/qti/wwandbreceiver/IWWANDBReceiver$Default;
    }
.end annotation


# virtual methods
.method public abstract Q2(Ljava/util/List;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wwandbreceiver/BSLocationData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/wwandbreceiver/BSSpecialInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract e4(Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;)V
.end method

.method public abstract l6(Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;Landroid/app/PendingIntent;)Z
.end method

.method public abstract n6(I)V
.end method

.method public abstract p7(Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;)Z
.end method
