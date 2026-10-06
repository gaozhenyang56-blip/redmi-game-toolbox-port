.class public abstract Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.milink.api.v1.aidl.IMcsMiracastConnectCallback"

.field static final TRANSACTION_onConnectFail:I = 0x2

.field static final TRANSACTION_onConnectSuccess:I = 0x1

.field static final TRANSACTION_onConnecting:I = 0x3

.field static final TRANSACTION_onResult:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.milink.api.v1.aidl.IMcsMiracastConnectCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.milink.api.v1.aidl.IMcsMiracastConnectCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;
    .locals 1

    sget-object v0, Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback$Stub$Proxy;->sDefaultImpl:Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;)Z
    .locals 1

    sget-object v0, Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback$Stub$Proxy;->sDefaultImpl:Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback$Stub$Proxy;->sDefaultImpl:Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;

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
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.milink.api.v1.aidl.IMcsMiracastConnectCallback"

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

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

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;->onResult(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;->onConnecting(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;->onConnectFail(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/milink/api/v1/aidl/IMcsMiracastConnectCallback;->onConnectSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method
