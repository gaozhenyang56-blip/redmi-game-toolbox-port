.class public Lcom/miui/autotask/activity/NewDefaultTaskActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/autotask/bean/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/c;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lr3/o;

.field private f:Lt3/d;

.field private g:I

.field private h:Lmiuix/appcompat/app/ActionBar;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/miui/autotask/view/RecyclerViewPreference$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->d:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->g:I

    new-instance v0, Lcom/miui/autotask/activity/n;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/n;-><init>(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)V

    iput-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->n:Lcom/miui/autotask/view/RecyclerViewPreference$c;

    return-void
.end method

.method private A0(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "defaultTaskType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->j:Ljava/lang/String;

    invoke-static {v0}, La4/f2;->q(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/z;->V(Z)V

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "EnableExitCondition"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->k:Z

    :try_start_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    :cond_3
    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    new-instance p1, Lcom/miui/autotask/bean/k;

    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->j:Ljava/lang/String;

    invoke-static {v2}, La4/f2;->n(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->i:Ljava/lang/String;

    invoke-direct {p1, v2, v3}, Lcom/miui/autotask/bean/k;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/miui/autotask/bean/h;

    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->j:Ljava/lang/String;

    invoke-static {v3}, La4/f2;->p(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/miui/autotask/bean/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/miui/autotask/bean/g;

    const v2, 0x7f1202f0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/miui/autotask/bean/g;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->j:Ljava/lang/String;

    invoke-static {p1}, La4/f2;->m(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/taskitem/TaskItem;

    iget-object v3, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    new-instance v4, Lcom/miui/autotask/bean/d;

    invoke-direct {v4, v2}, Lcom/miui/autotask/bean/d;-><init>(Lcom/miui/autotask/taskitem/TaskItem;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/miui/autotask/bean/g;

    const v2, 0x7f1202ef

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/miui/autotask/bean/g;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->j:Ljava/lang/String;

    invoke-static {p1}, La4/f2;->l(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/taskitem/TaskItem;

    iget-object v3, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    new-instance v4, Lcom/miui/autotask/bean/i;

    invoke-direct {v4, v2}, Lcom/miui/autotask/bean/i;-><init>(Lcom/miui/autotask/taskitem/TaskItem;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    new-instance v2, Lcom/miui/autotask/bean/i;

    new-instance v3, Lcom/miui/autotask/taskitem/DefaultResultItem;

    invoke-direct {v3}, Lcom/miui/autotask/taskitem/DefaultResultItem;-><init>()V

    invoke-direct {v2, v3}, Lcom/miui/autotask/bean/i;-><init>(Lcom/miui/autotask/taskitem/TaskItem;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->j:Ljava/lang/String;

    invoke-static {p1}, La4/f2;->u(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iput-boolean v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->k:Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v2, v1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/autotask/bean/c;

    invoke-virtual {v3}, Lcom/miui/autotask/bean/c;->a()I

    move-result v4

    const/16 v5, 0xe4

    if-eq v4, v5, :cond_7

    const/16 v5, 0xe5

    if-eq v4, v5, :cond_6

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    check-cast v3, Lcom/miui/autotask/bean/j;

    invoke-virtual {v3}, Lcom/miui/autotask/bean/j;->c()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->m:Z

    invoke-virtual {v3}, Lcom/miui/autotask/bean/j;->b()Z

    move-result v2

    iget-object v4, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->d:Ljava/util/List;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    new-instance p1, Lr3/o;

    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v2}, Lr3/o;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->e:Lr3/o;

    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance p1, Lt3/d;

    new-array v0, v0, [I

    const/16 v2, 0xe0

    aput v2, v0, v1

    invoke-direct {p1, p0, v0}, Lt3/d;-><init>(Landroid/content/Context;[I)V

    iput-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->f:Lt3/d;

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    invoke-direct {p0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->I0()V

    return-void
.end method

.method private B0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->a:Landroid/widget/Button;

    new-instance v1, Lcom/miui/autotask/activity/m;

    invoke-direct {v1, p0}, Lcom/miui/autotask/activity/m;-><init>(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/miui/autotask/activity/NewDefaultTaskActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity$a;-><init>(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->e:Lr3/o;

    new-instance v1, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity$b;-><init>(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)V

    invoke-virtual {v0, v1}, Lr3/o;->E(Lr3/o$a;)V

    return-void
.end method

.method private C0()I
    .locals 4

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/bean/c;

    instance-of v3, v2, Lcom/miui/autotask/bean/d;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/miui/autotask/bean/d;

    invoke-virtual {v3}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/autotask/taskitem/TaskItem;->l()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    instance-of v3, v2, Lcom/miui/autotask/bean/i;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/miui/autotask/bean/i;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autotask/taskitem/TaskItem;->l()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, -0x2

    return v0

    :cond_2
    return v1
.end method

.method private synthetic D0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->F0()V

    return-void
.end method

.method private synthetic E0(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->e:Lr3/o;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/bean/c;

    instance-of v0, p1, Lcom/miui/autotask/bean/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/autotask/bean/d;

    invoke-virtual {p1}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->s0(Lcom/miui/autotask/taskitem/TaskItem;)V

    :cond_0
    return-void
.end method

.method private F0()V
    .locals 10

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/autotask/bean/c;

    instance-of v9, v7, Lcom/miui/autotask/bean/h;

    if-eqz v9, :cond_1

    check-cast v7, Lcom/miui/autotask/bean/h;

    invoke-virtual {v7}, Lcom/miui/autotask/bean/h;->c()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    instance-of v9, v7, Lcom/miui/autotask/bean/d;

    if-eqz v9, :cond_3

    check-cast v7, Lcom/miui/autotask/bean/d;

    invoke-virtual {v7}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v7, v0}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    instance-of v9, v7, Lcom/miui/autotask/bean/i;

    if-eqz v9, :cond_5

    check-cast v7, Lcom/miui/autotask/bean/i;

    invoke-virtual {v7}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v7

    if-eqz v7, :cond_0

    instance-of v8, v7, Lcom/miui/autotask/taskitem/DefaultResultItem;

    if-eqz v8, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v7, v0}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    instance-of v9, v7, Lcom/miui/autotask/bean/e;

    if-eqz v9, :cond_7

    check-cast v7, Lcom/miui/autotask/bean/e;

    invoke-virtual {v7}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v7

    if-nez v7, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {v7, v0}, Lcom/miui/autotask/taskitem/TaskItem;->u(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/miui/autotask/taskitem/TaskItem;->q(Z)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    instance-of v8, v7, Lcom/miui/autotask/bean/j;

    if-eqz v8, :cond_0

    check-cast v7, Lcom/miui/autotask/bean/j;

    invoke-virtual {v7}, Lcom/miui/autotask/bean/j;->b()Z

    move-result v6

    goto :goto_0

    :cond_8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    return-void

    :cond_9
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    return-void

    :cond_a
    new-instance v4, Lcom/miui/autotask/bean/r;

    invoke-direct {v4}, Lcom/miui/autotask/bean/r;-><init>()V

    invoke-virtual {v4, v0}, Lcom/miui/autotask/bean/r;->H(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v5, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->i:Ljava/lang/String;

    :cond_b
    invoke-virtual {v4, v5}, Lcom/miui/autotask/bean/r;->G(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/miui/autotask/bean/r;->v(Ljava/util/List;)V

    invoke-virtual {v4, v2}, Lcom/miui/autotask/bean/r;->u(Ljava/util/List;)V

    invoke-virtual {v4, v8}, Lcom/miui/autotask/bean/r;->x(Z)V

    if-eqz v6, :cond_c

    invoke-virtual {v4, v8}, Lcom/miui/autotask/bean/r;->z(Z)V

    const/4 v0, 0x5

    goto :goto_1

    :cond_c
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/miui/autotask/bean/r;->C(I)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4, v3}, Lcom/miui/autotask/bean/r;->A(Ljava/util/List;)V

    :cond_d
    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    invoke-virtual {v0, v4}, Lu3/c;->X(Lcom/miui/autotask/bean/r;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/miui/ai/service/OperationListCollectService;->u(Landroid/content/Context;Ljava/io/Serializable;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "taskBean"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->j:Ljava/lang/String;

    invoke-static {v0}, Lhd/a;->t(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private G0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->h:Lmiuix/appcompat/app/ActionBar;

    iget-object v1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static H0(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "defaultTaskType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private I0()V
    .locals 6

    invoke-direct {p0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->C0()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    move v1, v2

    :cond_1
    iget-boolean v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->k:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->m:Z

    if-eq v0, v1, :cond_3

    iput-boolean v1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->m:Z

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/bean/c;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/c;->a()I

    move-result v4

    const/16 v5, 0xe4

    if-ne v4, v5, :cond_2

    check-cast v2, Lcom/miui/autotask/bean/j;

    invoke-virtual {v2, v1}, Lcom/miui/autotask/bean/j;->e(Z)V

    iget-object v1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->e:Lr3/o;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq v3, v0, :cond_5

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->a:Landroid/widget/Button;

    if-eqz v3, :cond_4

    const v1, 0x7f060db6

    goto :goto_3

    :cond_4
    const v1, 0x7f060db7

    :goto_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    return-void
.end method

.method public static synthetic d0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->E0(I)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->D0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Lmiuix/appcompat/app/ActionBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->h:Lmiuix/appcompat/app/ActionBar;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->k:Z

    return p0
.end method

.method static synthetic i0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->l:Z

    return p1
.end method

.method static synthetic j0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->z0()V

    return-void
.end method

.method static synthetic l0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->G0()V

    return-void
.end method

.method static synthetic n0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->x0(I)V

    return-void
.end method

.method static synthetic o0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->y0(I)V

    return-void
.end method

.method static synthetic p0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->I0()V

    return-void
.end method

.method static synthetic r0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Lr3/o;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->e:Lr3/o;

    return-object p0
.end method

.method private s0(Lcom/miui/autotask/taskitem/TaskItem;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->k:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/bean/c;

    check-cast v2, Lcom/miui/autotask/bean/e;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->l:Z

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, La4/f2;->e(Lcom/miui/autotask/taskitem/TaskItem;Ljava/util/List;)I

    move-result p1

    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->n:Lcom/miui/autotask/view/RecyclerViewPreference$c;

    iget-object v1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-interface {v0, p1}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    goto :goto_1

    :cond_1
    invoke-static {p1, v0}, La4/f2;->e(Lcom/miui/autotask/taskitem/TaskItem;Ljava/util/List;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private t0(I)I
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/bean/c;

    invoke-virtual {v1}, Lcom/miui/autotask/bean/c;->a()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private u0()V
    .locals 1

    const v0, 0x7f0b0b2d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->a:Landroid/widget/Button;

    const v0, 0x7f0b05c2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private v0(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/bean/c;

    instance-of v3, v2, Lcom/miui/autotask/bean/d;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/miui/autotask/bean/d;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private w0(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/bean/c;

    instance-of v3, v2, Lcom/miui/autotask/bean/i;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/miui/autotask/bean/i;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private x0(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/c;

    instance-of v1, v0, Lcom/miui/autotask/bean/d;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/miui/autotask/bean/e;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/autotask/bean/e;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/autotask/taskitem/BatteryConditionItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->n:Lcom/miui/autotask/view/RecyclerViewPreference$c;

    invoke-static {p0, v0, v1, p1}, La4/e2;->E0(Landroid/content/Context;Lcom/miui/autotask/taskitem/TaskItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    :cond_0
    return-void

    :cond_1
    iput p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->g:I

    check-cast v0, Lcom/miui/autotask/bean/d;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    const/16 v2, 0x68

    if-eqz v1, :cond_2

    check-cast v0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-static {p0, v0, v2}, Lcom/miui/autotask/activity/AddTimeConditionActivity;->l0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/CustomTimeConditionItem;I)V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lcom/miui/autotask/taskitem/LunchAppItem;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/miui/autotask/taskitem/LunchAppItem;

    invoke-static {p0, v0, v2}, Lcom/miui/autotask/activity/SelectAppActivity;->u0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/LunchAppItem;I)V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v2, v0}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->I0(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    instance-of v1, v0, Lcom/miui/autotask/taskitem/DefaultTaskItem;

    if-eqz v1, :cond_6

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->v0(I)Ljava/util/ArrayList;

    move-result-object p1

    const-class v1, Lcom/miui/autotask/activity/AddConditionActivity;

    invoke-static {p0, p1, v0, v2, v1}, Lcom/miui/autotask/activity/AddBaseActivity;->f0(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/autotask/taskitem/TaskItem;ILjava/lang/Class;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->n:Lcom/miui/autotask/view/RecyclerViewPreference$c;

    invoke-static {p0, v0, v1, p1}, La4/e2;->E0(Landroid/content/Context;Lcom/miui/autotask/taskitem/TaskItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    :goto_1
    return-void
.end method

.method private y0(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/c;

    instance-of v1, v0, Lcom/miui/autotask/bean/i;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->g:I

    check-cast v0, Lcom/miui/autotask/bean/i;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/f;->b()Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/autotask/taskitem/LunchAppItem;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/autotask/taskitem/LunchAppItem;

    const/16 p1, 0x69

    invoke-static {p0, v0, p1}, Lcom/miui/autotask/activity/SelectAppActivity;->u0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/LunchAppItem;I)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/miui/autotask/taskitem/DefaultTaskItem;

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->w0(I)Ljava/util/ArrayList;

    move-result-object p1

    const/16 v1, 0x67

    const-class v2, Lcom/miui/autotask/activity/AddResultActivity;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/miui/autotask/activity/AddBaseActivity;->f0(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/miui/autotask/taskitem/TaskItem;ILjava/lang/Class;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->e:Lr3/o;

    invoke-static {p0, v0, v1, p1}, La4/e2;->F0(Landroid/content/Context;Lcom/miui/autotask/taskitem/TaskItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    :goto_0
    return-void
.end method

.method private z0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->h:Lmiuix/appcompat/app/ActionBar;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eqz p3, :cond_6

    if-eq p2, v0, :cond_0

    goto :goto_2

    :cond_0
    iget p2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->g:I

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    const-string p2, "taskItem"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    instance-of p3, p2, Lcom/miui/autotask/taskitem/TaskItem;

    if-nez p3, :cond_2

    return-void

    :cond_2
    check-cast p2, Lcom/miui/autotask/taskitem/TaskItem;

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    iget p3, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->g:I

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/bean/c;

    instance-of p3, p1, Lcom/miui/autotask/bean/f;

    if-eqz p3, :cond_5

    check-cast p1, Lcom/miui/autotask/bean/f;

    invoke-virtual {p1, p2}, Lcom/miui/autotask/bean/f;->c(Lcom/miui/autotask/taskitem/TaskItem;)V

    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->n:Lcom/miui/autotask/view/RecyclerViewPreference$c;

    iget p2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->g:I

    invoke-interface {p1, p2}, Lcom/miui/autotask/view/RecyclerViewPreference$c;->a(I)V

    goto :goto_1

    :pswitch_1
    iget-boolean p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->k:Z

    if-eqz p1, :cond_3

    const/16 p1, 0xe3

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->t0(I)I

    move-result p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-gez p1, :cond_4

    return-void

    :cond_4
    new-instance p3, Lcom/miui/autotask/bean/i;

    invoke-direct {p3, p2}, Lcom/miui/autotask/bean/i;-><init>(Lcom/miui/autotask/taskitem/TaskItem;)V

    iget-object p2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->e:Lr3/o;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_5
    :goto_1
    iput v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->g:I

    invoke-direct {p0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->I0()V

    return-void

    :cond_6
    :goto_2
    iput v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->g:I

    return-void

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->h:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/autotask/activity/NewDefaultTaskActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity$1;-><init>(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setActionBarStrategy(Lmiuix/appcompat/app/strategy/IActionBarStrategy;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->h:Lmiuix/appcompat/app/ActionBar;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->u0()V

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->A0(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->B0()V

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onExtraPaddingChanged(I)V

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->f:Lt3/d;

    iget-object v1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, v1}, Lt3/d;->y(ILandroidx/recyclerview/widget/RecyclerView;)I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->c:Ljava/util/ArrayList;

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-boolean v0, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->k:Z

    const-string v1, "EnableExitCondition"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
