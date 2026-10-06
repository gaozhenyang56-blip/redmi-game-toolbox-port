.class public abstract Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.gnss.polaris.geofence.IMiGeoManagerService"

.field static final TRANSACTION_addGeofence:I = 0x3

.field static final TRANSACTION_addGeofenceWithFlag:I = 0x2

.field static final TRANSACTION_deleteGeofence:I = 0x4

.field static final TRANSACTION_deleteGeofenceById:I = 0x5

.field static final TRANSACTION_findGeofenceById:I = 0x8

.field static final TRANSACTION_getComponent:I = 0xa

.field static final TRANSACTION_getVendorVersion:I = 0x1

.field static final TRANSACTION_listGeofence:I = 0x7

.field static final TRANSACTION_registerComponent:I = 0x9

.field static final TRANSACTION_sendDebugEvent:I = 0xb

.field static final TRANSACTION_updateGeofence:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaomi.gnss.polaris.geofence.IMiGeoManagerService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.gnss.polaris.geofence.IMiGeoManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;
    .locals 1

    sget-object v0, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;)Z
    .locals 1

    sget-object v0, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService$Stub$Proxy;->sDefaultImpl:Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

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
    .locals 4

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.gnss.polaris.geofence.IMiGeoManagerService"

    if-eq p1, v0, :cond_c

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    sget-object p4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/location/Location;

    goto :goto_0

    :cond_0
    move-object p4, v3

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;

    :cond_1
    invoke-interface {p0, p1, p4, v0, v3}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->sendDebugEvent(Ljava/lang/String;Landroid/location/Location;ILcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->getComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/content/ComponentName;

    :cond_3
    invoke-interface {p0, p1, v3}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->registerComponent(Ljava/lang/String;Landroid/content/ComponentName;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->findGeofenceById(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->listGeofence(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_5

    sget-object p4, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;

    :cond_5
    invoke-interface {p0, p1, v3}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->updateGeofence(Ljava/lang/String;Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_6

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->deleteGeofenceById(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    sget-object p4, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;

    :cond_7
    invoke-interface {p0, p1, v3}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->deleteGeofence(Ljava/lang/String;Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_8

    sget-object p4, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;

    :cond_8
    invoke-interface {p0, p1, v3}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->addGeofence(Ljava/lang/String;Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz v3, :cond_9

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_a

    sget-object p4, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;

    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, v3, p2}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->addGeofenceWithFlag(Ljava/lang/String;Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz v3, :cond_b

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v1}, Lcom/xiaomi/gnss/polaris/geofence/MiGeofence;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v1

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;->getVendorVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
