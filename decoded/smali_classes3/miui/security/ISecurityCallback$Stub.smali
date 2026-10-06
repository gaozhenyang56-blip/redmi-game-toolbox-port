.class public abstract Lmiui/security/ISecurityCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lmiui/security/ISecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/ISecurityCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/ISecurityCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_checkPreInstallNeeded:I = 0x1

.field static final TRANSACTION_preInstallApps:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.security.ISecurityCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "miui.security.ISecurityCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/security/ISecurityCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lmiui/security/ISecurityCallback;

    return-object v0

    :cond_1
    new-instance v0, Lmiui/security/ISecurityCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lmiui/security/ISecurityCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lmiui/security/ISecurityCallback;
    .locals 1

    sget-object v0, Lmiui/security/ISecurityCallback$Stub$Proxy;->sDefaultImpl:Lmiui/security/ISecurityCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lmiui/security/ISecurityCallback;)Z
    .locals 1

    sget-object v0, Lmiui/security/ISecurityCallback$Stub$Proxy;->sDefaultImpl:Lmiui/security/ISecurityCallback;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lmiui/security/ISecurityCallback$Stub$Proxy;->sDefaultImpl:Lmiui/security/ISecurityCallback;

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

    const-string v1, "miui.security.ISecurityCallback"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lmiui/security/ISecurityCallback;->preInstallApps()V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiui/security/ISecurityCallback;->checkPreInstallNeeded(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
