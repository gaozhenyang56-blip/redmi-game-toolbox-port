.class Lcom/qti/flp/IFlpService$Stub$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qti/flp/IFlpService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/flp/IFlpService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static k:Lcom/qti/flp/IFlpService;


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qti/flp/IFlpService$Stub$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public M(IILcom/qti/flp/ILocationCallback;J)V
    .locals 9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.qti.flp.IFlpService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Lcom/qti/flp/IFlpService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/qti/flp/IFlpService$Stub;->v1()Lcom/qti/flp/IFlpService;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/qti/flp/IFlpService$Stub;->v1()Lcom/qti/flp/IFlpService;

    move-result-object v3

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/qti/flp/IFlpService;->M(IILcom/qti/flp/ILocationCallback;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public T7()I
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.qti.flp.IFlpService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qti/flp/IFlpService$Stub$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/qti/flp/IFlpService$Stub;->v1()Lcom/qti/flp/IFlpService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/qti/flp/IFlpService$Stub;->v1()Lcom/qti/flp/IFlpService;

    move-result-object v2

    invoke-interface {v2}, Lcom/qti/flp/IFlpService;->T7()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/qti/flp/IFlpService$Stub$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public z6(IIJIJIJ)I
    .locals 16

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.qti.flp.IFlpService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v5, p2

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v6, p3

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v9, p6

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    move/from16 v11, p8

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v12, p9

    invoke-virtual {v1, v12, v13}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v14, p0

    :try_start_1
    iget-object v3, v14, Lcom/qti/flp/IFlpService$Stub$a;->a:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v15, 0x0

    invoke-interface {v3, v4, v1, v2, v15}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/qti/flp/IFlpService$Stub;->v1()Lcom/qti/flp/IFlpService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/qti/flp/IFlpService$Stub;->v1()Lcom/qti/flp/IFlpService;

    move-result-object v3

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-interface/range {v3 .. v13}, Lcom/qti/flp/IFlpService;->z6(IIJIJIJ)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
