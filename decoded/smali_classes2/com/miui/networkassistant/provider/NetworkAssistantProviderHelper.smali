.class public Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NAProvider"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBillTextInfo(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isBillPackageEffective()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const v3, 0x7f120cfd

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v3

    long-to-float v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const v3, 0x7f121ca9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    :cond_0
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result p1

    const v3, 0x7f080fd4

    invoke-static {p0, v2, p1, v3, p2}, Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;->imageProvider(Landroid/content/Context;ZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "NAProvider"

    const-string p1, "getBillTextInfo FileProvider Exception"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static getNoSimIcon(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f080fe1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v2, v2, v1, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;->imageProvider(Landroid/content/Context;ZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f080fd4

    const/4 v3, 0x1

    invoke-static {p0, v3, v2, v1, p1}, Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;->imageProvider(Landroid/content/Context;ZIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "NAProvider"

    const-string p1, "getNoSimIcon FileProvider Exception"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public static getTrafficBaseInfo(Lcom/miui/networkassistant/config/SimUserInfo;Lcom/miui/networkassistant/service/ITrafficManageBinder;)[J
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [J

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/miui/networkassistant/traffic/statistic/LeisureTrafficHelper;->isLeisureTime(Lcom/miui/networkassistant/config/SimUserInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v4

    aput-wide v4, v0, v3

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalAndLeisureMonthTotalUsed(I)[J

    move-result-object v1

    aget-wide v4, v1, v2

    aput-wide v4, v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v4

    aput-wide v4, v0, v3

    :cond_1
    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v4

    aput-wide v4, v0, v2

    :goto_0
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getTodayDataUsageUsed(I)J

    move-result-wide p0

    aput-wide p0, v0, v1

    aget-wide p0, v0, v3

    const-wide/16 v1, 0x0

    cmp-long v4, p0, v1

    if-ltz v4, :cond_2

    goto :goto_1

    :cond_2
    move-wide p0, v1

    :goto_1
    aput-wide p0, v0, v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "NAProvider"

    const-string v1, "query data usage "

    invoke-static {p1, v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-object v0
.end method

.method public static getTrafficTextInfo(Landroid/content/Context;Lcom/miui/networkassistant/config/SimUserInfo;[JLjava/lang/String;)[Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, "0"

    const-string v7, ""

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v3, p2, v2

    const/4 v5, 0x1

    aget-wide v6, p2, v5

    const/4 v8, 0x2

    aget-wide v9, p2, v8

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v11

    const-string v12, "miui.intent.action.NETWORKASSISTANT_ENTRANCE"

    invoke-static {v12, v11}, Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;->toUriIntent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x5

    aput-object v12, v1, v13

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageCorrectedTime()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x4

    aput-object v12, v1, v14

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v12

    invoke-static {v0, v12}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v12

    const v14, 0x7f120d1c

    const v15, 0x7f080fe3

    if-eqz v12, :cond_0

    invoke-static {v0, v9, v10}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aget-object v4, v3, v2

    aput-object v4, v1, v5

    aget-object v3, v3, v5

    aput-object v3, v1, v8

    goto/16 :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isBrandSetted()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficManageControlEnable()Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {v0, v6, v7}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120d0d

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aget-object v4, v3, v2

    aput-object v4, v1, v5

    aget-object v3, v3, v5

    aput-object v3, v1, v8

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEnable()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-static {v0, v9, v10}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aget-object v4, v3, v2

    aput-object v4, v1, v5

    aget-object v3, v3, v5

    aput-object v3, v1, v8

    goto :goto_1

    :cond_3
    sub-long v9, v3, v6

    const-wide/16 v12, 0x0

    cmp-long v12, v9, v12

    if-ltz v12, :cond_4

    invoke-static {v0, v9, v10}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120d16

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aget-object v4, v3, v2

    aput-object v4, v1, v5

    aget-object v3, v3, v5

    aput-object v3, v1, v8

    goto :goto_1

    :cond_4
    sub-long/2addr v6, v3

    invoke-static {v0, v6, v7}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->trafficFormat(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120d15

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aget-object v4, v3, v2

    aput-object v4, v1, v5

    aget-object v3, v3, v5

    aput-object v3, v1, v8

    const v15, 0x7f080fe2

    goto :goto_1

    :cond_5
    :goto_0
    const-string v3, "miui.intent.action.NETWORKASSISTANT_MONTH_PACKAGE_SETTING"

    invoke-static {v3, v11}, Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;->toUriIntent(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v13

    const v3, 0x7f1213ab

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v3, "--"

    aput-object v3, v1, v5

    invoke-static/range {p0 .. p0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v8

    const v15, 0x7f080fe1

    :goto_1
    const/4 v3, 0x3

    move-object/from16 v4, p3

    :try_start_0
    invoke-static {v0, v2, v11, v15, v4}, Lcom/miui/networkassistant/provider/NetworkAssistantProviderHelper;->imageProvider(Landroid/content/Context;ZIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "NAProvider"

    const-string v2, "getTrafficTextInfo FileProvider Exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v1
.end method

.method private static imageProvider(Landroid/content/Context;ZIILjava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    const-string p1, "tmp_bill%s.png"

    goto :goto_0

    :cond_0
    const-string p1, "tmp_traffic%s.png"

    :goto_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "na_files"

    invoke-direct {p2, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, p2, p1, p3}, Lcom/miui/networkassistant/utils/BitmapUtil;->saveDrawableResToFile(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)V

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p1, "com.miui.networkassistant.fileprovider"

    invoke-static {p0, p1, p3}, Landroidx/core/content/FileProvider;->h(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p4, p1, v0}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toUriIntent(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "intent:#Intent;action=%s;package=com.miui.securitycenter;i.sim_slot_num_tag=%d;end"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
