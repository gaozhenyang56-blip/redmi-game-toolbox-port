.class public abstract Lcom/milink/sdk/photo/IPhotoCastDataSource$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/milink/sdk/photo/IPhotoCastDataSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/sdk/photo/IPhotoCastDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/milink/sdk/photo/IPhotoCastDataSource$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.milink.sdk.photo.IPhotoCastDataSource"

.field static final TRANSACTION_getNextPhoto:I = 0x2

.field static final TRANSACTION_getPrevPhoto:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.milink.sdk.photo.IPhotoCastDataSource"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/milink/sdk/photo/IPhotoCastDataSource;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.milink.sdk.photo.IPhotoCastDataSource"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/milink/sdk/photo/IPhotoCastDataSource;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/milink/sdk/photo/IPhotoCastDataSource;

    return-object v0

    :cond_1
    new-instance v0, Lcom/milink/sdk/photo/IPhotoCastDataSource$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/milink/sdk/photo/IPhotoCastDataSource$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/milink/sdk/photo/IPhotoCastDataSource;
    .locals 1

    sget-object v0, Lcom/milink/sdk/photo/IPhotoCastDataSource$Stub$Proxy;->sDefaultImpl:Lcom/milink/sdk/photo/IPhotoCastDataSource;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/milink/sdk/photo/IPhotoCastDataSource;)Z
    .locals 1

    sget-object v0, Lcom/milink/sdk/photo/IPhotoCastDataSource$Stub$Proxy;->sDefaultImpl:Lcom/milink/sdk/photo/IPhotoCastDataSource;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/milink/sdk/photo/IPhotoCastDataSource$Stub$Proxy;->sDefaultImpl:Lcom/milink/sdk/photo/IPhotoCastDataSource;

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.milink.sdk.photo.IPhotoCastDataSource"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    invoke-interface {p0, p1, v0}, Lcom/milink/sdk/photo/IPhotoCastDataSource;->getNextPhoto(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4

    move v0, v1

    :cond_4
    invoke-interface {p0, p1, v0}, Lcom/milink/sdk/photo/IPhotoCastDataSource;->getPrevPhoto(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
