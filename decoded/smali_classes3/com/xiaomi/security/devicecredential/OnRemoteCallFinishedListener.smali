.class public abstract Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/security/devicecredential/IOnRemoteCallFinishedListener;


# instance fields
.field private a:I

.field private k:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->k:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/security/devicecredential/IOnRemoteCallFinishedListener;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/security/devicecredential/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/security/devicecredential/a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method private o8()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->k:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.xiaomi.security.devicecredential.ionremotecallfinishedlistener.v0"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->q8(I)V

    return v1

    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->t8(I[B)V

    return v1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->r8(ILjava/lang/String;)V

    return v1
.end method

.method protected abstract p8()V
.end method

.method public final q8(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->a:I

    invoke-virtual {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->p8()V

    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->o8()V

    return-void
.end method

.method public final r8(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->a:I

    invoke-virtual {p0, p2}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->s8(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->o8()V

    return-void
.end method

.method protected abstract s8(Ljava/lang/String;)V
.end method

.method public final t8(I[B)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->a:I

    invoke-virtual {p0, p2}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->u8([B)V

    invoke-direct {p0}, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->o8()V

    return-void
.end method

.method protected abstract u8([B)V
.end method

.method protected v1()V
    .locals 2

    iget v0, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->a:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/security/devicecredential/c$d;

    iget v1, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->a:I

    invoke-direct {v0, v1}, Lcom/xiaomi/security/devicecredential/c$d;-><init>(I)V

    throw v0
.end method

.method protected v8()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/security/devicecredential/OnRemoteCallFinishedListener;->k:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "remotecall timeout."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
