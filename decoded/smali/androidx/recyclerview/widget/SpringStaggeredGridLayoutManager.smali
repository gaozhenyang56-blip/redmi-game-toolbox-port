.class public Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;
.super Landroidx/recyclerview/widget/OriginalStaggeredGridLayoutManager;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:I

.field private C:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/OriginalStaggeredGridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->y:Z

    iput-boolean p1, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->z:Z

    iput p1, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->A:I

    iput p1, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->B:I

    return-void
.end method


# virtual methods
.method protected S(ILandroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/OriginalStaggeredGridLayoutManager;->t()Landroidx/recyclerview/widget/n;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroidx/recyclerview/widget/n;->b:I

    iput p1, v0, Landroidx/recyclerview/widget/n;->c:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->isSmoothScrolling()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$z;->c()I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    iget-boolean v2, p0, Landroidx/recyclerview/widget/OriginalStaggeredGridLayoutManager;->i:Z

    if-ge p2, p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-ne v2, p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/OriginalStaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/s;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/s;->n()I

    move-result p1

    move p2, p1

    move p1, v1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/OriginalStaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/s;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/s;->n()I

    move-result p1

    move p2, v1

    goto :goto_1

    :cond_2
    move p1, v1

    move p2, p1

    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$n;->getClipToPadding()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/OriginalStaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/s;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/s;->m()I

    move-result v2

    sub-int/2addr v2, p1

    iput v2, v0, Landroidx/recyclerview/widget/n;->f:I

    iget-object p1, p0, Landroidx/recyclerview/widget/OriginalStaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/s;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/s;->i()I

    move-result p1

    add-int/2addr p1, p2

    iput p1, v0, Landroidx/recyclerview/widget/n;->g:I

    goto :goto_2

    :cond_3
    iget-boolean v2, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->y:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->C:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->A:I

    iget-object v4, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->C:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentInset()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-eq v2, v4, :cond_4

    iget-object v2, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->C:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentInset()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->A:I

    :cond_4
    iget-boolean v2, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->z:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->C:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->B:I

    iget-object v4, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->C:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v4}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentInset()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->C:Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/app/widget/ActionBarOverlayLayout;->getContentInset()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->B:I

    :cond_5
    iget-object v2, p0, Landroidx/recyclerview/widget/OriginalStaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/s;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/s;->h()I

    move-result v2

    add-int/2addr v2, p2

    iget p2, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->B:I

    add-int/2addr v2, p2

    iput v2, v0, Landroidx/recyclerview/widget/n;->g:I

    neg-int p1, p1

    iget p2, p0, Landroidx/recyclerview/widget/SpringStaggeredGridLayoutManager;->A:I

    sub-int/2addr p1, p2

    iput p1, v0, Landroidx/recyclerview/widget/n;->f:I

    :goto_2
    iput-boolean v1, v0, Landroidx/recyclerview/widget/n;->h:Z

    iput-boolean v3, v0, Landroidx/recyclerview/widget/n;->a:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/OriginalStaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/s;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/s;->k()I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Landroidx/recyclerview/widget/OriginalStaggeredGridLayoutManager;->c:Landroidx/recyclerview/widget/s;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/s;->h()I

    move-result p1

    if-nez p1, :cond_6

    move v1, v3

    :cond_6
    iput-boolean v1, v0, Landroidx/recyclerview/widget/n;->i:Z

    return-void
.end method
