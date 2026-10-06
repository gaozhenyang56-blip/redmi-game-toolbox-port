.class public Lcom/miui/autotask/taskitem/BatteryConditionItem;
.super Lcom/miui/autotask/taskitem/TaskItem;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NewAutoTaskManager-battery"


# instance fields
.field private values:[I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "c"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/TaskItem;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0803ca

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f0803c9

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_battery_condition_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/miui/autotask/taskitem/BatteryConditionItem;->values:[I

    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    aget v0, v0, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    aget v0, v0, v4

    :goto_1
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v2, :cond_3

    const v2, 0x7f1218ae

    goto :goto_2

    :cond_3
    const v2, 0x7f1218a6

    :goto_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v4, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_3
    const-string v0, ""

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a05

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f0803cb

    return v0
.end method

.method public l()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/BatteryConditionItem;->v()[I

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/BatteryConditionItem;->v()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 10

    iget-object v0, p0, Lcom/miui/autotask/taskitem/BatteryConditionItem;->values:[I

    const-string v1, "NewAutoTaskManager-battery"

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    array-length v3, v0

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    aget v3, v0, v2

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    const/4 v5, 0x2

    if-eqz v3, :cond_2

    aget v0, v0, v4

    goto :goto_1

    :cond_2
    aget v0, v0, v5

    :goto_1
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isReduce = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", percent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    invoke-static {v7, v8, v6, v9}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v0, "intent == null"

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3
    const/4 v7, -0x1

    const-string v8, "status"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v5, :cond_5

    const/4 v5, 0x5

    if-ne v7, v5, :cond_4

    goto :goto_3

    :cond_4
    move v5, v2

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v4

    :goto_4
    const-string v8, "level"

    invoke-virtual {v6, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isCharging = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", level = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v6, v0, :cond_6

    if-eq v5, v3, :cond_6

    move v2, v4

    :cond_6
    return v2

    :cond_7
    :goto_5
    const-string v0, "values fail"

    goto :goto_2
.end method

.method public v()[I
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/taskitem/BatteryConditionItem;->values:[I

    return-object v0
.end method

.method public w([I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/taskitem/BatteryConditionItem;->values:[I

    return-void
.end method
