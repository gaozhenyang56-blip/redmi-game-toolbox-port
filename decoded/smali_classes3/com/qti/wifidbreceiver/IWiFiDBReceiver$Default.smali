.class public Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qti/wifidbreceiver/IWiFiDBReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/wifidbreceiver/IWiFiDBReceiver;
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
.method public C4(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;Landroid/app/PendingIntent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public W4(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
