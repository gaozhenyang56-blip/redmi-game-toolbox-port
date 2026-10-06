.class public abstract Lcom/qti/wwandbreceiver/IWWANDBReceiver$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/qti/wwandbreceiver/IWWANDBReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/wwandbreceiver/IWWANDBReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wwandbreceiver/IWWANDBReceiver$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.qti.wwandbreceiver.IWWANDBReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/wwandbreceiver/IWWANDBReceiver;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.qti.wwandbreceiver.IWWANDBReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qti/wwandbreceiver/IWWANDBReceiver;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/qti/wwandbreceiver/IWWANDBReceiver;

    return-object v0

    :cond_1
    new-instance v0, Lcom/qti/wwandbreceiver/IWWANDBReceiver$Stub$a;

    invoke-direct {v0, p0}, Lcom/qti/wwandbreceiver/IWWANDBReceiver$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static v1()Lcom/qti/wwandbreceiver/IWWANDBReceiver;
    .locals 1

    sget-object v0, Lcom/qti/wwandbreceiver/IWWANDBReceiver$Stub$a;->k:Lcom/qti/wwandbreceiver/IWWANDBReceiver;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.qti.wwandbreceiver.IWWANDBReceiver"

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    sget-object p4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/qti/wwandbreceiver/IWWANDBReceiver;->l6(Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;Landroid/app/PendingIntent;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/qti/wwandbreceiver/IWWANDBReceiver;->e4(Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;)V

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object p1, Lcom/qti/wwandbreceiver/BSLocationData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object p4, Lcom/qti/wwandbreceiver/BSSpecialInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/qti/wwandbreceiver/IWWANDBReceiver;->Q2(Ljava/util/List;Ljava/util/List;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/qti/wwandbreceiver/IWWANDBReceiver;->n6(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/qti/wwandbreceiver/IWWANDBReceiver;->p7(Lcom/qti/wwandbreceiver/IWWANDBReceiverResponseListener;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
