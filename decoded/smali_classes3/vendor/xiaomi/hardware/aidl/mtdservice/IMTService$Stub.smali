.class public abstract Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object v0, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->d:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->d:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;

    if-eqz v1, :cond_1

    check-cast v0, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;

    goto :goto_0

    :cond_1
    new-instance v0, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService$Stub$a;

    invoke-direct {v0, p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService$Stub$a;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    sget-object v0, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->d:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->f()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_0
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->G7()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->m8(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->C5()I

    move-result p1

    goto/16 :goto_0

    :pswitch_3
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->A2()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->d5(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_2

    :pswitch_5
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->q6()I

    move-result p1

    goto/16 :goto_0

    :pswitch_6
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->S2()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->S0(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_0

    :pswitch_8
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->V()I

    move-result p1

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4, v0, v2}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->w5(ILjava/lang/String;[BI)I

    move-result p1

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->X(ILjava/lang/String;)I

    move-result p1

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->I3(ILjava/lang/String;)Lvendor/xiaomi/hardware/aidl/mtdservice/MTServiceResult;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_2

    :pswitch_c
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->U6()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->u4(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_0

    :pswitch_e
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->p0()I

    move-result p1

    goto :goto_0

    :pswitch_f
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->d2()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_10
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->k0()[I

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_2

    :pswitch_11
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->L()I

    move-result p1

    goto :goto_0

    :pswitch_12
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->V1()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_13
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->t4()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_14
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->K4()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->Y1(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :pswitch_16
    invoke-interface {p0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->L1()I

    move-result p1

    goto :goto_0

    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->z1(I)I

    move-result p1

    goto :goto_0

    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->q0(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4, v0}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->l4(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->d1(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->i1(I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/miui/permission/b;->a(Landroid/os/Parcel;Z)V

    goto :goto_2

    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->e1(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-interface {p0, p1, p4}, Lvendor/xiaomi/hardware/aidl/mtdservice/IMTService;->u5(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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
