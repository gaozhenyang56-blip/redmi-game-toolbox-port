.class public Lcom/miui/autotask/taskitem/LockScreenResultItem;
.super Lcom/miui/autotask/taskitem/LockScreenItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/LockScreenItem;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_lock_screen_result_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LockScreenItem;->w()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120316

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10013b

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LockScreenItem;->w()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LockScreenItem;->w()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a54

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LockScreenItem;->w()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->lockNow()V

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LockScreenItem;->x()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/TaskItem;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lu3/h;->r(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method
