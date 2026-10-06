.class public Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;
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

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0803d3

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f0803d2

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_auto_brightness_result_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12194f

    goto :goto_0

    :cond_0
    const v0, 0x7f12193c

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a4b

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f0803d4

    return v0
.end method

.method public n()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;->y(Z)V

    return-void
.end method

.method public o()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/autotask/taskitem/AutoBrightnessResultItem;->y(Z)V

    return-void
.end method
