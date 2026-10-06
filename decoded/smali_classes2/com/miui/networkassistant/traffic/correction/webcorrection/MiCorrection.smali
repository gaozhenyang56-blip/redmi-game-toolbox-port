.class public Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/traffic/correction/IWebCorrection;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiCorrection"

.field private static sInstance:Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;Ljava/lang/String;Lcom/miui/networkassistant/config/SimUserInfo;IZLcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->lambda$fetchMiSimInfo$0(Ljava/lang/String;Lcom/miui/networkassistant/config/SimUserInfo;IZLcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    return-void
.end method

.method private fetchMiSimInfo(Ljava/lang/String;ZILcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v4

    new-instance v0, Loa/a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p2

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Loa/a;-><init>(Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;Ljava/lang/String;Lcom/miui/networkassistant/config/SimUserInfo;IZLcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    :cond_0
    sget-object p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private synthetic lambda$fetchMiSimInfo$0(Ljava/lang/String;Lcom/miui/networkassistant/config/SimUserInfo;IZLcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 30

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "data"

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "imsi"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lx4/t;->d(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&appKey=RdS47349AMMIGe6Z4zQ7sWVY7A5lDEcH"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/earthquakewarning/utils/MD5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "sign"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lp4/i;

    const-string v8, "query_micard_info"

    invoke-direct {v7, v8}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v8, "https://mihall.10046.xiaomimobile.com/mimobile/consumption"

    invoke-static {v8, v6, v7}, Leg/j;->f(Ljava/lang/String;Ljava/util/Map;Lp4/i;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x6

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-direct {v0, v8, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-virtual {v0, v9}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsLastStatus(Z)V

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLaunchFrom(I)V

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsBackground(Z)V

    invoke-interface {v4, v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void

    :cond_0
    :try_start_0
    new-instance v7, Lcom/google/gson/JsonParser;

    invoke-direct {v7}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v7, v6}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v6, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v6, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v6, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    const-string v7, "traffic_consumption"

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v7, p0

    :try_start_1
    iget-object v12, v7, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->mContext:Landroid/content/Context;

    invoke-static {v12, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    const-string v12, "mobile"

    invoke-virtual {v6, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/miui/networkassistant/config/SimUserInfo;->saveMiPhoneNum(Ljava/lang/String;)Z

    const-string v0, "traffic_package_type"

    invoke-virtual {v6, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    const/4 v12, 0x2

    if-eq v0, v9, :cond_a

    const/16 v15, 0x8

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-eq v0, v12, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBrand(I)Z

    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v12

    if-ge v12, v15, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v8}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v12

    if-ne v12, v14, :cond_1

    const/4 v12, 0x7

    invoke-virtual {v5, v12}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v12

    if-eq v12, v9, :cond_3

    invoke-virtual {v5, v13}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v12

    if-eq v12, v9, :cond_3

    invoke-virtual {v5, v13}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v12

    if-nez v12, :cond_1

    :cond_3
    invoke-virtual {v5, v9}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v20

    add-long v16, v16, v20

    invoke-virtual {v5, v14}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v20

    add-long v18, v18, v20

    goto :goto_0

    :cond_4
    :goto_1
    const-wide/16 v12, 0x0

    cmp-long v0, v18, v12

    if-gtz v0, :cond_5

    cmp-long v0, v10, v12

    if-eqz v0, :cond_5

    sub-long v18, v16, v10

    :cond_5
    move-wide/from16 v25, v10

    move-wide/from16 v8, v16

    :goto_2
    move-wide/from16 v27, v18

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v1, v9}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBrand(I)Z

    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v10, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->size()I

    move-result v9

    if-ge v9, v15, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v5, v8}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v9

    if-ne v9, v14, :cond_8

    invoke-virtual {v5, v13}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v9

    if-ne v9, v12, :cond_8

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v20

    move-wide/from16 v8, v22

    add-long v22, v8, v20

    invoke-virtual {v5, v14}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v8

    add-long v18, v18, v8

    invoke-virtual {v5, v12}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v8

    add-long/2addr v10, v8

    goto :goto_4

    :cond_8
    move-wide/from16 v8, v22

    move-wide/from16 v22, v8

    :goto_4
    const/4 v8, 0x6

    const/4 v9, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    move-wide/from16 v8, v22

    invoke-virtual {v1, v8, v9}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardPackage(J)Z

    move-wide/from16 v25, v10

    goto :goto_2

    :cond_a
    invoke-virtual {v1, v12}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBrand(I)Z

    move-wide/from16 v25, v10

    const-wide/16 v8, 0x0

    const-wide/16 v27, 0x0

    :goto_6
    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v29

    move-object/from16 v24, v0

    invoke-direct/range {v24 .. v29}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(JJI)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsLastStatus(Z)V

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLaunchFrom(I)V

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsBackground(Z)V

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-ltz v5, :cond_b

    invoke-virtual {v1, v8, v9}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    invoke-virtual {v0, v8, v9}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setTotalTrafficB(J)V

    :cond_b
    const-string v5, "balance"

    invoke-virtual {v6, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillPackageRemained(J)Z

    invoke-static/range {p2 .. p2}, Lcom/miui/networkassistant/config/SimUserInfo;->updateMiSimUserInfo(Lcom/miui/networkassistant/config/SimUserInfo;)V

    invoke-virtual {v0, v5, v6}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillRemained(J)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setBillEnabled(Z)V

    instance-of v5, v4, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;

    if-eqz v5, :cond_c

    move-object v5, v4

    check-cast v5, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;

    invoke-virtual {v5}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->getSlotNum()I

    move-result v5

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getSlotNum()I

    move-result v6

    if-eq v5, v6, :cond_c

    move-object v5, v4

    check-cast v5, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;

    invoke-virtual {v0}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getSlotNum()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->setCorrectionSlotNum(I)V

    :cond_c
    invoke-interface {v4, v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    goto :goto_7

    :cond_d
    move-object/from16 v7, p0

    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v5

    const/4 v6, 0x6

    invoke-direct {v0, v6, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsLastStatus(Z)V

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLaunchFrom(I)V

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsBackground(Z)V

    invoke-interface {v4, v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object/from16 v7, p0

    :catch_1
    instance-of v0, v4, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;

    if-eqz v0, :cond_e

    move-object v0, v4

    check-cast v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->getSlotNum()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v6

    if-eq v5, v6, :cond_e

    invoke-virtual/range {p2 .. p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrectionWrapper$WebCorrectListener;->setCorrectionSlotNum(I)V

    :cond_e
    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v5

    const/4 v6, 0x6

    invoke-direct {v0, v6, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsLastStatus(Z)V

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setLaunchFrom(I)V

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setIsBackground(Z)V

    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-virtual/range {p2 .. p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-direct {v0, v6, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(II)V

    invoke-interface {v4, v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    :goto_7
    return-void
.end method


# virtual methods
.method public queryDataUsage(Ljava/lang/String;JZILcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 0

    iget-object p2, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MIMOBILE"

    invoke-static {p3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->fetchMiSimInfo(Ljava/lang/String;ZILcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    :cond_0
    return-void
.end method
