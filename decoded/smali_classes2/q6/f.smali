.class public Lq6/f;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq6/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lq6/i;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end field

.field protected final c:Lq6/c;

.field protected d:Lq6/f$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lq6/f;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TItem;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lq6/f;->b:Ljava/util/List;

    new-instance v1, Lq6/c;

    invoke-direct {v1}, Lq6/c;-><init>()V

    iput-object v1, p0, Lq6/f;->c:Lq6/c;

    iput-object p1, p0, Lq6/f;->a:Landroid/content/Context;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private E(Lq6/i;)V
    .locals 2

    const v0, 0x7f0b096b

    invoke-virtual {p1, v0}, Lq6/i;->e(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private G(Landroid/view/ViewGroup;Lq6/i;I)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Lq6/f;->t(Lq6/i;I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lq6/i;->c()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lq6/d;

    invoke-direct {p3, p0, p2}, Lq6/d;-><init>(Lq6/f;Lq6/i;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lq6/i;->c()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lq6/e;

    invoke-direct {p3, p0, p2}, Lq6/e;-><init>(Lq6/f;Lq6/i;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private I()Z
    .locals 1

    iget-object v0, p0, Lq6/f;->c:Lq6/c;

    invoke-virtual {v0}, Lq6/c;->f()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic k(Lq6/f;Lq6/i;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lq6/f;->u(Lq6/i;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lq6/f;Lq6/i;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lq6/f;->v(Lq6/i;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic u(Lq6/i;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lq6/f;->d:Lq6/f$a;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lq6/f;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lq6/f;->d:Lq6/f$a;

    invoke-interface {v1, p2, p1, v0}, Lq6/f$a;->a(Landroid/view/View;Lq6/i;I)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic v(Lq6/i;Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lq6/f;->d:Lq6/f$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lq6/f;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lq6/f;->d:Lq6/f$a;

    invoke-interface {v1, p2, p1, v0}, Lq6/f$a;->g(Landroid/view/View;Lq6/i;I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public A(Lq6/i;)V
    .locals 0
    .param p1    # Lq6/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public B(Lq6/i;)V
    .locals 0
    .param p1    # Lq6/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method protected C(Lq6/i;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public D(Lq6/i;)V
    .locals 0
    .param p1    # Lq6/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public final F(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lq6/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lq6/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final H(Lq6/f$a;)V
    .locals 0

    iput-object p1, p0, Lq6/f;->d:Lq6/f$a;

    return-void
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lq6/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemCount()I
    .locals 1

    iget-object v0, p0, Lq6/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemViewType(I)I
    .locals 2

    invoke-direct {p0}, Lq6/f;->I()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lq6/f;->c:Lq6/c;

    iget-object v1, p0, Lq6/f;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lq6/c;->d(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final m(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    iget-object v0, p0, Lq6/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final n(ILq6/b;)Lq6/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lq6/b<",
            "TItem;>;)",
            "Lq6/f;"
        }
    .end annotation

    iget-object v0, p0, Lq6/f;->c:Lq6/c;

    invoke-virtual {v0, p1, p2}, Lq6/c;->a(ILq6/b;)Lq6/c;

    return-object p0
.end method

.method public final o(Lq6/b;)Lq6/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/b<",
            "TItem;>;)",
            "Lq6/f;"
        }
    .end annotation

    iget-object v0, p0, Lq6/f;->c:Lq6/c;

    invoke-virtual {v0, p1}, Lq6/c;->b(Lq6/b;)Lq6/c;

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0

    check-cast p1, Lq6/i;

    invoke-virtual {p0, p1, p2}, Lq6/f;->w(Lq6/i;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lq6/i;

    invoke-virtual {p0, p1, p2, p3}, Lq6/f;->x(Lq6/i;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lq6/f;->y(Landroid/view/ViewGroup;I)Lq6/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lq6/i;

    invoke-virtual {p0, p1}, Lq6/f;->z(Lq6/i;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lq6/i;

    invoke-virtual {p0, p1}, Lq6/f;->A(Lq6/i;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lq6/i;

    invoke-virtual {p0, p1}, Lq6/f;->B(Lq6/i;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lq6/i;

    invoke-virtual {p0, p1}, Lq6/f;->D(Lq6/i;)V

    return-void
.end method

.method public final p(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lq6/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lq6/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected r(Lq6/i;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/i;",
            "TItem;)V"
        }
    .end annotation

    iget-object v0, p0, Lq6/f;->c:Lq6/c;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lq6/c;->c(Lq6/i;Ljava/lang/Object;I)V

    return-void
.end method

.method public final s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    iget-object v0, p0, Lq6/f;->b:Ljava/util/List;

    return-object v0
.end method

.method protected t(Lq6/i;I)Z
    .locals 0

    iget-object p1, p0, Lq6/f;->c:Lq6/c;

    invoke-virtual {p1, p2}, Lq6/c;->e(I)Lq6/b;

    move-result-object p1

    invoke-interface {p1}, Lq6/b;->a()Z

    move-result p1

    return p1
.end method

.method public final w(Lq6/i;I)V
    .locals 1

    invoke-direct {p0, p1}, Lq6/f;->E(Lq6/i;)V

    iget-object v0, p0, Lq6/f;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lq6/f;->r(Lq6/i;Ljava/lang/Object;)V

    return-void
.end method

.method public x(Lq6/i;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq6/i;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lq6/f;->E(Lq6/i;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lq6/f;->w(Lq6/i;I)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lq6/f;->b:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lq6/f;->r(Lq6/i;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final y(Landroid/view/ViewGroup;I)Lq6/i;
    .locals 3

    iget-object v0, p0, Lq6/f;->c:Lq6/c;

    invoke-virtual {v0, p2}, Lq6/c;->e(I)Lq6/b;

    move-result-object v0

    invoke-interface {v0}, Lq6/b;->b()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lq6/f;->a:Landroid/content/Context;

    invoke-interface {v0}, Lq6/b;->e()Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lq6/i;->a(Landroid/content/Context;Landroid/view/View;)Lq6/i;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq6/f;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lq6/i;->b(Landroid/content/Context;Landroid/view/ViewGroup;IZ)Lq6/i;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lq6/i;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lq6/f;->C(Lq6/i;Landroid/view/View;)V

    invoke-direct {p0, p1, v0, p2}, Lq6/f;->G(Landroid/view/ViewGroup;Lq6/i;I)V

    return-object v0
.end method

.method public z(Lq6/i;)Z
    .locals 0
    .param p1    # Lq6/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$c0;)Z

    move-result p1

    return p1
.end method
