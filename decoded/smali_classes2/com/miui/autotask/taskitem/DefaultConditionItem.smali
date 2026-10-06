.class public Lcom/miui/autotask/taskitem/DefaultConditionItem;
.super Lcom/miui/autotask/taskitem/DefaultTaskItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/DefaultTaskItem;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_condition_list"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/DefaultTaskItem;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12063d

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/DefaultTaskItem;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12063e

    goto :goto_0

    :cond_0
    const v0, 0x7f12063f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
