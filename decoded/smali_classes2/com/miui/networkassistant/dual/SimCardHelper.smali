.class public Lcom/miui/networkassistant/dual/SimCardHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DualSimCardHelper"

.field private static volatile sInstance:Lcom/miui/networkassistant/dual/SimCardHelper;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mImsi1:Ljava/lang/String;

.field private mImsi2:Ljava/lang/String;

.field protected mIsSim1Inserted:Z

.field private mIsSim2Inserted:Z

.field private mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default1"

    iput-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    const-string v0, "default2"

    iput-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    new-instance v0, Lcom/miui/networkassistant/dual/SimCardHelper$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/dual/SimCardHelper$2;-><init>(Lcom/miui/networkassistant/dual/SimCardHelper;)V

    iput-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->updateSimState()Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/networkassistant/dual/SimCardHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/dual/SimCardHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/dual/SimCardHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->initForUIProcess()V

    return-void
.end method

.method public static asyncInit(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/dual/SimCardHelper$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/dual/SimCardHelper$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;
    .locals 2

    sget-object v0, Lcom/miui/networkassistant/dual/SimCardHelper;->sInstance:Lcom/miui/networkassistant/dual/SimCardHelper;

    if-nez v0, :cond_2

    const-class v0, Lcom/miui/networkassistant/dual/SimCardHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/dual/SimCardHelper;->sInstance:Lcom/miui/networkassistant/dual/SimCardHelper;

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/networkassistant/dual/SimCardHelper;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/dual/SimCardHelper;-><init>(Landroid/content/Context;)V

    :goto_0
    sput-object v1, Lcom/miui/networkassistant/dual/SimCardHelper;->sInstance:Lcom/miui/networkassistant/dual/SimCardHelper;

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/dual/SimCardHelper$SingleSimCardHelper;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    sget-object p0, Lcom/miui/networkassistant/dual/SimCardHelper;->sInstance:Lcom/miui/networkassistant/dual/SimCardHelper;

    return-object p0
.end method

.method private initForUIProcess()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mSimInfoChangeListener:Lcom/miui/networkassistant/dual/DualSimInfoManager$ISimInfoChangeListener;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/dual/DualSimInfoManager;->registerChangeListener(Landroid/content/Context;Lmiui/securitycenter/DualSim/DualSimInfoManagerWrapper$ISimInfoChangeWrapperListener;)V

    return-void
.end method

.method private makeSimUserInfo(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "slotNum"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    const-string v1, "simId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setSimId(J)V

    const-string v1, "simName"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isVirtualSim(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getVirtualSimCarrierName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setSimName(Ljava/lang/String;)V

    const-string v0, "iccId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setIccid(Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setSimInserted(Z)V

    return-void
.end method


# virtual methods
.method public getCurrentMobileSlotNum()I
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getCurrentMobileSlotNum()I

    move-result v0

    return v0
.end method

.method public getSim1Imsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    return-object v0
.end method

.method public getSim2Imsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    return-object v0
.end method

.method public getSimImsi(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSlotNumByImsi(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isDualSimInserted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDualSimInsertedOne()Z
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isImsiMissed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSim1Inserted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    return v0
.end method

.method public isSim2Inserted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    return v0
.end method

.method public isSimCardReady(I)Z
    .locals 5

    const-string v0, "miui.telephony.TelephonyManager"

    invoke-static {v0}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getDefault"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "getSimStateForSlot"

    invoke-virtual {v0, p1, v3, v4}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lbh/d$a;->i()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public isSimInserted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public updateSimState()Z
    .locals 8

    const-string v0, "DualSimCardHelper"

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/dual/DualSimInfoManager;->getSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "get sim info exception!"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    :goto_0
    const-string v2, "default2"

    const-string v3, "default1"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "slotNum"

    if-ne v6, v5, :cond_2

    const-string v6, "one sim card inserted"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v5, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    iput-boolean v4, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    goto :goto_2

    :cond_1
    if-ne v1, v5, :cond_4

    iput-boolean v4, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    iput-boolean v5, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    iput-object v3, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string v2, "two sim cards inserted"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->makeSimUserInfo(Ljava/lang/String;Ljava/util/Map;)V

    iput-boolean v5, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-static {v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->makeSimUserInfo(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    :cond_3
    const-string v1, "no sim card inserted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isImsiMissed()Z

    move-result v0

    xor-int/2addr v0, v5

    return v0

    :cond_5
    :goto_4
    iput-boolean v4, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim1Inserted:Z

    iput-boolean v4, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mIsSim2Inserted:Z

    iput-object v3, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi1:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/networkassistant/dual/SimCardHelper;->mImsi2:Ljava/lang/String;

    return v5
.end method
