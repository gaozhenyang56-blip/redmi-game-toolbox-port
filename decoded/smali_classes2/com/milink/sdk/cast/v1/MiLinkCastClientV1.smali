.class public Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/milink/sdk/client/IMiLinkCastClient;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

.field private mDeviceListener:Lcom/milink/sdk/client/MiLinkDeviceListener;

.field private mManager:Lcom/milink/api/v1/MilinkClientManager;

.field private mMediaCallback:Lcom/milink/sdk/client/MiLinkMediaCallback;

.field private mMediaDeviceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/milink/sdk/cast/MiLinkDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mMiLinkCallback:Lcom/milink/sdk/cast/IMiLinkCastCallback;

.field private mPhotoSource:Lcom/milink/sdk/client/MiLinkPhotoSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mMediaDeviceMap:Ljava/util/Map;

    new-instance v0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;

    invoke-direct {v0, p0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$1;-><init>(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)V

    iput-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    iput-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/cast/IMiLinkCastCallback;
    .locals 0

    iget-object p0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mMiLinkCallback:Lcom/milink/sdk/cast/IMiLinkCastCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mMediaDeviceMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkDeviceListener;
    .locals 0

    iget-object p0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mDeviceListener:Lcom/milink/sdk/client/MiLinkDeviceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkMediaCallback;
    .locals 0

    iget-object p0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mMediaCallback:Lcom/milink/sdk/client/MiLinkMediaCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/sdk/client/MiLinkPhotoSource;
    .locals 0

    iget-object p0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mPhotoSource:Lcom/milink/sdk/client/MiLinkPhotoSource;

    return-object p0
.end method

.method static synthetic access$500(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)Lcom/milink/api/v1/MilinkClientManager;
    .locals 0

    iget-object p0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    return-object p0
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->getPlaybackDuration()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getProgress()J
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->getPlaybackProgress()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRate()F
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->getPlaybackRate()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getVolume()I
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->getVolume()I

    move-result v0

    return v0
.end method

.method public init(Lcom/milink/sdk/client/MiLinkCastCallback;)I
    .locals 1

    iput-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mMiLinkCallback:Lcom/milink/sdk/cast/IMiLinkCastCallback;

    new-instance p1, Lcom/milink/api/v1/MilinkClientManager;

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/milink/api/v1/MilinkClientManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {p1}, Lcom/milink/api/v1/MilinkClientManager;->open()V

    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    invoke-virtual {p1, v0}, Lcom/milink/api/v1/MilinkClientManager;->setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V

    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    new-instance v0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$2;

    invoke-direct {v0, p0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$2;-><init>(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)V

    invoke-virtual {p1, v0}, Lcom/milink/api/v1/MilinkClientManager;->setDataSource(Lcom/milink/api/v1/MilinkClientManagerDataSource;)V

    const/4 p1, 0x0

    return p1
.end method

.method public operatePhoto(Ljava/lang/String;IIIIIIF)I
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/milink/api/v1/MilinkClientManager;->zoomPhoto(Ljava/lang/String;IIIIIIF)Lcom/milink/api/v1/type/ReturnCode;

    const/4 v1, 0x0

    return v1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->close()V

    return-void
.end method

.method public setMediaCallback(Lcom/milink/sdk/client/MiLinkMediaCallback;)I
    .locals 0

    iput-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mMediaCallback:Lcom/milink/sdk/client/MiLinkMediaCallback;

    const/4 p1, 0x0

    return p1
.end method

.method public setPhotoSource(Lcom/milink/sdk/client/MiLinkPhotoSource;)I
    .locals 0

    iput-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mPhotoSource:Lcom/milink/sdk/client/MiLinkPhotoSource;

    const/4 p1, 0x0

    return p1
.end method

.method public setProgress(J)I
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/MilinkClientManager;->setPlaybackProgress(I)Lcom/milink/api/v1/type/ReturnCode;

    const/4 p1, 0x0

    return p1
.end method

.method public setRate(F)I
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/MilinkClientManager;->setPlaybackRate(I)Lcom/milink/api/v1/type/ReturnCode;

    const/4 p1, 0x0

    return p1
.end method

.method public setVolume(I)I
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/MilinkClientManager;->setVolume(I)Lcom/milink/api/v1/type/ReturnCode;

    const/4 p1, 0x0

    return p1
.end method

.method public showPhoto(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0, p1}, Lcom/milink/api/v1/MilinkClientManager;->show(Ljava/lang/String;)Lcom/milink/api/v1/type/ReturnCode;

    const/4 p1, 0x0

    return p1
.end method

.method public showSlide(I)I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    sget-object v1, Lcom/milink/api/v1/type/SlideMode;->Recyle:Lcom/milink/api/v1/type/SlideMode;

    invoke-virtual {v0, p1, v1}, Lcom/milink/api/v1/MilinkClientManager;->startSlideshow(ILcom/milink/api/v1/type/SlideMode;)Lcom/milink/api/v1/type/ReturnCode;

    const/4 p1, 0x0

    return p1
.end method

.method public startConnect(Lcom/milink/sdk/cast/MiLinkDevice;I)I
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lcom/milink/sdk/cast/MiLinkDevice;->getType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "miracast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {p1}, Lcom/milink/sdk/cast/MiLinkDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/milink/sdk/cast/MiLinkDevice;->getP2pMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/milink/sdk/cast/MiLinkDevice;->getWifiMac()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$4;

    invoke-direct {v2, p0}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$4;-><init>(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;)V

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/milink/api/v1/MilinkClientManager;->connectWifiDisplay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/milink/api/v1/MiLinkClientMiracastConnectCallback;)Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {p1}, Lcom/milink/sdk/cast/MiLinkDevice;->getIp()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x7d0

    invoke-virtual {p2, p1, v0}, Lcom/milink/api/v1/MilinkClientManager;->connect(Ljava/lang/String;I)Lcom/milink/api/v1/type/ReturnCode;

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public startDiscovery(ILcom/milink/sdk/client/MiLinkDeviceListener;)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {p1}, Lcom/milink/api/v1/MilinkClientManager;->startWifiDisplayScan()Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_1

    :cond_0
    iput-object p2, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mDeviceListener:Lcom/milink/sdk/client/MiLinkDeviceListener;

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mMediaDeviceMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/milink/sdk/cast/MiLinkDevice;

    :try_start_0
    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mDeviceListener:Lcom/milink/sdk/client/MiLinkDeviceListener;

    invoke-interface {v0, p2}, Lcom/milink/sdk/cast/IMiLinkDeviceListener;->onFound(Lcom/milink/sdk/cast/MiLinkDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public startPhotoShow()I
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->startShow()Lcom/milink/api/v1/type/ReturnCode;

    const/4 v0, 0x0

    return v0
.end method

.method public startPlayAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I
    .locals 8

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    sget-object v7, Lcom/milink/api/v1/type/MediaType;->Audio:Lcom/milink/api/v1/type/MediaType;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/milink/api/v1/MilinkClientManager;->startPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;

    const/4 p1, 0x0

    return p1
.end method

.method public startPlayVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ID)I
    .locals 8

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    sget-object v7, Lcom/milink/api/v1/type/MediaType;->Video:Lcom/milink/api/v1/type/MediaType;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/milink/api/v1/MilinkClientManager;->startPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IDLcom/milink/api/v1/type/MediaType;)Lcom/milink/api/v1/type/ReturnCode;

    const/4 p1, 0x0

    return p1
