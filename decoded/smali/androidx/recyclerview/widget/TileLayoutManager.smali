.class public Landroidx/recyclerview/widget/TileLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:Z

.field private e:I

.field private f:I

.field private final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private h()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public a(Z)I
    .locals 1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method public b()I
    .locals 1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/TileLayoutManager;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/TileLayoutManager;->a(Z)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/TileLayoutManager;->c:I

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method

.method protected c()I
    .locals 2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public computeVerticalScrollExtent(Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/TileLayoutManager;->c()I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/TileLayoutManager;->f:I

    return p1
.end method

.method public computeVerticalScrollRange(Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/TileLayoutManager;->b()I

    move-result p1

    return p1
.end method

.method protected d(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getWidth()I

    move-result v0

    if-eqz v1, :cond_1

    sub-int v2, v0, p4

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    if-eqz v1, :cond_2

    sub-int p4, v0, p2

    :cond_2
    invoke-virtual {p1, v2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected e(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Landroidx/recyclerview/widget/TileLayoutManager;->g:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingStart()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingTop()I

    move-result v0

    iget v1, p0, Landroidx/recyclerview/widget/TileLayoutManager;->f:I

    sub-int v5, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v6, v4, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v7, v5, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/TileLayoutManager;->d(Landroid/view/View;IIII)V

    return-void
.end method

.method protected f(Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$u;->o(I)Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/TileLayoutManager;->c()I

    const/4 p1, 0x0

    throw p1
.end method

.method protected g(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/TileLayoutManager;->g:Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V

    return-void
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$o;
    .locals 2

    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$o;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>(II)V

    return-object v0
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$u;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$u;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/TileLayoutManager;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-boolean v0, p0, Landroidx/recyclerview/widget/TileLayoutManager;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/TileLayoutManager;->f(Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/TileLayoutManager;->c()I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/TileLayoutManager;->f:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/TileLayoutManager;->b()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/TileLayoutManager;->f:I

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroidx/recyclerview/widget/TileLayoutManager;->f:I

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$n;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz v0, :cond_5

    iget v4, p0, Landroidx/recyclerview/widget/TileLayoutManager;->f:I

    int-to-float v4, v4

    iget v5, p0, Landroidx/recyclerview/widget/TileLayoutManager;->c:I

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingTop()I

    move-result v3

    :goto_2
    add-int/2addr v5, v3

    int-to-float v3, v5

    iget v5, p0, Landroidx/recyclerview/widget/TileLayoutManager;->e:I

    int-to-float v5, v5

    iget v6, p0, Landroidx/recyclerview/widget/TileLayoutManager;->a:F

    iget v7, p0, Landroidx/recyclerview/widget/TileLayoutManager;->b:F

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    cmpg-float v3, v4, v3

    if-gez v3, :cond_4

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/TileLayoutManager;->e(Landroid/view/View;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/TileLayoutManager;->g(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingTop()I

    :goto_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getHeight()I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingTop()I

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingBottom()I

    :cond_7
    iget-boolean p1, p0, Landroidx/recyclerview/widget/TileLayoutManager;->d:Z

    if-lt p1, p2, :cond_8

    return-void

    :cond_8
    throw v1
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$n;->onMeasure(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;II)V

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->setMeasuredDimension(II)V

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingStart()I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingEnd()I

    const/4 p1, 0x0

    throw p1
.end method

.method public scrollToPosition(I)V
    .locals 2

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget p1, p0, Landroidx/recyclerview/widget/TileLayoutManager;->f:I

    rsub-int/lit8 p1, p1, 0x0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$n;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p0, p1, v1, v0}, Landroidx/recyclerview/widget/TileLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I

    return-void

    :cond_1
    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_e

    if-nez p1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-direct {p0}, Landroidx/recyclerview/widget/TileLayoutManager;->h()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/TileLayoutManager;->b()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/TileLayoutManager;->c()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Landroidx/recyclerview/widget/TileLayoutManager;->f:I

    add-int v4, v3, p1

    if-gez v4, :cond_1

    neg-int p1, v3

    goto :goto_0

    :cond_1
    add-int v4, v3, p1

    sub-int/2addr v1, v2

    if-le v4, v1, :cond_2

    sub-int p1, v1, v3

    :cond_2
    :goto_0
    add-int/2addr v3, p1

    iput v3, p0, Landroidx/recyclerview/widget/TileLayoutManager;->f:I

    neg-int v1, p1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->offsetChildrenVertical(I)V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$n;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    iget v3, p0, Landroidx/recyclerview/widget/TileLayoutManager;->e:I

    int-to-float v3, v3

    iget v4, p0, Landroidx/recyclerview/widget/TileLayoutManager;->a:F

    iget v5, p0, Landroidx/recyclerview/widget/TileLayoutManager;->b:F

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget-object v4, p0, Landroidx/recyclerview/widget/TileLayoutManager;->g:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v4, p0, Landroidx/recyclerview/widget/TileLayoutManager;->d:Z

    if-eqz v4, :cond_5

    iget v4, p0, Landroidx/recyclerview/widget/TileLayoutManager;->f:I

    int-to-float v4, v4

    iget v5, p0, Landroidx/recyclerview/widget/TileLayoutManager;->c:I

    if-eqz v1, :cond_4

    move v6, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingTop()I

    move-result v6

    :goto_2
    add-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/TileLayoutManager;->f(Landroidx/recyclerview/widget/RecyclerView$u;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/TileLayoutManager;->e(Landroid/view/View;)V

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingTop()I

    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getHeight()I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingTop()I

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingBottom()I

    :cond_7
    iget-boolean v4, p0, Landroidx/recyclerview/widget/TileLayoutManager;->d:Z

    if-lt v4, p3, :cond_d

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildCount()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_4
    if-ltz p3, :cond_c

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$n;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v4

    iget v5, v4, Landroidx/recyclerview/widget/RecyclerView$c0;->mPosition:I

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$c0;->isRecyclable()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingTop()I

    move-result v6

    goto :goto_5

    :cond_8
    move v6, v0

    :goto_5
    int-to-float v6, v6

    sub-float/2addr v6, v3

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getHeight()I

    move-result v6

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getPaddingBottom()I

    move-result v7

    goto :goto_6

    :cond_9
    move v7, v0

    :goto_6
    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-float/2addr v6, v3

    cmpl-float v4, v4, v6

    if-lez v4, :cond_b

    :cond_a
    invoke-virtual {p0, v2, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$u;)V

    iget-object v2, p0, Landroidx/recyclerview/widget/TileLayoutManager;->g:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 p3, p3, -0x1

    goto :goto_4

    :cond_c
    return p1

    :cond_d
    const/4 p1, 0x0

    throw p1

    :cond_e
    :goto_7
    return v0
.end method
