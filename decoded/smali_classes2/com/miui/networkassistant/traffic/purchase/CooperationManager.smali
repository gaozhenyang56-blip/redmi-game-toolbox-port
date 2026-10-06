.class public Lcom/miui/networkassistant/traffic/purchase/CooperationManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CooperationManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->updateNaTrafficPurchaseStatus(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;)Z

    move-result p0

    return p0
.end method

.method public static isTrafficPurchaseAvailable(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)Z
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/utils/PrivacyDeclareAndAllowNetworkUtil;->isAllowNetwork()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->updateTrafficPurchaseStatus(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)V

    :cond_3
    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNATrafficPurchaseAvailable()Z

    move-result p0

    goto :goto_0

    :cond_4
    move p0, v1

    :goto_0
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "mina isTrafficPurchaseAvailable:%b"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "CooperationManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static navigationToTrafficPurchasePage(Landroid/app/Activity;Lcom/miui/networkassistant/config/SimUserInfo;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNATrafficPurchaseAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/miui/networkassistant/traffic/purchase/PurchaseUtil;->launchUrl(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager;->updateTrafficPurchaseStatus(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result p1

    invoke-static {p0, p2, p1}, Lcom/miui/networkassistant/traffic/purchase/PurchaseUtil;->launchUrl(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private static updateNaTrafficPurchaseStatus(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;)Z
    .locals 8

    const-string v0, "CooperationManager"

    const-string v1, "mina updateNaTrafficPurchaseStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {p0, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->checkRichPurchaseOnlineResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/common/net/c;->isResponsed()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/miui/common/net/c;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;->isOnline()Z

    move-result v3

    const-wide/32 v4, 0x5265c00

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/miui/common/net/c;->getOldAge()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v6, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_0
    add-long/2addr v6, v4

    invoke-virtual {v1}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->getmOrderTips()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->saveNATrafficPurchaseOrderTips(Ljava/lang/String;)Z

    invoke-virtual {v1}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->getOrderType()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->saveNATrafficPurchaseType(I)Z

    invoke-virtual {p1, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveNATrafficPurchaseAvailable(Z)Z

    invoke-virtual {p1, v6, v7}, Lcom/miui/networkassistant/config/SimUserInfo;->saveNATrafficPurchaseAvailableUpdateTime(J)Z

    invoke-virtual {v1}, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->getPurchaseActivityId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    const-string v4, "NOACTIVITY"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getPurchaseActivityId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v5}, Lcom/miui/networkassistant/config/SimUserInfo;->setNATipsEnable(Z)Z

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->savePurchaseActivityId(Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setNATipsEnable(Z)Z

    :goto_1
    invoke-static {p0}, Lcom/miui/networkassistant/utils/TrafficUpdateUtil;->broadCastTrafficUpdated(Landroid/content/Context;)V

    new-array p0, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "mina updateNaTrafficPurchaseStatus updated, result:%b"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_2

    :cond_3
    const-string p0, "mina updateNaTrafficPurchaseStatus no response"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2
.end method

.method private static updateTrafficPurchaseStatus(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/traffic/purchase/CooperationManager$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/miui/networkassistant/traffic/purchase/CooperationManager$1;-><init>(Lcom/miui/networkassistant/config/SimUserInfo;ZLandroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
