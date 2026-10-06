.class public Landroidx/recyclerview/widget/SpringGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "SourceFile"


# instance fields
.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field private final o:Landroidx/recyclerview/widget/LinearLayoutManager$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->j:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->k:Z

    iput p1, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->l:I

    iput p1, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->m:I

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager$b;

    invoke-direct {p1}, Landroidx/recyclerview/widget/LinearLayoutManager$b;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$b;

    return-void
.end method

.method private recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V
    .locals 3

    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->a:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->i:I

    iget p2, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/SpringGridLayoutManager;->recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/SpringGridLayoutManager;->recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private recycleChildren(Landroidx/recyclerview/widget/RecyclerView$u;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$n;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$u;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private recycleViewsFromEnd(Landroidx/recyclerview/widget/RecyclerView$u;II)V
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildCount()I

    move-result v0

    if-gez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/s;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/s;->h()I

    move-result v1

    sub-int/2addr v1, p2

    add-int/2addr v1, p3

    iget-boolean p2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, v0, :cond_6

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/s;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/s;->g(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->m:I

    add-int/2addr v4, v1

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/s;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/s;->q(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->m:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/SpringGridLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_2
    if-ltz p2, :cond_6

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/s;

    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/s;->g(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->m:I

    add-int/2addr v3, v1

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/s;

    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/s;->q(Landroid/view/View;)I

    move-result p3

    iget v2, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->m:I

    add-int/2addr v2, v1

    if-ge p3, v2, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-direct {p0, p1, v0, p2}, Landroidx/recyclerview/widget/SpringGridLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    :cond_6
    return-void
.end method

.method private recycleViewsFromStart(Landroidx/recyclerview/widget/RecyclerView$u;II)V
    .locals 5

    if-gez p2, :cond_0

    return-void

    :cond_0
    sub-int/2addr p2, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildCount()I

    move-result p3

    iget-boolean v0, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_3

    add-int/lit8 p3, p3, -0x1

    move v0, p3

    :goto_0
    if-ltz v0, :cond_6

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/s;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/s;->d(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->l:I

    sub-int v3, p2, v3

    if-gt v2, v3, :cond_2

    iget-object v2, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/s;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/s;->p(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->l:I

    sub-int v2, p2, v2

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-direct {p0, p1, p3, v0}, Landroidx/recyclerview/widget/SpringGridLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    return-void

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_6

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/s;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/s;->d(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->l:I

    sub-int v4, p2, v4

    if-gt v3, v4, :cond_5

    iget-object v3, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/s;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/s;->p(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->l:I

    sub-int v3, p2, v3

    if-le v2, v3, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/SpringGridLayoutManager;->recycleChildren(Landroidx/recyclerview/widget/RecyclerView$u;II)V

    :cond_6
    return-void
.end method


# virtual methods
.method fill(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/RecyclerView$z;Z)I
    .locals 8

    iget v0, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/SpringGridLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V

    :cond_1
    iget v1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    iget v3, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->h:I

    add-int/2addr v1, v3

    iget-object v3, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->o:Landroidx/recyclerview/widget/LinearLayoutManager$b;

    iget-boolean v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->j:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->n:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->l:I

    iget-object v5, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->n:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v5}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentInset()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->n:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentInset()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->l:I

    :cond_2
    iget-boolean v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->k:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->n:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->m:I

    iget-object v5, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->n:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v5}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentInset()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->n:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentInset()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->m:I

    :cond_3
    iget-boolean v4, p0, Landroidx/recyclerview/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v5, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    move v5, v7

    :goto_0
    if-ne v4, v5, :cond_5

    iget v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->l:I

    goto :goto_1

    :cond_5
    iget v4, p0, Landroidx/recyclerview/widget/SpringGridLayoutManager;->m:I

    :goto_1
    sub-int/2addr v7, v4

    :cond_6
    iget-boolean v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->m:Z

    if-nez v4, :cond_7

    if-le v1, v7, :cond_d

    :cond_7
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c(Landroidx/recyclerview/widget/RecyclerView$z;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a()V

    invoke-virtual {p0, p1, p3, p2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->layoutChunk(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/LinearLayoutManager$c;Landroidx/recyclerview/widget/LinearLayoutManager$b;)V

    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->b:Z

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_8
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    iget v6, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->f:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->b:I

    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->c:Z

    if-eqz v4, :cond_9

    iget-object v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->l:Ljava/util/List;

    if-nez v4, :cond_9

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$z;->e()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    sub-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    sub-int/2addr v1, v5

    :cond_a
    iget v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    if-eq v4, v2, :cond_c

    iget v5, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->a:I

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    iget v5, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    if-gez v5, :cond_b

    add-int/2addr v4, v5

    iput v4, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->g:I

    :cond_b
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/SpringGridLayoutManager;->recycleByLayoutState(Landroidx/recyclerview/widget/RecyclerView$u;Landroidx/recyclerview/widget/LinearLayoutManager$c;)V

    :cond_c
    if-eqz p4, :cond_6

    iget-boolean v4, v3, Landroidx/recyclerview/widget/LinearLayoutManager$b;->d:Z

    if-eqz v4, :cond_6

    :cond_d
    :goto_2
    iget p1, p2, Landroidx/recyclerview/widget/LinearLayoutManager$c;->c:I

    sub-int/2addr v0, p1

    return v0
.end method
