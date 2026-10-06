.class public Lcom/miui/common/customview/AutoPasteRecyclerView;
.super Lcom/miui/common/customview/FirstTouchRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/customview/AutoPasteRecyclerView$c;,
        Lcom/miui/common/customview/AutoPasteRecyclerView$b;
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

.field private n:I

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/miui/common/customview/AutoPasteRecyclerView$b;

.field private q:Landroidx/recyclerview/widget/RecyclerView$s;

.field private r:Lcom/miui/common/customview/AutoPasteRecyclerView$c;

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Landroid/os/Handler;

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/customview/FirstTouchRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    iput p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->g:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->j:Z

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->m:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->o:Ljava/util/ArrayList;

    new-instance p1, Lcom/miui/common/customview/AutoPasteRecyclerView$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/common/customview/AutoPasteRecyclerView$b;-><init>(Lcom/miui/common/customview/AutoPasteRecyclerView;Lcom/miui/common/customview/AutoPasteRecyclerView$a;)V

    iput-object p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->p:Lcom/miui/common/customview/AutoPasteRecyclerView$b;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->t:I

    new-instance p1, Lcom/miui/common/customview/AutoPasteRecyclerView$a;

    invoke-direct {p1, p0}, Lcom/miui/common/customview/AutoPasteRecyclerView$a;-><init>(Lcom/miui/common/customview/AutoPasteRecyclerView;)V

    iput-object p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->v:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/common/customview/AutoPasteRecyclerView;->j()V

    return-void
.end method

