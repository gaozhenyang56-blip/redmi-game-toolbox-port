.class public Lcom/miui/autotask/taskitem/StartActivityConditionItem;
.super Lcom/miui/autotask/taskitem/LunchAppItem;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/LunchAppItem;-><init>()V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_start_activity_condition_item"

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a17

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 3

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    iget-object v0, v0, Lu3/h;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LunchAppItem;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v2

    iget-object v2, v2, Lu3/h;->l:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/LunchAppItem;->B()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v2

    iget-object v2, v2, Lu3/h;->l:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected z()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12035a

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
