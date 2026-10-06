.class public abstract Lcom/milink/api/v1/aidl/IMcs$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/milink/api/v1/aidl/IMcs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/api/v1/aidl/IMcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.milink.api.v1.aidl.IMcs"

.field static final TRANSACTION_connect:I = 0xd

.field static final TRANSACTION_connectWifiDisplay:I = 0xe

.field static final TRANSACTION_disconnect:I = 0x11

.field static final TRANSACTION_disconnectWifiDisplay:I = 0xf

.field static final TRANSACTION_dismissScanList:I = 0x9

.field static final TRANSACTION_getPlaybackDuration:I = 0x1f

.field static final TRANSACTION_getPlaybackProgress:I = 0x1e

.field static final TRANSACTION_getPlaybackRate:I = 0x1c

.field static final TRANSACTION_getVolume:I = 0x21

.field static final TRANSACTION_rotatePhoto:I = 0x22

.field static final TRANSACTION_selectDevice:I = 0xa

.field static final TRANSACTION_setDataSource:I = 0x3

.field static final TRANSACTION_setDelegate:I = 0x5

.field static final TRANSACTION_setDeviceListener:I = 0x1

.field static final TRANSACTION_setDeviceName:I = 0x7

.field static final TRANSACTION_setPlaybackProgress:I = 0x1d

.field static final TRANSACTION_setPlaybackRate:I = 0x1b

.field static final TRANSACTION_setVolume:I = 0x20

.field static final TRANSACTION_show:I = 0x13

.field static final TRANSACTION_showScanList:I = 0x8

.field static final TRANSACTION_startPlayAudio:I = 0x19

.field static final TRANSACTION_startPlayAudioEx:I = 0x24

.field static final TRANSACTION_startPlayVideo:I = 0x18

.field static final TRANSACTION_startPlayVideoEx:I = 0x23

.field static final TRANSACTION_startShow:I = 0x12

.field static final TRANSACTION_startSlideshow:I = 0x16

.field static final TRANSACTION_startTvMiracast:I = 0x10

.field static final TRANSACTION_startWifiDisplayScan:I = 0xb

.field static final TRANSACTION_stopPlay:I = 0x1a

.field static final TRANSACTION_stopShow:I = 0x15

.field static final TRANSACTION_stopSlideshow:I = 0x17

.field static final TRANSACTION_stopWifiDisplayScan:I = 0xc

.field static final TRANSACTION_unsetDataSource:I = 0x4

.field static final TRANSACTION_unsetDelegate:I = 0x6

.field static final TRANSACTION_unsetDeviceListener:I = 0x2

.field static final TRANSACTION_zoomPhoto:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.milink.api.v1.aidl.IMcs"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcs;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.milink.api.v1.aidl.IMcs"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/milink/api/v1/aidl/IMcs;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/milink/api/v1/aidl/IMcs;

    return-object v0

    :cond_1
    new-instance v0, Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/milink/api/v1/aidl/IMcs;
    .locals 1

    sget-object v0, Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;->sDefaultImpl:Lcom/milink/api/v1/aidl/IMcs;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/milink/api/v1/aidl/IMcs;)Z
    .locals 1

    sget-object v0, Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;->sDefaultImpl:Lcom/milink/api/v1/aidl/IMcs;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/milink/api/v1/aidl/IMcs$Stub$Proxy;->sDefaultImpl:Lcom/milink/api/v1/aidl/IMcs;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.milink.api.v1.aidl.IMcs"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    move-object v2, p0

    invoke-interface/range {v2 .. v8}, Lcom/milink/api/v1/aidl/IMcs;->startPlayAudioEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    move-object v2, p0

    invoke-interface/range {v2 .. v8}, Lcom/milink/api/v1/aidl/IMcs;->startPlayVideoEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    invoke-interface {p0, p1, v0, p2}, Lcom/milink/api/v1/aidl/IMcs;->rotatePhoto(Ljava/lang/String;ZF)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/api/v1/aidl/IMcs;->getVolume()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcs;->setVolume(I)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/api/v1/aidl/IMcs;->getPlaybackDuration()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/api/v1/aidl/IMcs;->getPlaybackProgress()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcs;->setPlaybackProgress(I)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/api/v1/aidl/IMcs;->getPlaybackRate()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcs;->setPlaybackRate(I)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/api/v1/aidl/IMcs;->stopPlay()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/milink/api/v1/aidl/IMcs;->startPlayAudio(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/milink/api/v1/aidl/IMcs;->startPlayVideo(Ljava/lang/String;Ljava/lang/String;ID)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/api/v1/aidl/IMcs;->stopSlideshow()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {p0, p1, v0}, Lcom/milink/api/v1/aidl/IMcs;->startSlideshow(IZ)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/api/v1/aidl/IMcs;->stopShow()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    move-object v2, p0

    invoke-interface/range {v2 .. v10}, Lcom/milink/api/v1/aidl/IMcs;->zoomPhoto(Ljava/lang/String;IIIIIIF)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcs;->show(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/api/v1/aidl/IMcs;->startShow()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/api/v1/aidl/IMcs;->disconnect()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsOpenMiracastListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsOpenMiracastListener;

    move-result-object v8

    move-object v2, p0

    invoke-interface/range {v2 .. v8}, Lcom/milink/api/v1/aidl/IMcs;->startTvMiracast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/milink/api/v1/aidl/IMcsOpenMiracastListener;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/api/v1/aidl/IMcs;->disconnectWifiDisplay()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;

    move-result-object p2

    invoke-interface {p0, p1, p4, v0, p2}, Lcom/milink/api/v1/aidl/IMcs;->connectWifiDisplay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/milink/api/v1/aidl/IMcs;->connect(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/api/v1/aidl/IMcs;->stopWifiDisplayScan()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/api/v1/aidl/IMcs;->startWifiDisplayScan()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/milink/api/v1/aidl/IMcs;->selectDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/api/v1/aidl/IMcs;->dismissScanList()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsScanListCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsScanListCallback;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/milink/api/v1/aidl/IMcs;->showScanList(Lcom/milink/api/v1/aidl/IMcsScanListCallback;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcs;->setDeviceName(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDelegate;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcs;->unsetDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDelegate;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcs;->setDelegate(Lcom/milink/api/v1/aidl/IMcsDelegate;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDataSource;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcs;->unsetDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsDataSource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDataSource;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcs;->setDataSource(Lcom/milink/api/v1/aidl/IMcsDataSource;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDeviceListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcs;->unsetDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/api/v1/aidl/IMcsDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsDeviceListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcs;->setDeviceListener(Lcom/milink/api/v1/aidl/IMcsDeviceListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
