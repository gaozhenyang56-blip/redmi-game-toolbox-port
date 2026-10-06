.class Lvendor/xiaomi/hardware/misys/common/IMiSysImpl$Stub$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvendor/xiaomi/hardware/misys/common/IMiSysImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/xiaomi/hardware/misys/common/IMiSysImpl$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lvendor/xiaomi/hardware/misys/common/IMiSysImpl$Stub$a;->k:I

    const-string v0, "-1"

    iput-object v0, p0, Lvendor/xiaomi/hardware/misys/common/IMiSysImpl$Stub$a;->l:Ljava/lang/String;

    iput-object p1, p0, Lvendor/xiaomi/hardware/misys/common/IMiSysImpl$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lvendor/xiaomi/hardware/misys/common/IMiSysImpl$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3

    invoke-virtual {p0}, Lvendor/xiaomi/hardware/misys/common/IMiSysImpl$Stub$a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    sget-object v2, Lvendor/xiaomi/hardware/misys/common/IMiSysImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p1, p0, Lvendor/xiaomi/hardware/misys/common/IMiSysImpl$Stub$a;->a:Landroid/os/IBinder;

    const/16 p2, 0x13

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    :cond_0
    :try_start_1
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method GetPartitionSize is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
