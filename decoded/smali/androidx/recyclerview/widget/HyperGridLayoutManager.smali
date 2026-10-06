.class public Landroidx/recyclerview/widget/HyperGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# instance fields
.field private j:I

.field private k:Lil/a;

.field private l:I

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->l:I

    const/4 v1, 0x0

    iput v1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->n:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->o:F

    iput v1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->s:F

    iput v0, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->t:I

    iput v0, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->u:I

    const/16 v0, 0x11

    iput v0, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->v:I

    iput-boolean p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->w:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->x:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;-><init>(Landroid/content/Context;)V

    iput p2, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->l:I

    return-void
.end method

.method private w(Lil/a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lil/a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$n;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget-boolean v3, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->x:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager$c;->b(II)I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget v1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->p:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_1
    iput v1, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    iget v3, v2, Lil/a;->c:F

    iget v2, v2, Lil/a;->b:F

    add-float/2addr v3, v2

    int-to-float v0, v0

    mul-float/2addr v3, v0

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p2, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget p2, p2, Lil/a;->a:I

    if-gtz p2, :cond_1

    return-void

    :cond_1
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$n;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    iget-object v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result v1

    invoke-virtual {v0, p4, v1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->c(II)I

    move-result v0

    iget-object v1, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    invoke-virtual {v1, p4}, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->v:I

    and-int/lit8 v2, v2, 0x7

    iget-object v3, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    iget v4, v3, Lil/a;->c:F

    iget v3, v3, Lil/a;->b:F

    add-float/2addr v4, v3

    int-to-float p2, p2

    mul-float/2addr p2, v4

    sub-float/2addr p2, v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingStart()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->v()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v2, p2

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingStart()I

    move-result p2

    int-to-float p2, p2

    add-float v5, v2, p2

    goto :goto_1

    :cond_2
    const/4 v6, 0x5

    if-ne v2, v6, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->v()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p2

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p2, 0x0

    :goto_2
    if-ge p2, v0, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/GridLayoutManager$c;

    sub-int v6, p4, v0

    add-int/2addr v6, p2

    invoke-virtual {v2, v6}, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v5, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    int-to-float p2, v1

    mul-float/2addr v4, p2

    sub-float/2addr v4, v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getWidth()I

    move-result p4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-eqz p2, :cond_5

    sub-int v2, p4, v1

    move v5, v2

    goto :goto_3

    :cond_5
    move v5, v0

    :goto_3
    if-eqz p2, :cond_6

    sub-int v1, p4, v0

    :cond_6
    move v7, v1

    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move v8, p5

    invoke-super/range {v3 .. v8}, Landroidx/recyclerview/widget/RecyclerView$n;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;II)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;II)V

    iget p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->j:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->v()I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    if-nez p1, :cond_5

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->v()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->j:I

    iget-boolean p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->w:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->w(Lil/a;)V

    iget p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->j:I

    int-to-float p1, p1

    iget-object p3, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    iget p4, p3, Lil/a;->a:I

    iget p3, p3, Lil/a;->b:F

    invoke-static {p1, p4, p3}, Ljl/d;->a(FIF)Lil/a;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->l:I

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->w(Lil/a;)V

    iget p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->j:I

    int-to-float p1, p1

    iget p3, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->m:F

    iget p4, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->r:F

    iget v0, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->s:F

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v1

    invoke-static {p1, p3, p4, v0, v1}, Ljl/b;->a(FFFFI)Lil/a;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    goto :goto_1

    :cond_2
    const/4 p3, 0x2

    if-ne p1, p3, :cond_3

    iget-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->w(Lil/a;)V

    iget p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->j:I

    int-to-float p1, p1

    iget p3, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->n:F

    iget p4, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->o:F

    iget v0, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->q:F

    iget v1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->u:I

    invoke-static {p1, p3, p4, v0, v1}, Ljl/a;->a(FFFFI)Lil/a;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p3, 0x4

    if-ne p1, p3, :cond_4

    iget-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->w(Lil/a;)V

    iget p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->j:I

    int-to-float p1, p1

    iget p3, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->t:I

    iget p4, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->m:F

    invoke-static {p1, p3, p4}, Ljl/d;->a(FIF)Lil/a;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->w(Lil/a;)V

    iget p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->j:I

    int-to-float p1, p1

    iget p3, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->m:F

    iget p4, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->r:F

    iget v0, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->s:F

    iget v1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->u:I

    invoke-static {p1, p3, p4, v0, v1}, Ljl/c;->a(FFFFI)Lil/a;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    iget p3, p1, Lil/a;->a:I

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lil/a;->a:I

    iget-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    iget p2, p1, Lil/a;->c:F

    const/4 p3, 0x0

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lil/a;->c:F

    iget-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    iget p2, p1, Lil/a;->b:F

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Lil/a;->b:F

    iget-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    iget p1, p1, Lil/a;->a:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->s(I)V

    :cond_5
    return-void
.end method

.method protected v()I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public x(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->m:F

    iget-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->w(Lil/a;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->requestLayout()V

    return-void
.end method

.method public y(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->r:F

    iget-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->w(Lil/a;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->requestLayout()V

    return-void
.end method

.method public z(F)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->p:F

    iget-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/HyperGridLayoutManager;->w(Lil/a;)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/HyperGridLayoutManager;->k:Lil/a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->requestLayout()V

    return-void
.end method
