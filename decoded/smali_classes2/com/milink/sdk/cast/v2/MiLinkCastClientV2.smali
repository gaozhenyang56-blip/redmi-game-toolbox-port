.class public Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/milink/sdk/client/IMiLinkCastClient;


# static fields
.field private static final ACTION_SERVICE:Ljava/lang/String; = "com.milink.sdk.cast.v2.client"

.field private static final ACTION_SERVICE_PUBLIC:Ljava/lang/String; = "com.milink.sdk.cast.v2.client.public"

.field private static final TAG:Ljava/lang/String; = "ML::MiLinkCastClientV2"


# instance fields
.field private mBound:Z

.field private mCallback:Lcom/milink/sdk/cast/IMiLinkCastCallback;

.field private mCaller:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mInnerMediaCallback:Lcom/milink/sdk/cast/IMiLinkMediaCallback;

.field private mInnerPhotoSource:Lcom/milink/sdk/cast/IMiLinkPhotoSource;

.field private mMediaCallback:Lcom/milink/sdk/client/MiLinkMediaCallback;

.field private mPhotoSource:Lcom/milink/sdk/client/MiLinkPhotoSource;

.field private mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

.field private mSystemApp:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mBound:Z

    new-instance v0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;

    invoke-direct {v0, p0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$1;-><init>(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)V

    iput-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$2;

    invoke-direct {v0, p0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$2;-><init>(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)V

    iput-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mInnerPhotoSource:Lcom/milink/sdk/cast/IMiLinkPhotoSource;

    new-instance v0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;

    invoke-direct {v0, p0}, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2$3;-><init>(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)V

    iput-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mInnerMediaCallback:Lcom/milink/sdk/cast/IMiLinkMediaCallback;

    iput-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mSystemApp:Z

    iput-object p3, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;
    .locals 0

    iget-object p0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    return-object p0
.end method

.method static synthetic access$002(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;)Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;
    .locals 0

    iput-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    return-object p1
.end method

.method static synthetic access$100(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/cast/IMiLinkCastCallback;
    .locals 0

    iget-object p0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCallback:Lcom/milink/sdk/cast/IMiLinkCastCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/cast/IMiLinkPhotoSource;
    .locals 0

    iget-object p0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mInnerPhotoSource:Lcom/milink/sdk/cast/IMiLinkPhotoSource;

    return-object p0
.end method

.method static synthetic access$400(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/cast/IMiLinkMediaCallback;
    .locals 0

    iget-object p0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mInnerMediaCallback:Lcom/milink/sdk/cast/IMiLinkMediaCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkPhotoSource;
    .locals 0

    iget-object p0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mPhotoSource:Lcom/milink/sdk/client/MiLinkPhotoSource;

    return-object p0
.end method

.method static synthetic access$600(Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;)Lcom/milink/sdk/client/MiLinkMediaCallback;
    .locals 0

    iget-object p0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mMediaCallback:Lcom/milink/sdk/client/MiLinkMediaCallback;

    return-object p0
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string v0, "ML::MiLinkCastClientV2"

    const-string v1, "getDuration error, remote service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->getDuration(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, -0x3

    return-wide v0
.end method

.method public getProgress()J
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string v0, "ML::MiLinkCastClientV2"

    const-string v1, "getProgress error, remote service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->getProgress(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 v0, -0x3

    return-wide v0
.end method

.method public getRate()F
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string v0, "ML::MiLinkCastClientV2"

    const-string v1, "getRate error, remote service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, -0x40000000    # -2.0f

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->getRate(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/high16 v0, -0x3fc00000    # -3.0f

    return v0
.end method

.method public getVolume()I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string v0, "ML::MiLinkCastClientV2"

    const-string v1, "getVolume error, remote service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->getVolume(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x3

    return v0
.end method

.method public init(Lcom/milink/sdk/client/MiLinkCastCallback;)I
    .locals 5

    iput-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCallback:Lcom/milink/sdk/cast/IMiLinkCastCallback;

    iget-boolean v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mBound:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mSystemApp:Z

    const/4 v0, -0x1

    const/4 v2, 0x1

    const-string v3, "com.milink.service"

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v4, "com.milink.sdk.cast.v2.client"

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mBound:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v4, "com.milink.sdk.cast.v2.client.public"

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mBound:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1

    :cond_3
    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_4

    const-string p1, "ML::MiLinkCastClientV2"

    const-string v0, "init error, remote service is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->init(Ljava/lang/String;Lcom/milink/sdk/cast/IMiLinkCastCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public operatePhoto(Ljava/lang/String;IIIIIIF)I
    .locals 12

    move-object v1, p0

    iget-object v2, v1, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v2, :cond_0

    const-string v0, "ML::MiLinkCastClientV2"

    const-string v2, "operatePhoto error, remote service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_0
    :try_start_0
    iget-object v3, v1, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->operatePhoto(Ljava/lang/String;Ljava/lang/String;IIIIIIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x3

    return v0
.end method

.method public release()V
    .locals 2

    iget-boolean v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mBound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->release(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mBound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    iput-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCallback:Lcom/milink/sdk/cast/IMiLinkCastCallback;

    :cond_1
    return-void
.end method

.method public setMediaCallback(Lcom/milink/sdk/client/MiLinkMediaCallback;)I
    .locals 0

    iput-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mMediaCallback:Lcom/milink/sdk/client/MiLinkMediaCallback;

    const/4 p1, 0x0

    return p1
.end method

.method public setPhotoSource(Lcom/milink/sdk/client/MiLinkPhotoSource;)I
    .locals 0

    iput-object p1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mPhotoSource:Lcom/milink/sdk/client/MiLinkPhotoSource;

    const/4 p1, 0x0

    return p1
.end method

.method public setProgress(J)I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string p1, "ML::MiLinkCastClientV2"

    const-string p2, "setProgress error, remote service is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setProgress(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public setRate(F)I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string p1, "ML::MiLinkCastClientV2"

    const-string v0, "setRate error, remote service is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setRate(Ljava/lang/String;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public setVolume(I)I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string p1, "ML::MiLinkCastClientV2"

    const-string v0, "setVolume error, remote service is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->setVolume(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public showPhoto(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string p1, "ML::MiLinkCastClientV2"

    const-string v0, "showPhoto error, remote service is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->showPhoto(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public showSlide(I)I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string p1, "ML::MiLinkCastClientV2"

    const-string v0, "showSlide error, remote service is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->showSlide(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public startConnect(Lcom/milink/sdk/cast/MiLinkDevice;I)I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string p1, "ML::MiLinkCastClientV2"

    const-string p2, "startConnect error, remote service is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startConnect(Ljava/lang/String;Lcom/milink/sdk/cast/MiLinkDevice;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public startDiscovery(ILcom/milink/sdk/client/MiLinkDeviceListener;)I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string p1, "ML::MiLinkCastClientV2"

    const-string p2, "startDiscovery error, remote service is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startDiscovery(Ljava/lang/String;ILcom/milink/sdk/cast/IMiLinkDeviceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public startPhotoShow()I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string v0, "ML::MiLinkCastClientV2"

    const-string v1, "startPhotoShow error, remote service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startPhotoShow(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x3

    return v0
.end method

.method public startPlayAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I
    .locals 8

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string p1, "ML::MiLinkCastClientV2"

    const-string p2, "startPlayAudio error, remote service is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startPlayAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public startPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I
    .locals 8

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string p1, "ML::MiLinkCastClientV2"

    const-string p2, "startPlayVideo error, remote service is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public startWithUI(I)I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string p1, "ML::MiLinkCastClientV2"

    const-string v0, "startWithUI error, remote service is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->startWithUI(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public stopConnect(I)I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string p1, "ML::MiLinkCastClientV2"

    const-string v0, "stopConnect error, remote service is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->stopConnect(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public stopDiscovery(I)I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string p1, "ML::MiLinkCastClientV2"

    const-string v0, "stopDiscovery error, remote service is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x2

    return p1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->stopDiscovery(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x3

    return p1
.end method

.method public stopPhotoShow()I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string v0, "ML::MiLinkCastClientV2"

    const-string v1, "stopPhotoShow error, remote service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->stopPhotoShow(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x3

    return v0
.end method

.method public stopPlay()I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mRemoteService:Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;

    if-nez v0, :cond_0

    const-string v0, "ML::MiLinkCastClientV2"

    const-string v1, "stopPlay error, remote service is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/milink/sdk/cast/v2/MiLinkCastClientV2;->mCaller:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/milink/sdk/cast/v2/IMiLinkCastServiceV2;->stopPlay(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x3

    return v0
.end method