.end method

.method public startWithUI(I)I
    .locals 2

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    new-instance v1, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$3;

    invoke-direct {v1, p0, p1}, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1$3;-><init>(Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;I)V

    invoke-virtual {v0, v1, p1}, Lcom/milink/api/v1/MilinkClientManager;->showScanList(Lcom/milink/api/v1/MiLinkClientScanListCallback;I)Lcom/milink/api/v1/type/ReturnCode;

    const/4 p1, 0x0

    return p1
.end method

.method public stopConnect(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {p1}, Lcom/milink/api/v1/MilinkClientManager;->disconnectWifiDisplay()Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {p1}, Lcom/milink/api/v1/MilinkClientManager;->disconnect()Lcom/milink/api/v1/type/ReturnCode;

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public stopDiscovery(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {p1}, Lcom/milink/api/v1/MilinkClientManager;->stopWifiDisplayScan()Lcom/milink/api/v1/type/ReturnCode;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mDeviceListener:Lcom/milink/sdk/client/MiLinkDeviceListener;

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public stopPhotoShow()I
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->stopShow()Lcom/milink/api/v1/type/ReturnCode;

    const/4 v0, 0x0

    return v0
.end method

.method public stopPlay()I
    .locals 1

    iget-object v0, p0, Lcom/milink/sdk/cast/v1/MiLinkCastClientV1;->mManager:Lcom/milink/api/v1/MilinkClientManager;

    invoke-virtual {v0}, Lcom/milink/api/v1/MilinkClientManager;->stopPlay()Lcom/milink/api/v1/type/ReturnCode;

    const/4 v0, 0x0

    return v0
.end method
