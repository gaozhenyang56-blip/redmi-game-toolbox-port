.class public Lcom/miui/common/customview/HpAutoPasteRecyclerView;
.super Lcom/miui/common/customview/FirstTouchRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/customview/HpAutoPasteRecyclerView$c;,
        Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/VelocityTracker;

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:I

.field private i:I

.field private j:Z

.field private k:F

.field private l:F

.field private m:Z

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;

.field private p:Landroidx/recyclerview/widget/RecyclerView$s;

.field private q:Lcom/miui/common/customview/HpAutoPasteRecyclerView$c;

.field private r:Z

.field private s:Z

.field private t:Landroid/os/Handler;

.field private u:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/customview/FirstTouchRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    iput p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->g:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->j:Z

    iput-boolean p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->m:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->n:Ljava/util/ArrayList;

    new-instance p1, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;-><init>(Lcom/miui/common/customview/HpAutoPasteRecyclerView;Lcom/miui/common/customview/HpAutoPasteRecyclerView$a;)V

    iput-object p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->o:Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;

    new-instance p1, Lcom/miui/common/customview/HpAutoPasteRecyclerView$a;

    invoke-direct {p1, p0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView$a;-><init>(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)V

    iput-object p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->t:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->i()V

    return-void
.end method

.method static synthetic a(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->e:I

    return p0
.end method

.method static synthetic b(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->f:I

    return p0
.end method

.method static synthetic c(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->n:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->t:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->r:Z

    return p0
.end method

.method static synthetic f(Lcom/miui/common/customview/HpAutoPasteRecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->r:Z

    return p1
.end method

.method static synthetic g(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$s;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->p:Landroidx/recyclerview/widget/RecyclerView$s;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/common/customview/HpAutoPasteRecyclerView;)Lcom/miui/common/customview/HpAutoPasteRecyclerView$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->q:Lcom/miui/common/customview/HpAutoPasteRecyclerView$c;

    return-object p0
.end method

.method private i()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->b:Landroid/content/Context;

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->e:I

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->i:I

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->h:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->o:Lcom/miui/common/customview/HpAutoPasteRecyclerView$b;

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-void
.end method


# virtual methods
.method public getAlignHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->f:I

    return v0
.end method

.method public getFirstY()F
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->l:F

    return v0
.end method

.method public getItemHeightList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->n:Ljava/util/ArrayList;

    return-object v0
.end method

.method public j(I)V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->u:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->u:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    const/16 v3, 0x190

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->g:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/common/customview/FirstTouchRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->j:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->k:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->l:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->d:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->f:I

    :goto_0
    iget v3, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->e:I

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result v3

    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->o()Landroidx/recyclerview/widget/GridLayoutManager$c;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->n:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v5, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->f:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->f:I

    add-int/2addr v1, v3

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/miui/common/customview/FirstTouchRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iget-boolean v2, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->m:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v5

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    cmpl-float v6, v6, v3

    if-ltz v6, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v5, v2

    int-to-float v2, v5

    cmpg-float v2, v6, v2

    if-gtz v2, :cond_1

    return v4

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v6, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v5, v0, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->j:Z

    :cond_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    iget-object v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    if-nez v1, :cond_5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    :cond_5
    iget-object v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_6

    goto/16 :goto_5

    :cond_6
    iput-boolean v4, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->j:Z

    iget-object v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->i:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->d:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    iget v2, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->e:I

    if-gt v0, v2, :cond_10

    iget v2, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->f:I

    if-eqz v2, :cond_10

    move v2, v4

    move v5, v2

    :goto_0
    if-ge v2, v0, :cond_7

    iget-object v7, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->n:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_7

    iget-object v7, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->n:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v5, v0

    iget v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->f:I

    const v2, -0x3b448000    # -1500.0f

    cmpl-float v4, v1, v2

    const v7, 0x3ca3d70a    # 0.02f

    if-lez v4, :cond_9

    iget v4, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->h:I

    neg-int v4, v4

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_9

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v0

    mul-float/2addr v1, v7

    cmpl-float p1, p1, v1

    if-lez p1, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->j(I)V

    goto :goto_1

    :cond_8
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->j(I)V

    :goto_1
    return v6

    :cond_9
    const/high16 v4, -0x31000000

    cmpl-float v4, v1, v4

    if-lez v4, :cond_a

    cmpg-float v2, v1, v2

    if-gez v2, :cond_a

    iget-boolean v2, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->s:Z

    if-nez v2, :cond_a

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->j(I)V

    return v6

    :cond_a
    const v2, 0x44bb8000    # 1500.0f

    cmpg-float v4, v1, v2

    const v8, 0x3f7ae148    # 0.98f

    if-gez v4, :cond_c

    iget v4, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->h:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v0

    mul-float/2addr v1, v8

    cmpl-float p1, p1, v1

    if-lez p1, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->j(I)V

    goto :goto_2

    :cond_b
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->j(I)V

    :goto_2
    return v6

    :cond_c
    const/high16 v4, 0x4f000000

    cmpg-float v4, v1, v4

    if-gez v4, :cond_d

    cmpl-float v2, v1, v2

    if-lez v2, :cond_d

    iget-boolean v2, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->s:Z

    if-nez v2, :cond_d

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->j(I)V

    return v6

    :cond_d
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-lez v2, :cond_10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->h:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->k:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_e

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v0

    mul-float/2addr v1, v7

    cmpl-float p1, p1, v1

    if-lez p1, :cond_f

    goto :goto_3

    :cond_e
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v0

    mul-float/2addr v1, v8

    cmpl-float p1, p1, v1

    if-lez p1, :cond_f

    :goto_3
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->j(I)V

    goto :goto_4

    :cond_f
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->j(I)V

    :goto_4
    return v6

    :cond_10
    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    :cond_11
    :goto_5
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAlignHeight(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->f:I

    return-void
.end method

.method public setAlignItemIndex(I)V
    .locals 5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-gt v1, p1, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result v3

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->o()Landroidx/recyclerview/widget/GridLayoutManager$c;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I

    move-result v4

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->e:I

    return-void
.end method

.method public setHeavySlideNoAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->s:Z

    return-void
.end method

.method public setItemHeightList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->n:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->p:Landroidx/recyclerview/widget/RecyclerView$s;

    return-void
.end method

.method public setOnScrollPercentChangeListener(Lcom/miui/common/customview/HpAutoPasteRecyclerView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->q:Lcom/miui/common/customview/HpAutoPasteRecyclerView$c;

    return-void
.end method

.method public setTopDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/HpAutoPasteRecyclerView;->m:Z

    return-void
.end method
