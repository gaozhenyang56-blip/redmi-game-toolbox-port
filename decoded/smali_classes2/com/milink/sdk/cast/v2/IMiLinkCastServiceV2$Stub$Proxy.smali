.class Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getDuration(Ljava/lang/String;)J
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->getDuration(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    return-object v0
.end method

.method public getProgress(Ljava/lang/String;)J
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->getProgress(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getRate(Ljava/lang/String;)F
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->getRate(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public getVolume(Ljava/lang/String;)I
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->getVolume(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public init(Ljava/lang/String;Lcom/milink/sdk/cast/IMiLinkCastCallback;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->init(Ljava/lang/String;Lcom/milink/sdk/cast/IMiLinkCastCallback;)V
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

.method public operatePhoto(Ljava/lang/String;Ljava/lang/String;IIIIIIF)V
    .locals 15

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v6, p3

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v9, p6

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v10, p7

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v11, p8

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v12, p9

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeFloat(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v13, p0

    :try_start_1
    iget-object v3, v13, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v14, 0x0

    invoke-interface {v3, v4, v1, v2, v14}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v3 .. v12}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->operatePhoto(Ljava/lang/String;Ljava/lang/String;IIIIIIF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v13, p0

    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public release(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->release(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
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

.method public setMediaCallback(Ljava/lang/String;Lcom/milink/sdk/cast/IMiLinkMediaCallback;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setMediaCallback(Ljava/lang/String;Lcom/milink/sdk/cast/IMiLinkMediaCallback;)V
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

.method public setPhotoSource(Ljava/lang/String;Lcom/milink/sdk/cast/IMiLinkPhotoSource;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setPhotoSource(Ljava/lang/String;Lcom/milink/sdk/cast/IMiLinkPhotoSource;)V
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

.method public setProgress(Ljava/lang/String;J)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setProgress(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
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

.method public setRate(Ljava/lang/String;F)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setRate(Ljava/lang/String;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
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

.method public setVolume(Ljava/lang/String;I)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setVolume(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
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

.method public showPhoto(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->showPhoto(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
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

.method public showSlide(Ljava/lang/String;I)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->showSlide(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
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

.method public startConnect(Ljava/lang/String;Lcom/milink/sdk/cast/MiLinkDevice;I)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2, v0, v2}, Lcom/milink/sdk/cast/MiLinkDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startConnect(Ljava/lang/String;Lcom/milink/sdk/cast/MiLinkDevice;I)V
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

.method public startDiscovery(Ljava/lang/String;ILcom/milink/sdk/cast/IMiLinkDeviceListener;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startDiscovery(Ljava/lang/String;ILcom/milink/sdk/cast/IMiLinkDeviceListener;)V
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

.method public startPhotoShow(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startPhotoShow(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
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

.method public startPlayAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)V
    .locals 13

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v6, p3

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v9, p6

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    :try_start_1
    iget-object v3, v11, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v12, 0x0

    invoke-interface {v3, v4, v1, v2, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    invoke-interface/range {v3 .. v10}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startPlayAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public startPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)V
    .locals 13

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v6, p3

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v7, p4

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v8, p5

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v9, p6

    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeDouble(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v11, p0

    :try_start_1
    iget-object v3, v11, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v12, 0x0

    invoke-interface {v3, v4, v1, v2, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    invoke-interface/range {v3 .. v10}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v11, p0

    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public startWithUI(Ljava/lang/String;I)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startWithUI(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
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

.method public stopConnect(Ljava/lang/String;I)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->stopConnect(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
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

.method public stopDiscovery(Ljava/lang/String;I)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->stopDiscovery(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
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

.method public stopPhotoShow(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->stopPhotoShow(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
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

.method public stopPlay(Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.milink.sdk.cast.v2.IMiLinkCastServiceV2"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2$Stub;->getDefaultImpl()Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->stopPlay(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
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
