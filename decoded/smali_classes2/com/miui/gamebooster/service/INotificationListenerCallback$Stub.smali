.class public abstract Lcom/miui/gamebooster/service/INotificationListenerCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/service/INotificationListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/INotificationListenerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/service/INotificationListenerCallback$Stub$a;
    }
.end annotation


# static fields
.field static final TRANSACTION_onNotificationPostedCallBack:I = 0x1

.field static final TRANSACTION_onNotificationRemovedCallBack:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.gamebooster.service.INotificationListenerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/gamebooster/service/INotificationListenerCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.gamebooster.service.INotificationListenerCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/gamebooster/service/INotificationListenerCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/gamebooster/service/INotificationListenerCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/gamebooster/service/INotificationListenerCallback$Stub$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/INotificationListenerCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/miui/gamebooster/service/INotificationListenerCallback;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/service/INotificationListenerCallback$Stub$a;->k:Lcom/miui/gamebooster/service/INotificationListenerCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/gamebooster/service/INotificationListenerCallback;)Z
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/service/INotificationListenerCallback$Stub$a;->k:Lcom/miui/gamebooster/service/INotificationListenerCallback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/miui/gamebooster/service/INotificationListenerCallback$Stub$a;->k:Lcom/miui/gamebooster/service/INotificationListenerCallback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "com.miui.gamebooster.service.INotificationListenerCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    :cond_1
    invoke-interface {p0, v2}, Lcom/miui/gamebooster/service/INotificationListenerCallback;->onNotificationRemovedCallBack(Landroid/service/notification/StatusBarNotification;)V

    return v0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    :cond_3
    invoke-interface {p0, v2}, Lcom/miui/gamebooster/service/INotificationListenerCallback;->onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V

    return v0

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
