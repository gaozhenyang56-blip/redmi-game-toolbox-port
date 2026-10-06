.class public Lcom/miui/autotask/taskitem/LeaveConditionItem;
.super Lcom/miui/autotask/taskitem/AddressTaskItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/AddressTaskItem;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f08040f

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f08040e

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_leave_condition_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f120352

    invoke-virtual {p0, v1}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/AddressTaskItem;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a0f

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f080410

    return v0
.end method

.method public y()I
    .locals 1

    const/16 v0, 0x414

    return v0
.end method
