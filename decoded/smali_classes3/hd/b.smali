.class public Lhd/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/AutoTask;->conditionsEquals(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/AutoTask;->operationsEquals(Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lhd/b;->a(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "changed_on"

    return-object p0

    :cond_0
    const-string p0, "keep_on"

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "changed_off"

    return-object p0

    :cond_2
    const-string p0, "keep_off"

    return-object p0
.end method

.method private static c(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "powercenter_autotask"

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    const-string v0, "powercenter_autotask"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static e(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "powercenter_autotask"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "powercenter_autotask"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static g()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "click_done"

    const-string v2, "change_premiss"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "auto_change_action"

    invoke-static {v1, v0}, Lhd/b;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static h()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "click_done"

    const-string v2, "change_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "auto_change_action"

    invoke-static {v1, v0}, Lhd/b;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static i()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "click_done"

    const-string v2, "change_action"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "auto_change_action"

    invoke-static {v1, v0}, Lhd/b;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static j()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "click_undone"

    const-string v2, "change_premiss"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "auto_change_action"

    invoke-static {v1, v0}, Lhd/b;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static k()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "click_undone"

    const-string v2, "change_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "auto_change_action"

    invoke-static {v1, v0}, Lhd/b;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static l()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "click_undone"

    const-string v2, "change_action"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "auto_change_action"

    invoke-static {v1, v0}, Lhd/b;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static m()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "finish_or_not"

    const-string v2, "finish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "auto_change_action"

    invoke-static {v1, v0}, Lhd/b;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static n()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "finish_or_not"

    const-string v2, "not_finish"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "auto_change_action"

    invoke-static {v1, v0}, Lhd/b;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static o(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "auto_homepage_action"

    invoke-static {p0, v0}, Lhd/b;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static p()V
    .locals 1

    const-string v0, "on_off"

    invoke-static {v0}, Lhd/b;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static q()V
    .locals 1

    const-string v0, "task1"

    invoke-static {v0}, Lhd/b;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static r()V
    .locals 1

    const-string v0, "task2"

    invoke-static {v0}, Lhd/b;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static s()V
    .locals 1

    const-string v0, "task_custom"

    invoke-static {v0}, Lhd/b;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static t()V
    .locals 1

    const-string v0, "new_task"

    invoke-static {v0}, Lhd/b;->o(Ljava/lang/String;)V

    return-void
.end method

.method public static u()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "click_undone"

    const-string v2, "change_premiss"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "auto_new_action"

    invoke-static {v1, v0}, Lhd/b;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static v()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "click_undone"

    const-string v2, "change_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "auto_new_action"

    invoke-static {v1, v0}, Lhd/b;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static w()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "click_undone"

    const-string v2, "change_action"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "auto_new_action"

    invoke-static {v1, v0}, Lhd/b;->d(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static x(Landroid/content/Context;)V
    .locals 40

    invoke-static {}, Lcom/miui/powercenter/autotask/AutoTask;->getInitAutoTaskList()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/powercenter/autotask/AutoTask;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/miui/powercenter/autotask/AutoTask;->QUERY_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "deleted"

    if-eqz v1, :cond_1a

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "off"

    if-eqz v4, :cond_19

    move-object v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_0
    :try_start_1
    new-instance v3, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v3, v1}, Lcom/miui/powercenter/autotask/AutoTask;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v28, v2

    const/4 v2, 0x1

    add-int/2addr v6, v2

    invoke-virtual {v3}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v29

    const-wide/16 v31, 0x1

    cmp-long v29, v29, v31

    if-nez v29, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v29

    if-lez v29, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v2, v28

    check-cast v2, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v3, v2}, Lhd/b;->b(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object/from16 v2, v28

    :goto_1
    invoke-virtual {v3}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v30

    const-wide/16 v32, 0x2

    cmp-long v28, v30, v32

    if-nez v28, :cond_1

    move-object/from16 v28, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v30, v4

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-static {v3, v2}, Lhd/b;->b(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_2

    :cond_1
    move-object/from16 v28, v2

    move-object/from16 v30, v4

    :cond_2
    move-object/from16 v4, v30

    :goto_2
    invoke-virtual {v3}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v30

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v33, v4

    move-object/from16 v32, v5

    int-to-long v4, v2

    cmp-long v2, v30, v4

    if-lez v2, :cond_4

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v9, v9, 0x1

    :cond_3
    const/16 v27, 0x1

    :cond_4
    invoke-virtual {v3}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v30, v0

    move-object/from16 v5, v32

    goto/16 :goto_7

    :cond_5
    add-int/lit8 v7, v7, 0x1

    const-string v2, "on"

    invoke-virtual {v3}, Lcom/miui/powercenter/autotask/AutoTask;->getConditionNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v0, "hour_minute_duration"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    const-string v0, "hour_minute"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_7
    const-string v0, "battery_level_down"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v15, v15, 0x1

    :cond_8
    :goto_4
    move-object/from16 v0, v30

    goto :goto_3

    :cond_9
    move-object/from16 v30, v0

    invoke-virtual {v3}, Lcom/miui/powercenter/autotask/AutoTask;->getOperationNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_b

    add-int/lit8 v12, v12, 0x1

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v13, v3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "airplane_mode"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    :cond_d
    const-string v4, "mute"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_e
    const-string v4, "gps"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    :cond_f
    const-string v4, "internet"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :cond_10
    const-string v4, "wifi"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    :cond_11
    const-string v4, "synchronization"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    :cond_12
    const-string v4, "vibration"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    :cond_13
    const-string v4, "bluetooth"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    :cond_14
    const-string v4, "auto_brightness"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    :cond_15
    const-string v4, "brightness"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    add-int/lit8 v25, v25, 0x1

    goto :goto_6

    :cond_16
    const-string v4, "auto_clean_memory"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_6

    :cond_17
    move-object v5, v2

    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_18

    move v3, v6

    move-object/from16 v2, v28

    move-object/from16 v0, v33

    goto :goto_8

    :cond_18
    move-object/from16 v2, v28

    move-object/from16 v0, v30

    move-object/from16 v4, v33

    goto/16 :goto_0

    :cond_19
    move-object v0, v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    :goto_8
    invoke-static {v1}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move/from16 v38, v8

    move/from16 v39, v9

    move/from16 v1, v16

    move/from16 v4, v17

    move/from16 v6, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 p0, v23

    move/from16 v34, v24

    move/from16 v35, v25

    move/from16 v36, v26

    move/from16 v37, v27

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object v2, v5

    move/from16 v5, v18

    move/from16 v18, v22

    goto :goto_9

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lmiui/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_1a
    move-object v0, v2

    const-string v5, "none"

    move-object/from16 v16, v0

    move-object/from16 v17, v16

    move-object v2, v5

    const/16 p0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    :goto_9
    const-string v0, "auto_toggle_total"

    invoke-static {v0, v2}, Lhd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v3, :cond_1b

    int-to-long v2, v3

    const-string v0, "auto_num"

    invoke-static {v0, v2, v3}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_1b
    if-lez v7, :cond_1c

    int-to-long v2, v7

    const-string v0, "auto_num_on"

    invoke-static {v0, v2, v3}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_1c
    if-lez v14, :cond_1d

    int-to-long v2, v14

    const-string v0, "auto_num_on_timing"

    invoke-static {v0, v2, v3}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_1d
    if-lez v15, :cond_1e

    int-to-long v2, v15

    const-string v0, "auto_num_on_low_power"

    invoke-static {v0, v2, v3}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_1e
    if-lez v10, :cond_1f

    int-to-long v2, v10

    const-string v0, "auto_num_on_timing_to_timing"

    invoke-static {v0, v2, v3}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_1f
    if-lez v11, :cond_20

    int-to-long v2, v11

    const-string v0, "auto_num_on_single"

    invoke-static {v0, v2, v3}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_20
    if-lez v12, :cond_21

    int-to-long v2, v12

    const-string v0, "auto_num_on_multi"

    invoke-static {v0, v2, v3}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_21
    if-lez v13, :cond_22

    int-to-long v2, v13

    const-string v0, "auto_on_action_num"

    invoke-static {v0, v2, v3}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_22
    if-lez v1, :cond_23

    int-to-long v0, v1

    const-string v2, "auto_on_action_flight_mode"

    invoke-static {v2, v0, v1}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_23
    if-lez v4, :cond_24

    int-to-long v0, v4

    const-string v2, "auto_on_action_mute"

    invoke-static {v2, v0, v1}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_24
    if-lez v5, :cond_25

    int-to-long v0, v5

    const-string v2, "auto_on_action_gps"

    invoke-static {v2, v0, v1}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_25
    if-lez v6, :cond_26

    int-to-long v0, v6

    const-string v2, "auto_on_action_data"

    invoke-static {v2, v0, v1}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_26
    if-lez v8, :cond_27

    int-to-long v0, v8

    const-string v2, "auto_on_action_wlan"

    invoke-static {v2, v0, v1}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_27
    if-lez v9, :cond_28

    int-to-long v0, v9

    const-string v2, "auto_on_action_sync"

    invoke-static {v2, v0, v1}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_28
    if-lez v18, :cond_29

    move/from16 v0, v18

    int-to-long v0, v0

    const-string v2, "auto_on_action_vibrate"

    invoke-static {v2, v0, v1}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_29
    if-lez p0, :cond_2a

    move/from16 v0, p0

    int-to-long v0, v0

    const-string v2, "auto_on_action_bluetooth"

    invoke-static {v2, v0, v1}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_2a
    move/from16 v0, v34

    if-lez v0, :cond_2b

    int-to-long v0, v0

    const-string v2, "auto_on_action_abrightness"

    invoke-static {v2, v0, v1}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_2b
    move/from16 v0, v35

    if-lez v0, :cond_2c

    int-to-long v0, v0

    const-string v2, "auto_on_action_brightness"

    invoke-static {v2, v0, v1}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_2c
    move/from16 v0, v36

    if-lez v0, :cond_2d

    int-to-long v0, v0

    const-string v2, "auto_on_action_ls_cleanram"

    invoke-static {v2, v0, v1}, Lhd/b;->c(Ljava/lang/String;J)V

    :cond_2d
    const-string v0, "auto_toggle_task1"

    move-object/from16 v2, v17

    invoke-static {v0, v2}, Lhd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "auto_toggle_task2"

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lhd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v37

    int-to-long v0, v0

    const-string v2, "auto_toggle_custom"

    invoke-static {v2, v0, v1}, Lhd/b;->e(Ljava/lang/String;J)V

    move/from16 v8, v38

    if-lez v8, :cond_2e

    int-to-long v0, v8

    const-string v2, "auto_custom_num"

    invoke-static {v2, v0, v1}, Lhd/b;->e(Ljava/lang/String;J)V

    :cond_2e
    move/from16 v9, v39

    int-to-long v0, v9

    const-string v2, "auto_custom_on_num"

    invoke-static {v2, v0, v1}, Lhd/b;->e(Ljava/lang/String;J)V

    return-void
.end method
