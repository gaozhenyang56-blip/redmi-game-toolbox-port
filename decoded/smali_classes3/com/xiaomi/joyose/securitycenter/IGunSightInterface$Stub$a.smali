.class Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static k:Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.joyose.securitycenter.IGunSightInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v1, p0, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub;->v1()Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub;->v1()Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;->setBinder(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public startGunSight()V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.joyose.securitycenter.IGunSightInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub;->v1()Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub;->v1()Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;->startGunSight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public stopGunSight()V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.joyose.securitycenter.IGunSightInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub;->v1()Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub;->v1()Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;->stopGunSight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public updateGunSightConfig(IIII)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.xiaomi.joyose.securitycenter.IGunSightInterface"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub$a;->a:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub;->v1()Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface$Stub;->v1()Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaomi/joyose/securitycenter/IGunSightInterface;->updateGunSightConfig(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
