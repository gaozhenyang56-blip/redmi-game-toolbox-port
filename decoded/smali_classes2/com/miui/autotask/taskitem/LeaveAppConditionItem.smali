.class public Lcom/miui/autotask/taskitem/LeaveAppConditionItem;
.super Lcom/miui/autotask/taskitem/LunchAppItem;
.source "SourceFile"


# instance fields
.field private mIsAppGone:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "g"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/LunchAppItem;-><init>()V

    return-void
.end method


# virtual methods
.method public G(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;->mIsAppGone:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_leave_activity_condition_item"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a10

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 8

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    iget-object v0, v0, Lu3/h;->k:Ljava/lang/String;

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v1

    iget-object v1, v1, Lu3/h;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-boolean v2, p0, Lcom/miui/autotask/taskitem/LeaveAppConditionItem;->mIsAppGone:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    return v4

    :cond_1
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v2

    invoke-virtual {v2}, Lu3/h;->v0()Ljava/util/Set;

    move-result-object v2

    move v5, v3

    :goto_0
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LunchAppItem;->B()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LunchAppItem;->B()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    return v4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method protected v()I
    .locals 1

    const v0, 0x7f120315

    return v0
.end method
