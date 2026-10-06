.class public Lzc/c;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzc/c$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroidx/recyclerview/widget/RecyclerView$c0;",
            ">;"
        }
    .end annotation
.end field

.field private final d:[I

.field private e:Landroid/view/View;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private final q:Landroid/graphics/Rect;

.field private r:Z


# direct methods
.method public varargs constructor <init>([I)V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lzc/c;->a:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lzc/c;->b:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lzc/c;->c:Landroid/util/ArrayMap;

    const/4 v0, -0x1

    iput v0, p0, Lzc/c;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzc/c;->i:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lzc/c;->q:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lzc/c;->r:Z

    iput-object p1, p0, Lzc/c;->d:[I

    return-void
.end method

.method static synthetic f(Lzc/c;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lzc/c;->s(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic g(Lzc/c;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lzc/c;->q:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic h(Lzc/c;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lzc/c;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i(Lzc/c;)I
    .locals 0

    iget p0, p0, Lzc/c;->j:I

    return p0
.end method

.method static synthetic j(Lzc/c;)I
    .locals 0

    iget p0, p0, Lzc/c;->k:I

    return p0
.end method

.method static synthetic k(Lzc/c;)I
    .locals 0

    iget p0, p0, Lzc/c;->m:I

    return p0
.end method

.method static synthetic l(Lzc/c;)I
    .locals 0

    iget p0, p0, Lzc/c;->l:I

    return p0
.end method

.method private m(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzc/c;->q:Landroid/graphics/Rect;

    iget v1, p0, Lzc/c;->l:I

    iget v2, p0, Lzc/c;->o:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lzc/c;->q:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzc/c;->q:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :goto_0
    iget v0, p0, Lzc/c;->j:I

    iget v1, p0, Lzc/c;->n:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lzc/c;->l:I

    add-int/2addr p3, v1

    iget v1, p0, Lzc/c;->o:I

    add-int/2addr p3, v1

    int-to-float p3, p3

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private n(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    :goto_0
    if-ltz p1, :cond_3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemViewType(I)I

    move-result v2

    invoke-direct {p0, v2}, Lzc/c;->q(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return p1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private o(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;
    .locals 4

    iget v0, p0, Lzc/c;->f:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->getPosition(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lzc/c;->f:I

    iget-object v2, p0, Lzc/c;->a:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzc/c;->b:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v2

    iget v3, p0, Lzc/c;->f:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemViewType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0, p1}, Lzc/c;->p(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    return-object p1

    :cond_4
    :goto_0
    return-object v1
.end method

.method private p(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget v1, p0, Lzc/c;->f:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemViewType(I)I

    move-result v1

    iget-object v2, p0, Lzc/c;->c:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$c0;

    if-nez v2, :cond_1

    iget v2, p0, Lzc/c;->f:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemViewType(I)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$h;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v2

    iget-object v3, p0, Lzc/c;->c:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget v1, p0, Lzc/c;->f:I

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object v0, v2, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lzc/c;->r(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v2
.end method

.method private q(I)Z
    .locals 5

    iget-object v0, p0, Lzc/c;->d:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private r(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lzc/c;->a:Landroid/util/ArrayMap;

    iget v2, p0, Lzc/c;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lzc/c;->b:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v2

    iget v3, p0, Lzc/c;->f:I

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemViewType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :cond_2
    if-nez v1, :cond_3

    iget-object v1, p0, Lzc/c;->q:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iput v2, p0, Lzc/c;->j:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iput v2, p0, Lzc/c;->k:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iput v2, p0, Lzc/c;->l:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    iput v2, p0, Lzc/c;->m:I

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, p0, Lzc/c;->n:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, p0, Lzc/c;->o:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lzc/c;->p:I

    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, p0, Lzc/c;->l:I

    sub-int/2addr v0, v2

    iget v2, p0, Lzc/c;->m:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lzc/c;->j:I

    sub-int/2addr v1, v2

    iget v2, p0, Lzc/c;->k:I

    sub-int/2addr v1, v2

    iget v2, p0, Lzc/c;->n:I

    sub-int/2addr v1, v2

    iget v2, p0, Lzc/c;->p:I

    sub-int/2addr v1, v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p2

    instance-of v2, p2, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v2, :cond_5

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result p2

    div-int/2addr v1, p2

    :cond_5
    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->measure(II)V

    iget p2, p0, Lzc/c;->j:I

    iget v0, p0, Lzc/c;->n:I

    add-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lzc/c;->l:I

    iget v2, p0, Lzc/c;->o:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    iget-object p1, p0, Lzc/c;->q:Landroid/graphics/Rect;

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Lzc/c;->g:I

    return-void
.end method

.method private s(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lzc/c;->f:I

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    iget v1, p0, Lzc/c;->f:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemViewType(I)I

    move-result v0

    invoke-direct {p0, v0}, Lzc/c;->q(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-gez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lzc/c;->f:I

    :goto_0
    if-ltz v0, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemViewType(I)I

    move-result v2

    invoke-direct {p0, v2}, Lzc/c;->q(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iput v0, p0, Lzc/c;->f:I

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget v0, p0, Lzc/c;->f:I

    if-ne v0, v1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzc/c;->o(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzc/c;->e:Landroid/view/View;

    :cond_6
    :goto_2
    return-void
.end method

.method private t(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    iget-boolean v0, p0, Lzc/c;->r:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v0

    new-instance v1, Lzc/c$a;

    invoke-direct {v1, p0, p1}, Lzc/c$a;-><init>(Lzc/c;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$j;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lzc/c;->r:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private u(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    iget-boolean v0, p0, Lzc/c;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzc/c;->i:Z

    new-instance v0, Lzc/c$b;

    invoke-direct {v0, p0, p1}, Lzc/c$b;-><init>(Lzc/c;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    return-void
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 10

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzc/c;->q:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lzc/c;->l:I

    iget v2, p0, Lzc/c;->o:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lzc/c;->q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lzc/c;->g:I

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v3

    if-eqz v0, :cond_12

    if-eqz v2, :cond_12

    if-nez v3, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    :goto_0
    if-le v6, v4, :cond_5

    invoke-virtual {v3, v6}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemViewType(I)I

    move-result v7

    invoke-direct {p0, v7}, Lzc/c;->q(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p3, v6}, Landroidx/recyclerview/widget/RecyclerView$n;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    if-ne v8, v9, :cond_5

    move v5, v6

    move-object v2, v7

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_5
    :goto_2
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemViewType(I)I

    move-result v6

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemViewType(I)I

    move-result v3

    iget-boolean v5, p0, Lzc/c;->i:Z

    if-nez v5, :cond_6

    invoke-direct {p0, p2}, Lzc/c;->u(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_6
    iget-boolean v5, p0, Lzc/c;->r:Z

    if-nez v5, :cond_7

    invoke-direct {p0, p2}, Lzc/c;->t(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_7
    invoke-direct {p0, v6}, Lzc/c;->q(I)Z

    move-result v5

    if-eqz v5, :cond_c

    iget p3, p0, Lzc/c;->f:I

    if-ne v4, p3, :cond_8

    if-nez v4, :cond_9

    :cond_8
    iput v4, p0, Lzc/c;->f:I

    invoke-direct {p0, p2, v0}, Lzc/c;->o(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lzc/c;->e:Landroid/view/View;

    :cond_9
    invoke-direct {p0, v3}, Lzc/c;->q(I)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lzc/c;->e:Landroid/view/View;

    if-nez p2, :cond_a

    return-void

    :cond_a
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lzc/c;->e:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lzc/c;->l:I

    sub-int v1, p2, p3

    :cond_b
    iget-object p2, p0, Lzc/c;->e:Landroid/view/View;

    invoke-direct {p0, p2, p1, v1}, Lzc/c;->m(Landroid/view/View;Landroid/graphics/Canvas;I)V

    return-void

    :cond_c
    invoke-direct {p0, v3}, Lzc/c;->q(I)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_f

    iget p3, p0, Lzc/c;->f:I

    if-le p3, v4, :cond_d

    invoke-direct {p0, p2}, Lzc/c;->n(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result p3

    iput p3, p0, Lzc/c;->f:I

    invoke-direct {p0, p2, v3}, Lzc/c;->o(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lzc/c;->e:Landroid/view/View;

    :cond_d
    iget-object p2, p0, Lzc/c;->e:Landroid/view/View;

    if-nez p2, :cond_e

    return-void

    :cond_e
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lzc/c;->e:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iget p3, p0, Lzc/c;->l:I

    sub-int/2addr p2, p3

    iget-object p3, p0, Lzc/c;->e:Landroid/view/View;

    invoke-direct {p0, p3, p1, p2}, Lzc/c;->m(Landroid/view/View;Landroid/graphics/Canvas;I)V

    return-void

    :cond_f
    iget-object v0, p0, Lzc/c;->e:Landroid/view/View;

    if-eqz v0, :cond_10

    iget v0, p0, Lzc/c;->h:I

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildCount()I

    move-result v2

    if-eq v0, v2, :cond_11

    :cond_10
    invoke-direct {p0, p2}, Lzc/c;->n(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    iput v0, p0, Lzc/c;->f:I

    invoke-direct {p0, p2, v3}, Lzc/c;->o(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lzc/c;->e:Landroid/view/View;

    :cond_11
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildCount()I

    move-result p2

    iput p2, p0, Lzc/c;->h:I

    iget-object p2, p0, Lzc/c;->e:Landroid/view/View;

    invoke-direct {p0, p2, p1, v1}, Lzc/c;->m(Landroid/view/View;Landroid/graphics/Canvas;I)V

    :cond_12
    :goto_3
    return-void
.end method
