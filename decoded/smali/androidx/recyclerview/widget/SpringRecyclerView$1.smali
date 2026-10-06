.class Landroidx/recyclerview/widget/SpringRecyclerView$1;
.super Lmiuix/spring/view/SpringHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/SpringRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field c:Lum/b;

.field final synthetic d:Landroidx/recyclerview/widget/SpringRecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/SpringRecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-direct {p0}, Lmiuix/spring/view/SpringHelper;-><init>()V

    return-void
.end method

.method private n()Lum/b;
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->c:Lum/b;

    if-nez v0, :cond_0

    new-instance v0, Lum/b;

    iget-object v1, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lum/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->c:Lum/b;

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->c:Lum/b;

    return-object v0
.end method


# virtual methods
.method public a(FF)V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0, p1}, Landroidx/recyclerview/widget/SpringRecyclerView;->s(Landroidx/recyclerview/widget/SpringRecyclerView;F)F

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0, p2}, Landroidx/recyclerview/widget/SpringRecyclerView;->t(Landroidx/recyclerview/widget/SpringRecyclerView;F)F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/SpringRecyclerView;->u(Landroidx/recyclerview/widget/SpringRecyclerView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v2}, Landroidx/recyclerview/widget/SpringRecyclerView;->u(Landroidx/recyclerview/widget/SpringRecyclerView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/spring/view/a;

    invoke-interface {v2, p1, p2}, Lmiuix/spring/view/a;->a(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected c()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/RecyclerView$n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected d(II[I[II)Z
    .locals 7
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->o(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->g()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->p(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->q(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->h()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->r(Landroidx/recyclerview/widget/SpringRecyclerView;Z)Z

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->v(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$d;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/SpringRecyclerView$d;->t(II[I[II)Z

    move-result p1

    return p1
.end method

.method protected e(IIII[II[I)V
    .locals 11
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move v9, p3

    move v10, p4

    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->v(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$d;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/SpringRecyclerView$d;->u(IIII[II[I)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->w(Landroidx/recyclerview/widget/SpringRecyclerView;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->o(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v9, :cond_0

    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->m(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$c;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroidx/recyclerview/widget/SpringRecyclerView$c;->l(I)V

    :cond_0
    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->q(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v10, :cond_1

    iget-object v1, v0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->m(Landroidx/recyclerview/widget/SpringRecyclerView;)Landroidx/recyclerview/widget/SpringRecyclerView$c;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroidx/recyclerview/widget/SpringRecyclerView$c;->m(I)V

    :cond_1
    return-void
.end method

.method protected f()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected i()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method protected m()Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-static {v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->n(Landroidx/recyclerview/widget/SpringRecyclerView;)Z

    move-result v0

    return v0
.end method

.method protected vibrate()V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "2.0"

    invoke-static {v0}, Lmiuix/view/HapticCompat;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/recyclerview/widget/SpringRecyclerView$1;->n()Lum/b;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lum/b;->e(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/SpringRecyclerView$1;->d:Landroidx/recyclerview/widget/SpringRecyclerView;

    sget v1, Lmiuix/view/i;->q:I

    invoke-static {v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method
