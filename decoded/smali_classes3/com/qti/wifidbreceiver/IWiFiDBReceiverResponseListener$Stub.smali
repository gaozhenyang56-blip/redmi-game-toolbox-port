.class public abstract Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener$Stub$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.qti.wifidbreceiver.IWiFiDBReceiverResponseListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.qti.wifidbreceiver.IWiFiDBReceiverResponseListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;

    return-object v0

    :cond_1
    new-instance v0, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener$Stub$a;

    invoke-direct {v0, p0}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener$Stub$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.qti.wifidbreceiver.IWiFiDBReceiverResponseListener"

    if-eq p1, v0, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    const/4 v3, 0x0

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

    sget-object p1, Lcom/qti/wifidbreceiver/APInfoExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/location/Location;

    :cond_2
    invoke-interface {p0, p1, v3}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;->J5(Ljava/util/List;Landroid/location/Location;)V

    return v0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object p1, Lcom/qti/wifidbreceiver/APInfoExt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    sget-object p4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/location/Location;

    :cond_4
    invoke-interface {p0, p1, p3, v3}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;->a2(Ljava/util/List;ILandroid/location/Location;)V

    return v0

    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;->g()V

    return v0

    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    move p1, v0

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;->x(ZLjava/lang/String;)V

    return v0

    :cond_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object p1, Lcom/qti/wifidbreceiver/APInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/qti/wifidbreceiver/IWiFiDBReceiverResponseListener;->V3(Ljava/util/List;)V

    return v0
.end method
