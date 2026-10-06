.class public Lcom/miui/sdk/tc/TcManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/sdk/tc/TcManager$ReturnCode;
    }
.end annotation


# static fields
.field public static final SEC_KEY:Ljava/lang/String; = "A2FscFVdX1+ULfEz/TTPQVNRXE+lzSe2"

.field private static final TAG:Ljava/lang/String; = "com.miui.sdk.tc.TcManager"

.field public static final TC_TYPE_ALL:I = 0x7

.field public static final TC_TYPE_BILL:I = 0x2

.field public static final TC_TYPE_CALLTIME:I = 0x4

.field public static final TC_TYPE_TRAFFIC:I = 0x1

.field private static sInstance:Lcom/miui/sdk/tc/TcManager;

.field private static sLibLoad:Z

.field private static sOperatorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTcUtilsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/miui/sdk/tc/TcUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBlockNumberList:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsCH:Z

.field private mIsInited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/sdk/tc/TcManager;->sOperatorMap:Ljava/util/HashMap;

    const-string v1, "CMCC"

    const-string v2, "100"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/TcManager;->sOperatorMap:Ljava/util/HashMap;

    const-string v1, "UNICOM"

    const-string v2, "200"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/sdk/tc/TcManager;->sOperatorMap:Ljava/util/HashMap;

    const-string v1, "TELECOM"

    const-string v2, "300"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/miui/sdk/tc/TcManager;->sTcUtilsMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/sdk/tc/TcManager;->mIsCH:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/sdk/tc/TcManager;->mIsInited:Z

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/miui/sdk/tc/TcManager;->mBlockNumberList:[Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v2, v0

    return-void
.end method

.method private declared-synchronized clearBlockNumberList(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/sdk/tc/TcManager;->mBlockNumberList:[Ljava/util/ArrayList;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getInstance()Lcom/miui/sdk/tc/TcManager;
    .locals 2

    const-class v0, Lcom/miui/sdk/tc/TcManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/sdk/tc/TcManager;->sInstance:Lcom/miui/sdk/tc/TcManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/sdk/tc/TcManager;

    invoke-direct {v1}, Lcom/miui/sdk/tc/TcManager;-><init>()V

    sput-object v1, Lcom/miui/sdk/tc/TcManager;->sInstance:Lcom/miui/sdk/tc/TcManager;

    :cond_0
    sget-object v1, Lcom/miui/sdk/tc/TcManager;->sInstance:Lcom/miui/sdk/tc/TcManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized isInBlockNumberList(Ljava/lang/String;I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/sdk/tc/TcManager;->mBlockNumberList:[Ljava/util/ArrayList;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private loadLib()V
    .locals 2

    :try_start_0
    const-string v0, "tcp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/sdk/tc/TcManager;->sLibLoad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/miui/sdk/tc/TcManager;->sLibLoad:Z

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordThrowable(Ljava/lang/Throwable;)V

    sget-object v0, Lcom/miui/sdk/tc/TcManager;->TAG:Ljava/lang/String;

    const-string v1, "not find libtcp.so"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addBlockNumber(Ljava/lang/String;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/sdk/tc/TcManager;->mBlockNumberList:[Ljava/util/ArrayList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/sdk/tc/TcManager;->mBlockNumberList:[Ljava/util/ArrayList;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAllInstructions(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/miui/sdk/tc/TcDirection;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/miui/sdk/tc/TcPlugin;->getInstructions(I)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/sdk/tc/TcDirection;

    invoke-virtual {v2}, Lcom/miui/sdk/tc/TcDirection;->getReceiveNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/miui/sdk/tc/TcManager;->addBlockNumber(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :catchall_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
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

    sget-boolean v0, Lcom/miui/sdk/tc/TcManager;->sLibLoad:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/sdk/tc/TcManager;->mIsCH:Z

    invoke-static {p1, v0}, Lcom/miui/sdk/tc/TcPlugin;->getBrandsMap(Ljava/lang/String;Z)Ljava/util/LinkedHashMap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

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

    sget-boolean v0, Lcom/miui/sdk/tc/TcManager;->sLibLoad:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/sdk/tc/TcPlugin;->getCitiesMap(I)Ljava/util/TreeMap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getInstructions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/miui/sdk/tc/TcManager;->sLibLoad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/sdk/tc/TcManager;->getInstructionsMapByType(II)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstructionsByTcType(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/miui/sdk/tc/TcDirection;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/miui/sdk/tc/TcPlugin;->getInstructions(I)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/sdk/tc/TcDirection;

    invoke-virtual {v2}, Lcom/miui/sdk/tc/TcDirection;->getCmdType()I

    move-result v3

    and-int/2addr v3, p2

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/miui/sdk/tc/TcDirection;->getReceiveNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/miui/sdk/tc/TcManager;->addBlockNumber(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :catchall_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getInstructionsMapByType(II)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/miui/sdk/tc/TcPlugin;->getInstructions(I)Ljava/util/ArrayList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/sdk/tc/TcDirection;

    invoke-virtual {v4}, Lcom/miui/sdk/tc/TcDirection;->getCmdType()I

    move-result v5

    and-int/2addr v5, p2

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/miui/sdk/tc/TcDirection;->getSendNumber()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v7, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x1

    aput-object v3, v6, v8

    const-string v3, "%s#%d"

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/miui/sdk/tc/TcDirection;->getDirection()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4}, Lcom/miui/sdk/tc/TcDirection;->getReceiveNumber()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "%s#%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/miui/sdk/tc/TcDirection;->getReceiveNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/miui/sdk/tc/TcManager;->addBlockNumber(Ljava/lang/String;I)V

    move v3, v7

    goto :goto_0

    :catchall_0
    :cond_2
    :goto_1
    return-object v0
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

    sget-boolean v0, Lcom/miui/sdk/tc/TcManager;->sLibLoad:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/sdk/tc/TcManager;->mIsCH:Z

    invoke-static {v0}, Lcom/miui/sdk/tc/TcPlugin;->getCarriesMap(Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProvinceCodeByCityCode(I)I
    .locals 1

    sget-boolean v0, Lcom/miui/sdk/tc/TcManager;->sLibLoad:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/sdk/tc/TcPlugin;->getProvinceCodeByCityCode(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

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

    sget-boolean v0, Lcom/miui/sdk/tc/TcManager;->sLibLoad:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/sdk/tc/TcManager;->mIsCH:Z

    invoke-static {v0}, Lcom/miui/sdk/tc/TcPlugin;->getProvincesMap(Z)Ljava/util/TreeMap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResult(Ljava/lang/String;Ljava/lang/String;IILjava/util/HashMap;)Lcom/miui/sdk/tc/DataUsage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/sdk/tc/DataUsage;"
        }
    .end annotation

    new-instance v0, Lcom/miui/sdk/tc/DataUsage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/sdk/tc/DataUsage;-><init>(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p2, p1, p5, p3, p4}, Lcom/miui/sdk/tc/TcPlugin;->getResultByTcType(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    if-nez v1, :cond_1

    const-string p1, "KeyValues"

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/miui/sdk/tc/DataUsage;->parse(Ljava/lang/String;)V

    :cond_1
    sget-object p1, Lcom/miui/sdk/tc/TcManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getResult.result = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 1

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    iput-object p1, p0, Lcom/miui/sdk/tc/TcManager;->mContext:Landroid/content/Context;

    iget-boolean p1, p0, Lcom/miui/sdk/tc/TcManager;->mIsInited:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/sdk/tc/TcManager;->loadLib()V

    sget-boolean p1, Lcom/miui/sdk/tc/TcManager;->sLibLoad:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/sdk/tc/TcManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3}, Lcom/miui/sdk/tc/TcPlugin;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/sdk/tc/TcManager;->mIsInited:Z

    :cond_0
    invoke-static {v0}, Lcom/miui/sdk/tc/TcManager$ReturnCode;->parse(I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isSmsNeedBlock(Ljava/lang/String;I)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/sdk/tc/TcManager;->isInBlockNumberList(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setConfig(Lcom/miui/sdk/tc/UserConfig;IILjava/lang/String;)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 7

    sget-object v0, Lcom/miui/sdk/tc/TcManager;->sOperatorMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/sdk/tc/UserConfig;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/sdk/tc/UserConfig;->getOperator()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v4, v0

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/miui/sdk/tc/TcManager;->sTcUtilsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/sdk/tc/TcUtils;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/sdk/tc/TcUtils;

    invoke-direct {v1}, Lcom/miui/sdk/tc/TcUtils;-><init>()V

    sget-object v2, Lcom/miui/sdk/tc/TcManager;->sTcUtilsMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v2, p2

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/miui/sdk/tc/TcUtils;->fetchTcTypeInfo(ILcom/miui/sdk/tc/UserConfig;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    sget-object p1, Lcom/miui/sdk/tc/TcManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setConfig: result = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p3, Lcom/miui/sdk/tc/TcManager;->TAG:Ljava/lang/String;

    const-string p4, "\u66f4\u65b0\u6a21\u677f\u5f02\u5e38: "

    invoke-static {p3, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {v0}, Lcom/miui/sdk/tc/TcManager$ReturnCode;->parse(I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    move-result-object p1

    sget-object p3, Lcom/miui/sdk/tc/TcManager$ReturnCode;->OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    if-ne p1, p3, :cond_2

    invoke-direct {p0, p2}, Lcom/miui/sdk/tc/TcManager;->clearBlockNumberList(I)V

    :cond_2
    return-object p1
.end method

.method public setImsi(Ljava/lang/String;)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 1

    sget-boolean v0, Lcom/miui/sdk/tc/TcManager;->sLibLoad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/sdk/tc/TcPlugin;->setImsi(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-static {p1}, Lcom/miui/sdk/tc/TcManager$ReturnCode;->parse(I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    move-result-object p1

    return-object p1
.end method

.method public setImsi(Ljava/lang/String;I)Lcom/miui/sdk/tc/TcManager$ReturnCode;
    .locals 1

    sget-boolean v0, Lcom/miui/sdk/tc/TcManager;->sLibLoad:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Lcom/miui/sdk/tc/TcPlugin;->setImsi(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    invoke-static {p1}, Lcom/miui/sdk/tc/TcManager$ReturnCode;->parse(I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    move-result-object p1

    return-object p1
.end method
