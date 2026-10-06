.class public Lcom/miui/autotask/taskitem/AbsorbedConditionItem;
.super Lcom/miui/autotask/taskitem/SwitchTypeItem;
.source "SourceFile"


# static fields
.field private static final KEY_FOCUS_MODE:Ljava/lang/String; = "settings_focus_mode_status"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0803bf

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f0803be

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_absorbed_condition_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1218ac

    goto :goto_0

    :cond_0
    const v0, 0x7f1218a7

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a03

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f0803c0

    return v0
.end method

.method public m()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "settings_focus_mode_status"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v3

    if-ne v1, v3, :cond_1

    move v0, v2

    :catch_0
    :cond_1
    return v0
.end method
