.class public abstract Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/qti/wifidbreceiver/IWiFiDBReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/wifidbreceiver/IWiFiDBReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.qti.wifidbreceiver.IWiFiDBReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/wifidbreceiver/IWiFiDBReceiver;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.qti.wifidbreceiver.IWiFiDBReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qti/wifidbreceiver/IWiFiDBReceiver;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/qti/wifidbreceiver/IWiFiDBReceiver;

    return-object v0

    :cond_1
    new-instance v0, Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Stub$a;

    invoke-direct {v0, p0}, Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static v1()Lcom/qti/wifidbreceiver/IWiFiDBReceiver;
    .locals 1

    sget-object v0, Lcom/qti/wifidbreceiver/IWiFiDBReceiver$Stub$a;->k:Lcom/qti/wifidbreceiver/IWiFiDBReceiver;

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.qti.wifidbreceiver.IWiFiDBReceiver"

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object p1, Lcom/qti/wifidbreceiver/APLocationData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object p4, Lcom/qti/wifidbreceiver/APSpecialInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/qti/wifidbreceiver/IWiFiDBReceiver;->n5(Ljava/util/List;Ljava/util/List;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    :goto_1
    invoke-interface {p0, p1, p2}, Lcom/qti/wifidbreceiver/IWiFiDBReceiver;->C4(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;Landroid/app/PendingIntent;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/qti/wifidbreceiver/IWiFiDBReceiver;->A7()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/qti/wifidbreceiver/IWiFiDBReceiver;->G3(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object p1, Lcom/qti/wifidbreceiver/APLocationData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object p4, Lcom/qti/wifidbreceiver/APSpecialInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/qti/wifidbreceiver/IWiFiDBReceiver;->L6(Ljava/util/List;Ljava/util/List;I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/qti/wifidbreceiver/IWiFiDBReceiver;->X2(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/qti/wifidbreceiver/IWiFiDBReceiver;->W4(Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :cond_1
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

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
