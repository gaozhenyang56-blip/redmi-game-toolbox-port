.class public Lcom/miui/autotask/taskitem/HeadsetConditionItem;
.super Lcom/miui/autotask/taskitem/SwitchTypeItem;
.source "SourceFile"


# static fields
.field private static final HEADSET_INSERT:I = 0x1

.field private static final HEADSET_UNPLUG:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f080406

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f080405

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_headset_condition_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1218a9

    goto :goto_0

    :cond_0
    const v0, 0x7f1218b1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a0c

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f080407

    return v0
.end method

.method public m()Z
    .locals 3

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    iget v0, v0, Lu3/h;->m:I

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    iget v0, v0, Lu3/h;->m:I

    if-nez v0, :cond_1

    :goto_0
    move v1, v2

    :cond_1
    return v1
.end method
