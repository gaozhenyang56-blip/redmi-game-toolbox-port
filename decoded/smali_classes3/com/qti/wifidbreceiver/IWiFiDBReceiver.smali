.class public interface abstract Lcom/qti/wifidbreceiver/IWiFiDBReceiver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Stub;,
        Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Default;
    }
.end annotation


# virtual methods
.method public abstract A7()V
.end method

.method public abstract C4(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;Landroid/app/PendingIntent;)Z
.end method

.method public abstract G3(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;)V
.end method

.method public abstract L6(Ljava/util/List;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APLocationData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APSpecialInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract W4(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;)Z
.end method

.method public abstract X2(I)V
.end method

.method public abstract n5(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APLocationData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/qti/wifidbreceiver/APSpecialInfo;",
            ">;)V"
        }
    .end annotation
.end method
