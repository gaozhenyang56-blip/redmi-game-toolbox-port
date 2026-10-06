.class public Lfb/a;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/optimizemanage/view/StateCheckBox$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfb/a$b;,
        Lfb/a$a;,
        Lfb/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/miui/optimizemanage/view/StateCheckBox$b;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljb/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lfb/a$b;

.field private d:Ljb/i;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljb/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lfb/a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfb/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic k(Lfb/a;)Ljb/i;
    .locals 0

    iget-object p0, p0, Lfb/a;->d:Ljb/i;

    return-object p0
.end method

.method static synthetic l(Lfb/a;Z)I
    .locals 0

    invoke-direct {p0, p1}, Lfb/a;->r(Z)I

    move-result p0

    return p0
.end method

.method private r(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f080dc5

    goto :goto_0

    :cond_0
    const p1, 0x7f080dc4

    :goto_0
    return p1
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfb/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lfb/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lfb/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljb/b;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public h(Landroid/view/View;Lcom/miui/optimizemanage/view/StateCheckBox$c;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/miui/optimizemanage/view/StateCheckBox$c;->c:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x0

    instance-of v1, p1, Lfb/a$c;

    if-eqz v1, :cond_1

    check-cast p1, Lfb/a$c;

    iget p1, p1, Lfb/a$c;->g:I

    invoke-virtual {p0, p1}, Lfb/a;->p(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Ljb/b;

    invoke-virtual {v0, p2}, Ljb/b;->j(Z)V

    goto :goto_1

    :cond_1
    check-cast p1, Lfb/a$a;

    iget v1, p1, Lfb/a$a;->e:I

    iget p1, p1, Lfb/a$a;->f:I

    invoke-virtual {p0, v1, p1}, Lfb/a;->o(II)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v0, p1

    check-cast v0, Ljb/f;

    iput-boolean p2, v0, Ljb/f;->m:Z

    :goto_1
    move-object v0, p1

    :cond_2
    iget-object p1, p0, Lfb/a;->c:Lfb/a$b;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Lfb/a$b;->n(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public m(I)V
    .locals 3

    iget-object v0, p0, Lfb/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Ljb/b;

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Ljb/b;

    invoke-virtual {v0}, Ljb/b;->i()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lfb/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0}, Ljb/b;->b()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljb/b;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljb/b;->l(Z)V

    iget-object v0, p0, Lfb/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeRemoved(II)V

    :cond_3
    return-void
.end method

.method public n(I)V
    .locals 3

    iget-object v0, p0, Lfb/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Ljb/b;

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Ljb/b;

    invoke-virtual {v0}, Ljb/b;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lfb/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0}, Ljb/b;->b()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljb/b;->d()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljb/b;->l(Z)V

    iget-object v0, p0, Lfb/a;->b:Ljava/util/List;

    add-int/lit8 v2, p1, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeInserted(II)V

    :cond_3
    return-void
.end method

.method public o(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfb/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljb/b;

    invoke-virtual {p1}, Ljb/b;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljb/b;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lfb/a;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfb/a;->a:Ljava/util/List;

    iget-object v1, p0, Lfb/a;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    check-cast p1, Lfb/a$c;

    invoke-virtual {p1, p2}, Lfb/a$c;->a(I)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lfb/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lfb/a;->b:Ljava/util/List;

    iget-object v3, p0, Lfb/a;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-le v1, p2, :cond_1

    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_1
    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lfb/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :cond_3
    invoke-virtual {p0, v1}, Lfb/a;->p(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb/b;

    iget-object v2, p0, Lfb/a;->b:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljb/f;

    invoke-virtual {v0, p2}, Ljb/b;->c(Ljb/f;)I

    move-result p2

    check-cast p1, Lfb/a$a;

    invoke-virtual {p1, v1, p2}, Lfb/a$a;->b(II)V

    :goto_2
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$c0;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, p1, Lfb/a$a;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "check_state_change"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    :goto_0
    iget-object p3, p0, Lfb/a;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v1, -0x1

    if-ge v0, p3, :cond_1

    iget-object p3, p0, Lfb/a;->b:Ljava/util/List;

    iget-object v2, p0, Lfb/a;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p3

    if-le p3, p2, :cond_0

    add-int/lit8 p3, v0, -0x1

    if-ltz p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_1
    if-ne p3, v1, :cond_2

    iget-object p3, p0, Lfb/a;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :cond_2
    invoke-virtual {p0, p3}, Lfb/a;->p(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb/b;

    iget-object v1, p0, Lfb/a;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljb/f;

    invoke-virtual {v0, p2}, Ljb/b;->c(Ljb/f;)I

    move-result p2

    check-cast p1, Lfb/a$a;

    invoke-virtual {p1, p3, p2}, Lfb/a$a;->a(II)V

    return-void

    :cond_3
    invoke-virtual {p0, p1, p2}, Lfb/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lfb/a$c;

    if-eqz v0, :cond_2

    check-cast p1, Lfb/a$c;

    iget v0, p1, Lfb/a$c;->g:I

    invoke-virtual {p0, v0}, Lfb/a;->p(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast v0, Ljb/b;

    iget-object v1, p0, Lfb/a;->c:Lfb/a$b;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljb/b;->b()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lfb/a;->d:Ljb/i;

    sget-object v1, Ljb/i;->c:Ljb/i;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lfb/a;->c:Lfb/a$b;

    iget p1, p1, Lfb/a$c;->g:I

    invoke-interface {v0, p1}, Lfb/a$b;->r(I)V

    goto :goto_0

    :cond_2
    check-cast p1, Lfb/a$a;

    const/4 v0, -0x1

    iget v1, p1, Lfb/a$a;->e:I

    invoke-virtual {p0, v1}, Lfb/a;->p(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    check-cast v1, Ljb/b;

    invoke-virtual {v1}, Ljb/b;->h()Ljb/j;

    move-result-object v1

    sget-object v2, Ljb/j;->c:Ljb/j;

    if-ne v1, v2, :cond_4

    return-void

    :cond_4
    iget v1, p1, Lfb/a$a;->e:I

    iget p1, p1, Lfb/a$a;->f:I

    invoke-virtual {p0, v1, p1}, Lfb/a;->o(II)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1}, Lfb/a;->s(Ljava/lang/Object;)I

    move-result v0

    check-cast p1, Ljb/f;

    iget-boolean v1, p1, Ljb/f;->m:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p1, Ljb/f;->m:Z

    :cond_5
    iget-object p1, p0, Lfb/a;->c:Lfb/a$b;

    if-eqz p1, :cond_6

    iget-object v1, p0, Lfb/a;->d:Ljb/i;

    sget-object v2, Ljb/i;->d:Ljb/i;

    if-eq v1, v2, :cond_6

    invoke-interface {p1, v0}, Lfb/a$b;->q(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e03b7

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lfb/a$c;

    invoke-direct {p2, p0, p1, p0}, Lfb/a$c;-><init>(Lfb/a;Landroid/view/View;Lfb/a;)V

    return-object p2

    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e03af

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lfb/a$a;

    invoke-direct {p2, p0, p1, p0}, Lfb/a$a;-><init>(Lfb/a;Landroid/view/View;Lfb/a;)V

    return-object p2
.end method

.method public p(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfb/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public q(Ljb/f;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lfb/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lfb/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljb/b;

    invoke-virtual {v1, p1}, Ljb/b;->c(Ljb/f;)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object p1, p0, Lfb/a;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfb/a;->s(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public s(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lfb/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public t(Lfb/a$b;)V
    .locals 0

    iput-object p1, p0, Lfb/a;->c:Lfb/a$b;

    return-void
.end method

.method public u(Ljb/i;)V
    .locals 0

    iput-object p1, p0, Lfb/a;->d:Ljb/i;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method
