.class public Lcom/miui/autotask/taskitem/DarkResultItem;
.super Lcom/miui/autotask/taskitem/SwitchTypeItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;-><init>()V

    return-void
.end method

.method private y(Z)V
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0803df

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f0803de

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_dark_result_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f121951

    goto :goto_0

    :cond_0
    const v0, 0x7f12193e

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a4c

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f0803e0

    return v0
.end method

.method public n()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/autotask/taskitem/DarkResultItem;->y(Z)V

    return-void
.end method

.method public o()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/autotask/taskitem/DarkResultItem;->y(Z)V

    return-void
.end method
