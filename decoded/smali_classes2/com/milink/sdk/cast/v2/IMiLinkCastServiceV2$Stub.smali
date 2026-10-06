.class public abstract Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

.field static final TRANSACTION_getDuration:I = 0x14

.field static final TRANSACTION_getProgress:I = 0x15

.field static final TRANSACTION_getRate:I = 0x12

.field static final TRANSACTION_getVolume:I = 0x17

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_operatePhoto:I = 0xb

.field static final TRANSACTION_release:I = 0x7

.field static final TRANSACTION_setMediaCallback:I = 0xe

.field static final TRANSACTION_setPhotoSource:I = 0x8

.field static final TRANSACTION_setProgress:I = 0x16

.field static final TRANSACTION_setRate:I = 0x13

.field static final TRANSACTION_setVolume:I = 0x18

.field static final TRANSACTION_showPhoto:I = 0xa

.field static final TRANSACTION_showSlide:I = 0xc

.field static final TRANSACTION_startConnect:I = 0x5

.field static final TRANSACTION_startDiscovery:I = 0x3

.field static final TRANSACTION_startPhotoShow:I = 0x9

.field static final TRANSACTION_startPlayAudio:I = 0xf

.field static final TRANSACTION_startPlayVideo:I = 0x10

.field static final TRANSACTION_startWithUI:I = 0x2

.field static final TRANSACTION_stopConnect:I = 0x6

.field static final TRANSACTION_stopDiscovery:I = 0x4

.field static final TRANSACTION_stopPhotoShow:I = 0xd

.field static final TRANSACTION_stopPlay:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    return-object v0

    :cond_1
    new-instance v0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;
    .locals 1

    sget-object v0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->sDefaultImpl:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;)Z
    .locals 1

    sget-object v0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->sDefaultImpl:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->sDefaultImpl:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

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
    .locals 14

    move-object v10, p0

    move v0, p1

    move-object/from16 v1, p2

    move-object/from16 v11, p3

    const v2, 0x5f4e5446

    const/4 v12, 0x1

    const-string v3, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setVolume(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_1
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->getVolume(Ljava/lang/String;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v12

    :pswitch_2
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setProgress(Ljava/lang/String;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_3
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->getProgress(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    :pswitch_4
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->getDuration(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return v12

    :pswitch_5
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setRate(Ljava/lang/String;F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->getRate(Ljava/lang/String;)F

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return v12

    :pswitch_7
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->stopPlay(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_8
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide v6, v7

    invoke-interface/range {v0 .. v7}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_9
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-wide v6, v7

    invoke-interface/range {v0 .. v7}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startPlayAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_a
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/milink/sdk/cast/IMiLinkMediaCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/sdk/cast/IMiLinkMediaCallback;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setMediaCallback(Ljava/lang/String;Lcom/milink/sdk/cast/IMiLinkMediaCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->stopPhotoShow(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_c
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->showSlide(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_d
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v13

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v13

    invoke-interface/range {v0 .. v9}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->operatePhoto(Ljava/lang/String;Ljava/lang/String;IIIIIIF)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_e
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->showPhoto(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_f
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startPhotoShow(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_10
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/milink/sdk/cast/IMiLinkPhotoSource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/sdk/cast/IMiLinkPhotoSource;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setPhotoSource(Ljava/lang/String;Lcom/milink/sdk/cast/IMiLinkPhotoSource;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_11
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->release(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_12
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->stopConnect(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_13
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/milink/sdk/cast/MiLinkDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/milink/sdk/cast/MiLinkDevice;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v0, v2, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startConnect(Ljava/lang/String;Lcom/milink/sdk/cast/MiLinkDevice;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_14
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->stopDiscovery(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_15
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/milink/sdk/cast/IMiLinkDeviceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/sdk/cast/IMiLinkDeviceListener;

    move-result-object v1

    invoke-interface {p0, v0, v2, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startDiscovery(Ljava/lang/String;ILcom/milink/sdk/cast/IMiLinkDeviceListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_16
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startWithUI(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :pswitch_17
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/milink/sdk/cast/IMiLinkCastCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/sdk/cast/IMiLinkCastCallback;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->init(Ljava/lang/String;Lcom/milink/sdk/cast/IMiLinkCastCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    return v12

    :cond_1
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_data_0
    .packed-switch 0x1
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
