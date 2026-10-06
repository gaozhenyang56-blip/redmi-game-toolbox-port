.class public Lcom/miui/autotask/provider/AutoTaskProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/autotask/provider/AutoTaskProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/autotask/provider/AutoTaskProvider;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 17

    const-string v1, "resultCode"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Lcom/miui/autotask/bean/r;

    invoke-direct {v3}, Lcom/miui/autotask/bean/r;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/autotask/bean/r;->H(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v8, p1

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v8

    const v9, 0x7f1210d6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "enable"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "notificationType"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v9}, Lcom/miui/autotask/bean/r;->w(I)V

    invoke-virtual {v3, v10}, Lcom/miui/autotask/bean/r;->C(I)V

    invoke-virtual {v3, v8}, Lcom/miui/autotask/bean/r;->G(Ljava/lang/String;)V

    const-string v8, "taskConditions"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "taskItem"

    const-string v13, "taskItemKey"

    if-ge v10, v11, :cond_1

    :try_start_1
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "key_custom_time_condition_item"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-class v12, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;

    invoke-virtual {v0, v11, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;

    new-instance v12, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-direct {v12}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;-><init>()V

    invoke-virtual {v12, v4}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->getTimeType()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->G(I)V

    invoke-virtual {v11}, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->getExcludeTime()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->D(I)V

    invoke-virtual {v11}, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->getStartTime()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->F(I)V

    invoke-virtual {v11}, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->getEndTime()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->C(I)V

    invoke-virtual {v11}, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->getRepeatType()I

    move-result v13

    invoke-virtual {v11}, Lcom/miui/autotask/xiaoai/XiaoaiCustomTimeCondition;->getWeekDays()Ljava/util/List;

    move-result-object v11

    invoke-static {v13, v11}, Lw3/a;->b(ILjava/util/List;)Lcom/miui/powercenter/bootshutdown/DaysOfWeek;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;->E(Lcom/miui/powercenter/bootshutdown/DaysOfWeek;)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v5}, Lcom/miui/autotask/bean/r;->v(Ljava/util/List;)V

    const-string v5, "taskActions"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_13

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v10, "taskItemType"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const/16 v15, 0xa

    if-ne v15, v10, :cond_3

    const-string v10, "switchValue"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11}, La4/f2;->h(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lcom/miui/autotask/taskitem/TaskItem;

    instance-of v8, v14, Lcom/miui/autotask/taskitem/SwitchTypeItem;

    if-eqz v8, :cond_2

    move-object v8, v14

    check-cast v8, Lcom/miui/autotask/taskitem/SwitchTypeItem;

    invoke-virtual {v8, v10}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->x(Z)V

    :cond_2
    :goto_2
    const/16 v16, 0x0

    goto/16 :goto_9

    :cond_3
    const/16 v15, 0xb

    if-ne v15, v10, :cond_d

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v15, -0x779afee0

    const/4 v9, 0x2

    const/4 v14, 0x1

    if-eq v10, v15, :cond_6

    const v15, -0xc7e1fd3

    if-eq v10, v15, :cond_5

    const v15, 0x5a1b125a

    if-eq v10, v15, :cond_4

    goto :goto_3

    :cond_4
    const-string v10, "key_screen_brightness_result_item"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v10, v14

    goto :goto_4

    :cond_5
    const-string v10, "key_typeface_result_item"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v10, v9

    goto :goto_4

    :cond_6
    const-string v10, "key_adjust_volume_result_item"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v10, -0x1

    :goto_4
    if-eqz v10, :cond_c

    if-eq v10, v14, :cond_b

    if-eq v10, v9, :cond_8

    const/4 v14, 0x0

    goto :goto_2

    :cond_8
    const-string v10, "fontSize"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "fontWeight"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v15, -0x1

    if-ne v10, v15, :cond_9

    invoke-static {}, La4/e;->a()I

    move-result v10

    goto :goto_5

    :cond_9
    add-int/lit8 v10, v10, -0x1

    invoke-static {v10}, La4/e2;->G0(I)I

    move-result v10

    :goto_5
    if-ne v8, v15, :cond_a

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v8

    invoke-static {v8}, La4/e;->c(Landroid/content/Context;)I

    move-result v8

    :cond_a
    new-instance v11, Lcom/miui/autotask/taskitem/TypefaceResultItem;

    invoke-direct {v11}, Lcom/miui/autotask/taskitem/TypefaceResultItem;-><init>()V

    new-array v9, v9, [I

    const/16 v16, 0x0

    aput v10, v9, v16

    aput v8, v9, v14

    invoke-virtual {v11, v9}, Lcom/miui/autotask/taskitem/TypefaceResultItem;->w([I)V

    move-object v14, v11

    goto :goto_9

    :cond_b
    const/16 v16, 0x0

    const-string v9, "brightness"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;

    invoke-direct {v9}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;-><init>()V

    invoke-virtual {v9, v8}, Lcom/miui/autotask/taskitem/ScreenBrightnessResultItem;->y(I)V

    invoke-virtual {v9, v4}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    move-object v14, v9

    goto :goto_9

    :cond_c
    const/16 v16, 0x0

    invoke-static {v8}, Lw3/a;->a(Lorg/json/JSONObject;)Lcom/miui/autotask/taskitem/AdjustVolumeResultItem;

    move-result-object v8

    move-object v14, v8

    goto :goto_9

    :cond_d
    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v9, 0xc

    if-ne v9, v10, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0xb676c56

    if-eq v9, v10, :cond_e

    goto :goto_6

    :cond_e
    const-string v9, "key_lock_screen_result_item"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    move/from16 v14, v16

    goto :goto_7

    :cond_f
    :goto_6
    move v14, v15

    :goto_7
    if-eqz v14, :cond_10

    goto :goto_8

    :cond_10
    const-string v9, "lockScreenTime"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    new-instance v14, Lcom/miui/autotask/taskitem/LockScreenResultItem;

    invoke-direct {v14}, Lcom/miui/autotask/taskitem/LockScreenResultItem;-><init>()V

    invoke-virtual {v14, v8}, Lcom/miui/autotask/taskitem/LockScreenItem;->z(I)V

    goto :goto_9

    :cond_11
    :goto_8
    const/4 v14, 0x0

    :goto_9
    if-eqz v14, :cond_12

    invoke-virtual {v14, v4}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v3, v6}, Lcom/miui/autotask/bean/r;->u(Ljava/util/List;)V

    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lu3/c;->X(Lcom/miui/autotask/bean/r;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/miui/ai/service/OperationListCollectService;->u(Landroid/content/Context;Ljava/io/Serializable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0xc8

    :goto_a
    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :catch_0
    move-exception v0

    sget-object v3, Lcom/miui/autotask/provider/AutoTaskProvider;->a:Ljava/lang/String;

    const-string v4, "JSONException = "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x190

    goto :goto_a
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p3, "add_auto_task"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/autotask/provider/AutoTaskProvider;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "arg="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/miui/autotask/provider/AutoTaskProvider;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
