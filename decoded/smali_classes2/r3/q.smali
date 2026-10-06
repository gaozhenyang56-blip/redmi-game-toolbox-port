.class public Lr3/q;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/q$a;,
        Lr3/q$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lr3/q$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/autotask/taskitem/TaskItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lr3/q$a;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/autotask/taskitem/TaskItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr3/q;->c:Z

    iput-boolean v0, p0, Lr3/q;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr3/q;->e:Z

    iput-object p1, p0, Lr3/q;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic k(Lcom/miui/autotask/taskitem/TaskItem;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lr3/q;->m(Lcom/miui/autotask/taskitem/TaskItem;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic l(Lr3/q;)Lr3/q$a;
    .locals 0

    iget-object p0, p0, Lr3/q;->b:Lr3/q$a;

    return-object p0
.end method

.method private static synthetic m(Lcom/miui/autotask/taskitem/TaskItem;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/miui/autotask/taskitem/TaskItem;->q(Z)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lr3/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public n(Lr3/q$b;I)V
    .locals 5
    .param p1    # Lr3/q$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lr3/q;->a:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lr3/q;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-static {p1}, Lr3/q$b;->c(Lr3/q$b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p1}, Lr3/q$b;->d(Lr3/q$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {p1}, Lr3/q$b;->e(Lr3/q$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lr3/q$b;->e(Lr3/q$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lr3/q$b;->e(Lr3/q$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lr3/q$b;->e(Lr3/q$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->l()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f060dbc

    goto :goto_0

    :cond_2
    const v4, 0x7f060db5

    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-static {p1}, Lr3/q$b;->f(Lr3/q$b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lr3/q;->c:Z

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lr3/q$b;->g(Lr3/q$b;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lr3/q;->c:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lr3/q;->d:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lr3/q;->e:Z

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lr3/q$b;->h(Lr3/q$b;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-boolean v1, p0, Lr3/q;->e:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lr3/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lr3/q$b;->h(Lr3/q$b;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {p1}, Lr3/q$b;->h(Lr3/q$b;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/autotask/taskitem/TaskItem;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-static {p1}, Lr3/q$b;->h(Lr3/q$b;)Landroid/widget/CheckBox;

    move-result-object p1

    new-instance v0, Lr3/p;

    invoke-direct {v0, p2}, Lr3/p;-><init>(Lcom/miui/autotask/taskitem/TaskItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public o(Landroid/view/ViewGroup;I)Lr3/q$b;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e02ab

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr3/q$b;

    invoke-direct {p2, p0, p1}, Lr3/q$b;-><init>(Lr3/q;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lr3/q$b;

    invoke-virtual {p0, p1, p2}, Lr3/q;->n(Lr3/q$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lr3/q;->o(Landroid/view/ViewGroup;I)Lr3/q$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Z)V
    .locals 0

    iput-boolean p1, p0, Lr3/q;->d:Z

    return-void
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lr3/q;->c:Z

    return-void
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Lr3/q;->e:Z

    return-void
.end method

.method public s(Lr3/q$a;)V
    .locals 0

    iput-object p1, p0, Lr3/q;->b:Lr3/q$a;

    return-void
.end method
