.class public Lcom/xiaomi/security/devicecredential/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/security/devicecredential/c$c;,
        Lcom/xiaomi/security/devicecredential/c$b;,
        Lcom/xiaomi/security/devicecredential/c$d;
    }
.end annotation


# static fields
.field private static a:Landroid/os/IBinder;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/xiaomi/security/devicecredential/c;->b()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/security/devicecredential/c$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/security/devicecredential/c$b;-><init>(Lcom/xiaomi/security/devicecredential/c$a;)V

    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    const-string v4, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager.v1"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v0, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :try_start_1
    invoke-static {v1}, Lcom/xiaomi/security/devicecredential/c$b;->w8(Lcom/xiaomi/security/devicecredential/c$b;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lcom/xiaomi/security/devicecredential/c$d; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    iget v3, v2, Lcom/xiaomi/security/devicecredential/c$d;->a:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_0

    const-string v2, "SecurityDeviceCredentialManager"

    const-string v3, "getSecurityDeviceId: Hardware service not ready, retry..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_0
    throw v2

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method private static declared-synchronized b()Landroid/os/IBinder;
    .locals 4

    const-class v0, Lcom/xiaomi/security/devicecredential/c;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/xiaomi/security/devicecredential/c;->a:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: sService != null. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/xiaomi/security/devicecredential/c;->a:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    goto :goto_0

    :cond_0
    const-string v2, "SecurityDeviceCredentialManager"

    const-string v3, "getService: sService == null. "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v1, :cond_2

    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: binder not alive. "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v1, "miui.sedc"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/security/devicecredential/c;->a:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: NULL binder, retry..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_2
    const-string v1, "SecurityDeviceCredentialManager"

    const-string v2, "getService: binder alive. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sget-object v1, Lcom/xiaomi/security/devicecredential/c;->a:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c()Z
    .locals 5

    invoke-static {}, Lcom/xiaomi/security/devicecredential/c;->b()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v3, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager.v1"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public static d(I[BZ)[B
    .locals 6

    invoke-static {}, Lcom/xiaomi/security/devicecredential/c;->b()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/security/devicecredential/c$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/xiaomi/security/devicecredential/c$c;-><init>(Lcom/xiaomi/security/devicecredential/c$a;)V

    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_0
    const-string v4, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager.v1"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v2, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_1
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x3

    invoke-interface {v0, v5, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :try_start_1
    invoke-static {v1}, Lcom/xiaomi/security/devicecredential/c$c;->w8(Lcom/xiaomi/security/devicecredential/c$c;)[B

    move-result-object p0
    :try_end_1
    .catch Lcom/xiaomi/security/devicecredential/c$d; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v2

    iget v3, v2, Lcom/xiaomi/security/devicecredential/c$d;->a:I

    const/16 v4, -0x65

    if-ne v3, v4, :cond_1

    const-string v2, "SecurityDeviceCredentialManager"

    const-string v3, "sign: Hardware service not ready, retry..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_1
    throw v2

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
