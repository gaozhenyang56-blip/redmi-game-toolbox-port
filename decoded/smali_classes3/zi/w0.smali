.class public Lzi/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "dc_job_result_time_25"

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 14

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    rem-long v4, v0, v2

    sget-object v6, Lzi/w0;->a:Landroid/content/SharedPreferences;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    const-string v7, "mipush_extra"

    invoke-virtual {p0, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lzi/w0;->a:Landroid/content/SharedPreferences;

    :cond_0
    invoke-static {}, Lzi/w0;->a()Ljava/lang/String;

    move-result-object p0

    sget-object v6, Lzi/w0;->a:Landroid/content/SharedPreferences;

    const-wide/16 v7, 0x0

    invoke-interface {v6, p0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    cmp-long v6, v9, v7

    const v11, 0x2ca1c80

    if-gtz v6, :cond_1

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v6, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v0, v7

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const/4 v2, 0x3

    invoke-virtual {v6, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const v3, 0x5265c00

    mul-int/2addr v2, v3

    int-to-long v2, v2

    :goto_0
    add-long/2addr v0, v2

    sget-object v2, Lzi/w0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_1
    sub-long v12, v0, v9

    cmp-long v6, v12, v7

    const-wide/32 v7, 0xf731400

    if-ltz v6, :cond_2

    div-long/2addr v12, v7

    const-wide/16 v0, 0x1

    add-long/2addr v12, v0

    mul-long/2addr v12, v7

    add-long/2addr v9, v12

    sget-object v0, Lzi/w0;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lzi/w0;

    invoke-direct {v0}, Lzi/w0;-><init>()V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_1

    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-lez v6, :cond_3

    new-instance v6, Ljava/util/Random;

    invoke-direct {v6, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v6, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v0, v6

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private c(Landroid/content/Context;Lzi/v0;Lzi/s0;)V
    .locals 2

    new-instance p3, Lzi/u7;

    invoke-direct {p3}, Lzi/u7;-><init>()V

    const-string v0, "category_app_channel_info"

    invoke-virtual {p3, v0}, Lzi/u7;->z(Ljava/lang/String;)Lzi/u7;

    const-string v0, "app_channel_info"

    invoke-virtual {p3, v0}, Lzi/u7;->v(Ljava/lang/String;)Lzi/u7;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lzi/u7;->q(Ljava/lang/String;)Lzi/u7;

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Lzi/u7;->h(Z)Lzi/u7;

    const-wide/16 v0, 0x1

    invoke-virtual {p3, v0, v1}, Lzi/u7;->e(J)Lzi/u7;

    const-string p2, "xmsf_channel"

    invoke-virtual {p3, p2}, Lzi/u7;->f(Ljava/lang/String;)Lzi/u7;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Lzi/u7;->o(J)Lzi/u7;

    const-string p2, "com.xiaomi.xmsf"

    invoke-virtual {p3, p2}, Lzi/u7;->G(Ljava/lang/String;)Lzi/u7;

    invoke-virtual {p3, p2}, Lzi/u7;->C(Ljava/lang/String;)Lzi/u7;

    invoke-static {}, Lcom/xiaomi/push/service/f1;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lzi/u7;->E(Ljava/lang/String;)Lzi/u7;

    invoke-static {p1, p3}, Lcom/xiaomi/push/service/g1;->a(Landroid/content/Context;Lzi/u7;)V

    return-void
.end method

.method private d(Lzi/s0;Lzi/r0;Ljava/lang/Exception;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lzi/ga;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/w2;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lzi/s0;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "appCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lzi/s0;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "channels"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lzi/s0;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "packCount"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lzi/s0;->i()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "totalSize"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lzi/s0;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "isBatch"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lzi/r0;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "maxCallTime"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lzi/r0;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "minCallTime"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lzi/r0;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "callAvg"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lzi/r0;->e()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "duration"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "exception"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lzi/c5;->c()Lzi/c5;

    move-result-object p1

    const-string p2, "app_switch_upload"

    invoke-virtual {p1, p2, v0}, Lzi/c5;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v1, p0

    const-string v0, "mipush|"

    const-string v2, "mipush_"

    const-string v3, "s"

    const-string v4, "com.xiaomi.xmsf"

    const-string v5, "c"

    invoke-static {}, Lzi/ga;->b()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_a

    new-instance v7, Lzi/s0;

    invoke-direct {v7}, Lzi/s0;-><init>()V

    new-instance v8, Lzi/r0;

    const-wide/16 v9, 0x32

    const-wide/16 v11, 0x3e8

    invoke-direct {v8, v9, v10, v11, v12}, Lzi/r0;-><init>(JJ)V

    :try_start_0
    invoke-static {}, Lzi/ga;->b()Landroid/content/Context;

    move-result-object v10

    const-string v11, "pref_registered_pkg_names"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v13, 0x1

    if-eqz v12, :cond_0

    :try_start_1
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr v11, v13

    :goto_0
    int-to-long v11, v11

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v2, v7

    goto/16 :goto_b

    :cond_0
    :try_start_2
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v11

    goto :goto_0

    :goto_1
    invoke-virtual {v7, v11, v12}, Lzi/s0;->d(J)V

    new-instance v11, Lzi/v0;

    invoke-direct {v11}, Lzi/v0;-><init>()V

    invoke-virtual {v7}, Lzi/s0;->b()J

    move-result-wide v14

    invoke-virtual {v11, v5, v14, v15}, Lzi/v0;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    new-instance v12, Lzi/u0;

    invoke-direct {v12}, Lzi/u0;-><init>()V

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-nez v16, :cond_5

    :try_start_3
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    new-instance v9, Lzi/v0;

    invoke-direct {v9}, Lzi/v0;-><init>()V

    const-string v13, "a"

    invoke-virtual {v9, v13, v14}, Lzi/v0;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v13, Lzi/x0;

    invoke-direct {v13, v1, v6, v15}, Lzi/x0;-><init>(Lzi/w0;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Lzi/r0;->b(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v9, v3, v13}, Lzi/v0;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x1a

    if-lt v13, v14, :cond_4

    invoke-static {v6, v15}, Lcom/xiaomi/push/service/a0;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/a0;

    move-result-object v13

    invoke-virtual {v13}, Lcom/xiaomi/push/service/a0;->l()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    new-instance v14, Lzi/u0;

    invoke-direct {v14}, Lzi/u0;-><init>()V

    move-object/from16 v17, v4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    int-to-long v10, v4

    invoke-virtual {v7, v10, v11}, Lzi/s0;->f(J)V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationChannel;

    invoke-virtual {v10}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lzi/v0;

    invoke-direct {v13}, Lzi/v0;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v21, v4

    const-string v4, "t"

    move-object/from16 v22, v7

    const-string v7, ""

    if-eqz v20, :cond_1

    move-object/from16 v20, v12

    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v2

    const-string v2, "_"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x1

    invoke-virtual {v13, v4, v12}, Lzi/v0;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_4
    invoke-virtual {v13, v5, v2}, Lzi/v0;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_1
    move-object/from16 v23, v2

    move-object/from16 v20, v12

    const/4 v12, 0x1

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "|"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    invoke-virtual {v13, v4, v7}, Lzi/v0;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_4

    :cond_2
    :goto_5
    new-instance v2, Lzi/y0;

    invoke-direct {v2, v1, v6, v15, v10}, Lzi/y0;-><init>(Lzi/w0;Landroid/content/Context;Ljava/lang/String;Landroid/app/NotificationChannel;)V

    invoke-virtual {v8, v2}, Lzi/r0;->b(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v3, v2}, Lzi/v0;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v14, v13}, Lzi/u0;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object/from16 v12, v20

    move-object/from16 v4, v21

    move-object/from16 v7, v22

    move-object/from16 v2, v23

    goto/16 :goto_3

    :cond_3
    move-object/from16 v23, v2

    move-object/from16 v22, v7

    move-object/from16 v20, v12

    invoke-virtual {v9, v5, v14}, Lzi/v0;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v12, v20

    goto :goto_6

    :cond_4
    move-object/from16 v23, v2

    move-object/from16 v17, v4

    move-object/from16 v22, v7

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    :goto_6
    invoke-virtual {v12, v9}, Lzi/u0;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "d"

    move-object/from16 v11, v19

    invoke-virtual {v11, v2, v12}, Lzi/v0;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v9, v0

    move-object/from16 v2, v22

    goto/16 :goto_b

    :cond_5
    move-object/from16 v23, v2

    move-object/from16 v17, v4

    move-object/from16 v22, v7

    move-object/from16 v18, v10

    :goto_7
    :try_start_5
    invoke-virtual {v11}, Lzi/v0;->a()I

    move-result v2

    const/16 v4, 0x7800

    if-le v2, v4, :cond_6

    invoke-virtual/range {v22 .. v22}, Lzi/s0;->c()V

    invoke-virtual {v11}, Lzi/v0;->a()I

    move-result v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    int-to-long v9, v2

    move-object/from16 v2, v22

    :try_start_6
    invoke-virtual {v2, v9, v10}, Lzi/s0;->h(J)V

    invoke-direct {v1, v6, v11, v2}, Lzi/w0;->c(Landroid/content/Context;Lzi/v0;Lzi/s0;)V

    new-instance v4, Lzi/v0;

    invoke-direct {v4}, Lzi/v0;-><init>()V

    invoke-virtual {v2}, Lzi/s0;->b()J

    move-result-wide v9

    invoke-virtual {v4, v5, v9, v10}, Lzi/v0;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    new-instance v7, Lzi/u0;

    invoke-direct {v7}, Lzi/u0;-><init>()V

    move-object v11, v4

    move-object v12, v7

    goto :goto_8

    :cond_6
    move-object/from16 v2, v22

    :goto_8
    move-object v7, v2

    move-object/from16 v4, v17

    move-object/from16 v10, v18

    move-object/from16 v2, v23

    const/4 v13, 0x1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v2, v22

    goto :goto_a

    :cond_7
    move-object v2, v7

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v2}, Lzi/s0;->c()V

    invoke-virtual {v11}, Lzi/v0;->a()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Lzi/s0;->h(J)V

    invoke-direct {v1, v6, v11, v2}, Lzi/w0;->c(Landroid/content/Context;Lzi/v0;Lzi/s0;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_a

    :cond_8
    move-object v2, v7

    :cond_9
    :goto_9
    const/4 v9, 0x0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object v2, v7

    :goto_a
    move-object v9, v0

    :goto_b
    invoke-direct {v1, v2, v8, v9}, Lzi/w0;->d(Lzi/s0;Lzi/r0;Ljava/lang/Exception;)V

    :cond_a
    return-void
.end method
