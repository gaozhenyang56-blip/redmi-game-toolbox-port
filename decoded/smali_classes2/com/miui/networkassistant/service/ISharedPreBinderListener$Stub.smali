.class public abstract Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/service/ISharedPreBinderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/ISharedPreBinderListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onPutBoolean:I = 0x5

.field static final TRANSACTION_onPutFloat:I = 0x4

.field static final TRANSACTION_onPutInt:I = 0x2

.field static final TRANSACTION_onPutLong:I = 0x3

.field static final TRANSACTION_onPutString:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.networkassistant.service.ISharedPreBinderListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.networkassistant.service.ISharedPreBinderListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    return-object v0

    :cond_1
    new-instance v0, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub$Proxy;->sDefaultImpl:Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/miui/networkassistant/service/ISharedPreBinderListener;)Z
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub$Proxy;->sDefaultImpl:Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/miui/networkassistant/service/ISharedPreBinderListener$Stub$Proxy;->sDefaultImpl:Lcom/miui/networkassistant/service/ISharedPreBinderListener;

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
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.miui.networkassistant.service.ISharedPreBinderListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_6

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinderListener;->onPutBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinderListener;->onPutFloat(Ljava/lang/String;F)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-interface {p0, p1, v1, v2}, Lcom/miui/networkassistant/service/ISharedPreBinderListener;->onPutLong(Ljava/lang/String;J)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinderListener;->onPutInt(Ljava/lang/String;I)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinderListener;->onPutString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
