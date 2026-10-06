.class public abstract Lcom/miui/tvm/aidl/ITvmManager$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/miui/tvm/aidl/ITvmManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/tvm/aidl/ITvmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/tvm/aidl/ITvmManager$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.tvm.aidl.ITvmManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/tvm/aidl/ITvmManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.tvm.aidl.ITvmManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/tvm/aidl/ITvmManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/tvm/aidl/ITvmManager;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/tvm/aidl/ITvmManager$Stub$a;

    invoke-direct {v0, p0}, Lcom/miui/tvm/aidl/ITvmManager$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "com.miui.tvm.aidl.ITvmManager"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_9

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/tvm/aidl/TvmStatusModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/miui/tvm/aidl/TvmStatusModel;

    :cond_0
    invoke-interface {p0, v3}, Lcom/miui/tvm/aidl/ITvmManager;->h4(Lcom/miui/tvm/aidl/TvmStatusModel;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v3, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v0}, Lcom/miui/tvm/aidl/TvmStatusModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/miui/tvm/aidl/RequestModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/tvm/aidl/RequestModel;

    goto :goto_1

    :cond_2
    move-object p1, v3

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    sget-object p4, Lcom/miui/tvm/aidl/ResponseModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/miui/tvm/aidl/ResponseModel;

    :cond_3
    invoke-interface {p0, p1, v3}, Lcom/miui/tvm/aidl/ITvmManager;->r6(Lcom/miui/tvm/aidl/RequestModel;Lcom/miui/tvm/aidl/ResponseModel;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v3, :cond_4

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v0}, Lcom/miui/tvm/aidl/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v0

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/miui/tvm/aidl/SessionModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/miui/tvm/aidl/SessionModel;

    :cond_5
    invoke-interface {p0, v3}, Lcom/miui/tvm/aidl/ITvmManager;->T2(Lcom/miui/tvm/aidl/SessionModel;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/miui/tvm/aidl/SessionModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/miui/tvm/aidl/SessionModel;

    :cond_6
    invoke-interface {p0, v3}, Lcom/miui/tvm/aidl/ITvmManager;->E5(Lcom/miui/tvm/aidl/SessionModel;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/miui/tvm/aidl/SessionModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/tvm/aidl/SessionModel;

    goto :goto_3

    :cond_7
    move-object p1, v3

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_8

    sget-object p4, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Landroid/os/SharedMemory;

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/tvm/aidl/IMiTrustUICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/tvm/aidl/IMiTrustUICallback;

    move-result-object p2

    invoke-interface {p0, p1, v3, p2}, Lcom/miui/tvm/aidl/ITvmManager;->P0(Lcom/miui/tvm/aidl/SessionModel;Landroid/os/SharedMemory;Lcom/miui/tvm/aidl/IMiTrustUICallback;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/tvm/aidl/ITvmManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/tvm/aidl/ITvmManagerCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/miui/tvm/aidl/ITvmManager;->A3(Lcom/miui/tvm/aidl/ITvmManagerCallback;)V

    return v0

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/miui/tvm/aidl/ITvmManager;->V2()I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