.method static synthetic a(Lcom/miui/common/customview/AutoPasteRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->t:I

    return p0
.end method

.method static synthetic b(Lcom/miui/common/customview/AutoPasteRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->e:I

    return p0
.end method

.method static synthetic c(Lcom/miui/common/customview/AutoPasteRecyclerView;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->f:I

    return p0
.end method

.method static synthetic d(Lcom/miui/common/customview/AutoPasteRecyclerView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->o:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/common/customview/AutoPasteRecyclerView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->v:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/common/customview/AutoPasteRecyclerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->s:Z

    return p0
.end method

.method static synthetic g(Lcom/miui/common/customview/AutoPasteRecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->s:Z

    return p1
.end method

.method static synthetic h(Lcom/miui/common/customview/AutoPasteRecyclerView;)Landroidx/recyclerview/widget/RecyclerView$s;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$s;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/common/customview/AutoPasteRecyclerView;)Lcom/miui/common/customview/AutoPasteRecyclerView$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->r:Lcom/miui/common/customview/AutoPasteRecyclerView$c;

    return-object p0
.end method

.method private j()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->b:Landroid/content/Context;

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->e:I

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->i:I

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->h:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->p:Lcom/miui/common/customview/AutoPasteRecyclerView$b;

    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    return-void
.end method


# virtual methods
.method public getAlignHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->f:I

    return v0
.end method

.method public getFirstY()F
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->l:F

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

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->o:Ljava/util/ArrayList;

    return-object v0
.end method

.method public k(I)V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->w:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->w:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    const/16 v3, 0x190

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->g:F

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
    .locals 5

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

    iput-boolean v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->j:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->k:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->l:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->d:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->f:I

    :goto_0
    iget v2, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->e:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->o:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->f:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->f:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Lcom/miui/common/customview/FirstTouchRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iget-boolean v2, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->m:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget v6, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->n:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v4, v2

    iget v2, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->n:I

    add-int/2addr v4, v2

    int-to-float v2, v4

    cmpg-float v2, v5, v2

    if-gtz v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez v1, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v5, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v4, v0, :cond_3

    :cond_2
    iput-boolean v3, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->j:Z

    :cond_3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v5, v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v4, v0, :cond_6

    :cond_5
    iput-boolean v3, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->j:Z

    :cond_6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_7
    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    if-nez v1, :cond_8

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    :cond_8
    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v5, :cond_9

    if-eq v1, v4, :cond_9

    goto/16 :goto_6

    :cond_9
    iput-boolean v3, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->j:Z

    iget-object v1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v4, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->i:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->d:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v0

    iget v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->t:I

    if-lt v4, v0, :cond_a

    move v0, v5

    goto :goto_0

    :cond_a
    move v0, v3

    :goto_0
    iget v4, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->e:I

    if-gt v2, v4, :cond_14

    iget v4, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->f:I

    if-eqz v4, :cond_14

    if-eqz v0, :cond_14

    move v0, v3

    move v4, v0

    :goto_1
    if-ge v0, v2, :cond_b

    iget-object v6, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_b

    iget-object v6, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v4, v0

    iget v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->f:I

    const v2, -0x3b448000    # -1500.0f

    cmpl-float v3, v1, v2

    const v6, 0x3ca3d70a    # 0.02f

    if-lez v3, :cond_d

    iget v3, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->h:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_d

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v0

    mul-float/2addr v1, v6

    cmpl-float p1, p1, v1

    if-lez p1, :cond_c

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/AutoPasteRecyclerView;->k(I)V

    goto :goto_2

    :cond_c
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/common/customview/AutoPasteRecyclerView;->k(I)V

    :goto_2
    return v5

    :cond_d
    const/high16 v3, -0x31000000

    cmpl-float v3, v1, v3

    if-lez v3, :cond_e

    cmpg-float v2, v1, v2

    if-gez v2, :cond_e

    iget-boolean v2, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->u:Z

    if-nez v2, :cond_e

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/AutoPasteRecyclerView;->k(I)V

    return v5

    :cond_e
    const v2, 0x44bb8000    # 1500.0f

    cmpg-float v3, v1, v2

    const v7, 0x3f7ae148    # 0.98f

    if-gez v3, :cond_10

    iget v3, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->h:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_10

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v0

    mul-float/2addr v1, v7

    cmpl-float p1, p1, v1

    if-lez p1, :cond_f

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/AutoPasteRecyclerView;->k(I)V

    goto :goto_3

    :cond_f
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/common/customview/AutoPasteRecyclerView;->k(I)V

    :goto_3
    return v5

    :cond_10
    const/high16 v3, 0x4f000000

    cmpg-float v3, v1, v3

    if-gez v3, :cond_11

    cmpl-float v2, v1, v2

    if-lez v2, :cond_11

    iget-boolean v2, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->u:Z

    if-nez v2, :cond_11

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/common/customview/AutoPasteRecyclerView;->k(I)V

    return v5

    :cond_11
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->h:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->k:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_12

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v0

    mul-float/2addr v1, v6

    cmpl-float p1, p1, v1

    if-lez p1, :cond_13

    goto :goto_4

    :cond_12
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v0

    mul-float/2addr v1, v7

    cmpl-float p1, p1, v1

    if-lez p1, :cond_13

    :goto_4
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/AutoPasteRecyclerView;->k(I)V

    goto :goto_5

    :cond_13
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result p1

    neg-int p1, p1

    invoke-virtual {p0, p1}, Lcom/miui/common/customview/AutoPasteRecyclerView;->k(I)V

    :goto_5
    return v5

    :cond_14
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->c:Landroid/view/VelocityTracker;

    :cond_15
    :goto_6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAlignHeight(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->f:I

    return-void
.end method

.method public setAlignItemIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->e:I

    return-void
.end method

.method public setDeltaInvalidLastCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->t:I

    return-void
.end method

.method public setHeavySlideNoAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->u:Z

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

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setMarginTopPixel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->n:I

    return-void
.end method

.method public setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->q:Landroidx/recyclerview/widget/RecyclerView$s;

    return-void
.end method

.method public setOnScrollPercentChangeListener(Lcom/miui/common/customview/AutoPasteRecyclerView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->r:Lcom/miui/common/customview/AutoPasteRecyclerView$c;

    return-void
.end method

.method public setTopDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoPasteRecyclerView;->m:Z

    return-void
.end method
