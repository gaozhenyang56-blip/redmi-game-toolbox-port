.class public Lr3/f;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/f$a;,
        Lr3/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Lr3/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lr3/f$a;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/r;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lr3/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/r;",
            ">;",
            "Lr3/f$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr3/f;->c:Z

    iput-object p1, p0, Lr3/f;->b:Ljava/util/List;

    iput-object p2, p0, Lr3/f;->a:Lr3/f$a;

    return-void
.end method

.method public static synthetic k(Lr3/f;Lr3/f$b;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lr3/f;->o(Lr3/f$b;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic l(Lr3/f;Lr3/f$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr3/f;->n(Lr3/f$b;Landroid/view/View;)V

    return-void
.end method

.method private synthetic n(Lr3/f$b;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lr3/f;->a:Lr3/f$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p1

    invoke-interface {v0, p2, p1}, Lr3/f$a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private synthetic o(Lr3/f$b;Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p2, p0, Lr3/f;->a:Lr3/f$a;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p1

    invoke-interface {p2, p3, p1}, Lr3/f$a;->b(ZI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lr3/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 0

    return p1
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lr3/f;->c:Z

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lr3/f$b;

    invoke-virtual {p0, p1, p2}, Lr3/f;->p(Lr3/f$b;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lr3/f;->q(Landroid/view/ViewGroup;I)Lr3/f$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Lr3/f$b;I)V
    .locals 5
    .param p1    # Lr3/f$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object v0, p0, Lr3/f;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/autotask/bean/r;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lr3/f;->m()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lr3/f$b;->d:Lcom/miui/common/ui/HoverSlidingSwitch;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lr3/f$b;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lr3/f$b;->d:Lcom/miui/common/ui/HoverSlidingSwitch;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lr3/f$b;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/miui/autotask/bean/r;->o()Z

    move-result v1

    invoke-virtual {p2}, Lcom/miui/autotask/bean/r;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/autotask/taskitem/TaskItem;

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->c()I

    move-result v4

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->b()I

    move-result v4

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const v3, 0x7f080411

    goto :goto_3

    :cond_4
    const v3, 0x7f080412

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/miui/autotask/bean/r;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/autotask/taskitem/TaskItem;

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->c()I

    move-result v4

    goto :goto_5

    :cond_5
    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->b()I

    move-result v4

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance v3, Lr3/a0;

    invoke-direct {v3, v0}, Lr3/a0;-><init>(Ljava/util/List;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p1, Lr3/f$b;->a:Lcom/miui/autotask/view/TaskRecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v2, p1, Lr3/f$b;->a:Lcom/miui/autotask/view/TaskRecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p1, Lr3/f$b;->a:Lcom/miui/autotask/view/TaskRecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v0, p1, Lr3/f$b;->e:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Lcom/miui/autotask/bean/r;->s()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p1, Lr3/f$b;->d:Lcom/miui/common/ui/HoverSlidingSwitch;

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setChecked(Z)V

    iget-object v0, p1, Lr3/f$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/autotask/bean/r;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lr3/f$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/autotask/bean/r;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lr3/f$b;->a:Lcom/miui/autotask/view/TaskRecyclerView;

    new-instance v0, Lr3/d;

    invoke-direct {v0, p0, p1}, Lr3/d;-><init>(Lr3/f;Lr3/f$b;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lr3/f$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p2, p1, Lr3/f$b;->c:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p2, p1, Lr3/f$b;->d:Lcom/miui/common/ui/HoverSlidingSwitch;

    new-instance v0, Lr3/e;

    invoke-direct {v0, p0, p1}, Lr3/e;-><init>(Lr3/f;Lr3/f$b;)V

    invoke-virtual {p2, v0}, Lmiuix/slidingwidget/widget/SlidingSwitch;->setOnPerformCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public q(Landroid/view/ViewGroup;I)Lr3/f$b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e02e6

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr3/f$b;

    iget-object v0, p0, Lr3/f;->a:Lr3/f$a;

    invoke-direct {p2, p1, v0}, Lr3/f$b;-><init>(Landroid/view/View;Lr3/f$a;)V

    return-object p2
.end method

.method public r(Z)V
    .locals 0

    iput-boolean p1, p0, Lr3/f;->c:Z

    return-void
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method
