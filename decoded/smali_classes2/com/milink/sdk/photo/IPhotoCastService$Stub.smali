.class public abstract Lcom/milink/sdk/photo/IPhotoCastService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/milink/sdk/photo/IPhotoCastService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/sdk/photo/IPhotoCastService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milink/sdk/photo/IPhotoCastService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.milink.sdk.photo.IPhotoCastService"

.field static final TRANSACTION_checkAccess:I = 0x3

.field static final TRANSACTION_getCastingDeviceName:I = 0x5

.field static final TRANSACTION_getCastingDeviceSize:I = 0x6

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_release:I = 0x2

.field static final TRANSACTION_rotate:I = 0x9

.field static final TRANSACTION_setDataSource:I = 0x4

.field static final TRANSACTION_show:I = 0x7

.field static final TRANSACTION_startSlide:I = 0xb

.field static final TRANSACTION_stop:I = 0xa

.field static final TRANSACTION_stopSlide:I = 0xc

.field static final TRANSACTION_zoom:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.milink.sdk.photo.IPhotoCastService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/milink/sdk/photo/IPhotoCastService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.milink.sdk.photo.IPhotoCastService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/milink/sdk/photo/IPhotoCastService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/milink/sdk/photo/IPhotoCastService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/milink/sdk/photo/IPhotoCastService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/milink/sdk/photo/IPhotoCastService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/milink/sdk/photo/IPhotoCastService;
    .locals 1

    sget-object v0, Lcom/milink/sdk/photo/IPhotoCastService$Stub$Proxy;->sDefaultImpl:Lcom/milink/sdk/photo/IPhotoCastService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/milink/sdk/photo/IPhotoCastService;)Z
    .locals 1

    sget-object v0, Lcom/milink/sdk/photo/IPhotoCastService$Stub$Proxy;->sDefaultImpl:Lcom/milink/sdk/photo/IPhotoCastService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/milink/sdk/photo/IPhotoCastService$Stub$Proxy;->sDefaultImpl:Lcom/milink/sdk/photo/IPhotoCastService;

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

    const-string v2, "com.milink.sdk.photo.IPhotoCastService"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/sdk/photo/IPhotoCastService;->stopSlide()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/sdk/photo/IPhotoCastService;->startSlide()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/sdk/photo/IPhotoCastService;->stop()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/milink/sdk/photo/IPhotoCastService;->rotate(Ljava/lang/String;F)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_4
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

    invoke-interface/range {v2 .. v10}, Lcom/milink/sdk/photo/IPhotoCastService;->zoom(Ljava/lang/String;IIIIIIF)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/sdk/photo/IPhotoCastService;->show(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/sdk/photo/IPhotoCastService;->getCastingDeviceSize()[I

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/sdk/photo/IPhotoCastService;->getCastingDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/sdk/photo/IPhotoCastDataSource$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/sdk/photo/IPhotoCastDataSource;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/sdk/photo/IPhotoCastService;->setDataSource(Lcom/milink/sdk/photo/IPhotoCastDataSource;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/milink/sdk/photo/IPhotoCastService;->checkAccess()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/sdk/photo/IPhotoCastCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/sdk/photo/IPhotoCastCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/sdk/photo/IPhotoCastService;->release(Lcom/milink/sdk/photo/IPhotoCastCallback;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/milink/sdk/photo/IPhotoCastCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/milink/sdk/photo/IPhotoCastCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/sdk/photo/IPhotoCastService;->init(Lcom/milink/sdk/photo/IPhotoCastCallback;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
