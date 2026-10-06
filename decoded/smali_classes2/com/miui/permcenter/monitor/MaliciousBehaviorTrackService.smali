.class public Lcom/miui/permcenter/monitor/MaliciousBehaviorTrackService;
.super Landroid/app/IntentService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Malicious-InitWatching"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 16
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const-class v1, [Ljava/lang/String;

    const-class v2, Lmiui/security/SecurityManager;

    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/SecurityManager;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    const-string v6, "extra_force_update"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {v2}, Lmiui/security/SecurityManager;->hasAppBehaviorWatching()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2, v4}, Lmiui/security/SecurityManager;->stopWatchingAppBehavior(I)V

    invoke-static/range {p0 .. p0}, Lcom/miui/permcenter/monitor/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v6, Lcom/miui/permcenter/monitor/b$a;->a:Ljava/lang/String;

    sget-object v7, Lcom/miui/permcenter/monitor/b$a;->c:Ljava/lang/String;

    sget-boolean v8, Lcom/miui/permcenter/monitor/b;->c:Z

    if-eqz v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f120d2f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-static {v0, v6, v7, v8}, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->e(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, "Malicious-InitWatching"

    if-eqz v6, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHandleIntent:cloudSettings:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v5

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v0, v8, :cond_d

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    sget-object v9, Lcom/miui/permcenter/monitor/b$a;->d:Ljava/lang/String;

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4

    move v14, v4

    goto/16 :goto_9

    :cond_4
    const/16 v10, 0x2710

    if-gt v9, v10, :cond_c

    invoke-static {v9}, Lcom/miui/permcenter/monitor/b;->b(I)Z

    move-result v10

    if-eqz v10, :cond_5

    goto/16 :goto_8

    :cond_5
    sget-object v10, Lcom/miui/permcenter/monitor/b$a;->e:Ljava/lang/String;

    invoke-virtual {v8, v10, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sget-object v11, Lcom/miui/permcenter/monitor/b$a;->f:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "startWatchingAppBehavior"

    const/4 v13, 0x3

    if-eqz v11, :cond_7

    :try_start_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lez v15, :cond_7

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v15

    new-array v15, v15, [Ljava/lang/String;

    move v14, v5

    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v14, v4, :cond_6

    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_6
    new-array v4, v13, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v4, v5

    const/4 v11, 0x1

    aput-object v1, v4, v11

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x2

    aput-object v11, v4, v14

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v5

    const/4 v13, 0x1

    aput-object v15, v11, v13

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v11, v14

    invoke-static {v7, v2, v12, v4, v11}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const/4 v14, 0x1

    goto :goto_6

    :cond_7
    sget-object v4, Lcom/miui/permcenter/monitor/b$a;->g:Ljava/lang/String;

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_a

    invoke-static/range {p0 .. p0}, Lx4/f1;->C(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v11

    sget-object v14, Lcom/miui/permcenter/monitor/b;->b:Ljava/util/List;

    if-eqz v14, :cond_8

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_8
    move v14, v5

    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v14, v15, :cond_9

    invoke-virtual {v4, v14}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_9
    new-array v4, v13, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v4, v5

    const/4 v14, 0x1

    aput-object v1, v4, v14

    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v14, v4, v15

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v5

    new-array v14, v5, [Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v14, 0x2

    aput-object v11, v13, v14

    invoke-static {v7, v2, v12, v4, v13}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    const/4 v4, 0x2

    new-array v11, v4, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v5

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    aput-object v13, v11, v14

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v4, v5

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v4, v14

    invoke-static {v7, v2, v12, v11, v4}, Lbh/e;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    sget-object v4, Lcom/miui/permcenter/monitor/b$a;->h:Ljava/lang/String;

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_b

    int-to-long v11, v4

    invoke-virtual {v2, v9, v11, v12}, Lmiui/security/SecurityManager;->updateBehaviorThreshold(IJ)V

    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get_cloud,behavior:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",include_system:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ",record_threshold:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_c
    :goto_8
    move v14, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Watching LocalAppBehavior: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :goto_9
    add-int/lit8 v0, v0, 0x1

    move v4, v14

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v1, "onHandleIntent exception"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    return-void
.end method
