.class public Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebTrafficCorrection"

.field private static sInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomizedSms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImsi:Ljava/lang/String;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotNum:I

.field private mTotalLimit:J

.field private mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ILcom/miui/networkassistant/traffic/correction/ITrafficCorrection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    iput p3, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mSlotNum:I

    iput-object p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mImsi:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mSlotNum:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->saveAnalytics(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mImsi:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->handleStatusFail(ZII)V

    return-void
.end method

.method private broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    iget v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mSlotNum:I

    invoke-virtual {p1, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setSlotNum(I)V

    invoke-interface {v2, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;ILcom/miui/networkassistant/traffic/correction/ITrafficCorrection;)Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->sInstanceMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->sInstanceMap:Ljava/util/HashMap;

    :cond_0
    sget-object v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/miui/networkassistant/traffic/correction/ITrafficCorrection;)V

    sget-object p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private handleStatusFail(ZII)V
    .locals 2

    iget-object p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mImsi:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result p2

    const/4 v1, 0x6

    invoke-direct {v0, v1, p2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsBackground(Z)V

    invoke-virtual {v0, p3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLaunchFrom(I)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method

.method private isTrafficCmdType(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private saveAnalytics(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mImsi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackTrafficWebCorrection(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private startSmsCorrection(IIZI)Z
    .locals 10

    const-string v0, "WebTrafficCorrection"

    const-string v1, "startSmsCorrection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    iget-object v6, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mCustomizedSms:Ljava/util/Map;

    const-wide/16 v7, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v9, p4

    invoke-interface/range {v2 .. v9}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->startCorrection(IIZLjava/util/Map;JI)Z

    move-result p1

    return p1
.end method

.method private startWebCorrection(ZIJI)V
    .locals 9

    const-string v0, "WebTrafficCorrection"

    const-string v1, "startWebCorrection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p5, p2}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->handleStatusFail(ZII)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mImsi:Ljava/lang/String;

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;

    iget v8, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mSlotNum:I

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;-><init>(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;ZIII)V

    move-wide v3, p3

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/miui/networkassistant/traffic/correction/IWebCorrection;->queryDataUsage(Ljava/lang/String;JZILcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public forceStop()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->forceStop()V

    :cond_0
    return-void
.end method

.method public getBrands(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getBrands(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getCities(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getCities(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getConfig()Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getConfig()Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions(I)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getInstructions(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getOperators()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getOperators()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getProvinceCodeByCityCode(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getProvinceCodeByCityCode(I)I

    move-result p1

    return p1
.end method

.method public getProvinces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getProvinces()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTcType()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getTcType()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isConfigUpdated()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->isConfigUpdated()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->isFinished()Z

    move-result v0

    return v0
.end method

.method public onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 2

    const-string v0, "WebTrafficCorrection"

    const-string v1, "startSmsCorrection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    instance-of v1, v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    :cond_0
    return-void
.end method

.method public registerLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->registerLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFinished(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->setFinished(Z)V

    return-void
.end method

.method public setTotalLimit(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTotalLimit:J

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->setTotalLimit(J)V

    return-void
.end method

.method public startCorrection(IIZJI)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startCorrection,isBackground:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebTrafficCorrection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mImsi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIMOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mImsi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-static {p1, p2, p3, p6, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackStartCorrection(IIZILcom/miui/networkassistant/config/SimUserInfo;)V

    move-object v0, p0

    move v1, p3

    move v2, p2

    move-wide v3, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->startWebCorrection(ZIJI)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p6, p2}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->handleStatusFail(ZII)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->startSmsCorrection(IIZI)Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p5, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mImsi:Ljava/lang/String;

    invoke-static {p5, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p5

    invoke-static {p1, p2, p3, p6, p5}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackStartCorrection(IIZILcom/miui/networkassistant/config/SimUserInfo;)V

    :cond_2
    move p1, p4

    :goto_1
    return p1
.end method

.method public startCorrection(IIZLjava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->startCorrection(IIZLjava/util/Map;JI)Z

    move-result p1

    return p1
.end method

.method public startCorrection(IIZLjava/util/Map;JI)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JI)Z"
        }
    .end annotation

    iput-object p4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mCustomizedSms:Ljava/util/Map;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p5

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->startCorrection(IIZJI)Z

    move-result p1

    return p1
.end method

.method public unRegisterLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->unRegisterLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateSMSTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->updateSMSTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method
