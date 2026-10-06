.class public Lcom/miui/common/customview/AutoPasteListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/customview/AutoPasteListView$c;,
        Lcom/miui/common/customview/AutoPasteListView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/VelocityTracker;

.field private c:Landroidx/core/view/h0;

.field private d:I

.field private e:I

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:F

.field private n:F

.field private o:Z

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/miui/common/customview/AutoPasteListView$b;

.field private r:Landroid/widget/AbsListView$OnScrollListener;

.field private s:Lcom/miui/common/customview/AutoPasteListView$c;

.field private t:Z

.field private u:Z

.field private v:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3fc00000    # 1.5f

    iput p1, p0, Lcom/miui/common/customview/AutoPasteListView;->f:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/common/customview/AutoPasteListView;->g:I

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoPasteListView;->j:Z

    const/16 p2, -0x64

    iput p2, p0, Lcom/miui/common/customview/AutoPasteListView;->k:I

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoPasteListView;->o:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/common/customview/AutoPasteListView;->p:Ljava/util/ArrayList;

    new-instance p1, Lcom/miui/common/customview/AutoPasteListView$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/miui/common/customview/AutoPasteListView$b;-><init>(Lcom/miui/common/customview/AutoPasteListView;Lcom/miui/common/customview/AutoPasteListView$a;)V

    iput-object p1, p0, Lcom/miui/common/customview/AutoPasteListView;->q:Lcom/miui/common/customview/AutoPasteListView$b;

    new-instance p1, Lcom/miui/common/customview/AutoPasteListView$a;

    invoke-direct {p1, p0}, Lcom/miui/common/customview/AutoPasteListView$a;-><init>(Lcom/miui/common/customview/AutoPasteListView;)V

    iput-object p1, p0, Lcom/miui/common/customview/AutoPasteListView;->v:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/common/customview/AutoPasteListView;->j()V

    return-void
.end method

.method static synthetic a(Lcom/miui/common/customview/AutoPasteListView;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/customview/AutoPasteListView;->e:I

    return p0
.end method

.method static synthetic b(Lcom/miui/common/customview/AutoPasteListView;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/customview/AutoPasteListView;->l:I

    return p0
.end method

.method static synthetic c(Lcom/miui/common/customview/AutoPasteListView;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/AutoPasteListView;->p:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/common/customview/AutoPasteListView;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/customview/AutoPasteListView;->g:I

    return p0
.end method

.method static synthetic e(Lcom/miui/common/customview/AutoPasteListView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/AutoPasteListView;->v:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/common/customview/AutoPasteListView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/customview/AutoPasteListView;->t:Z

    return p0
.end method

.method static synthetic g(Lcom/miui/common/customview/AutoPasteListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoPasteListView;->t:Z

    return p1
.end method

.method private getScrollingChildHelper()Landroidx/core/view/h0;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->c:Landroidx/core/view/h0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/view/h0;

    invoke-direct {v0, p0}, Landroidx/core/view/h0;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->c:Landroidx/core/view/h0;

    :cond_0
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->c:Landroidx/core/view/h0;

    return-object v0
.end method

.method static synthetic h(Lcom/miui/common/customview/AutoPasteListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/AutoPasteListView;->r:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/common/customview/AutoPasteListView;)Lcom/miui/common/customview/AutoPasteListView$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/AutoPasteListView;->s:Lcom/miui/common/customview/AutoPasteListView$c;

    return-object p0
.end method

.method private j()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->a:Landroid/content/Context;

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/common/customview/AutoPasteListView;->e:I

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/AutoPasteListView;->i:I

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/AutoPasteListView;->h:I

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->q:Lcom/miui/common/customview/AutoPasteListView$b;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/customview/AutoPasteListView;->getScrollingChildHelper()Landroidx/core/view/h0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/h0;->a(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/customview/AutoPasteListView;->getScrollingChildHelper()Landroidx/core/view/h0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/core/view/h0;->b(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/customview/AutoPasteListView;->getScrollingChildHelper()Landroidx/core/view/h0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/core/view/h0;->c(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    invoke-direct {p0}, Lcom/miui/common/customview/AutoPasteListView;->getScrollingChildHelper()Landroidx/core/view/h0;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/core/view/h0;->f(IIII[I)Z

    move-result p1

    return p1
.end method

.method public getAlignHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/AutoPasteListView;->l:I

    return v0
.end method

.method public getFirstViewScrollTop()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->q:Lcom/miui/common/customview/AutoPasteListView$b;

    invoke-static {v0}, Lcom/miui/common/customview/AutoPasteListView$b;->a(Lcom/miui/common/customview/AutoPasteListView$b;)I

    move-result v0

    return v0
.end method

.method public getFirstY()F
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/AutoPasteListView;->n:F

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

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/customview/AutoPasteListView;->getScrollingChildHelper()Landroidx/core/view/h0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/h0;->k()Z

    move-result v0

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/customview/AutoPasteListView;->getScrollingChildHelper()Landroidx/core/view/h0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/h0;->m()Z

    move-result v0

    return v0
.end method

.method public k(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/common/customview/AutoPasteListView;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3e8

    const/16 v1, 0x190

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/common/customview/AutoPasteListView;->f:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/customview/AutoPasteListView;->j:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/miui/common/customview/AutoPasteListView;->m:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/miui/common/customview/AutoPasteListView;->n:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/miui/common/customview/AutoPasteListView;->d:I

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/common/customview/AutoPasteListView;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/miui/common/customview/AutoPasteListView;->l:I

    :goto_0
    iget v2, p0, Lcom/miui/common/customview/AutoPasteListView;->e:I

    add-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/common/customview/AutoPasteListView;->p:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Lcom/miui/common/customview/AutoPasteListView;->l:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v3, v2

    iput v3, p0, Lcom/miui/common/customview/AutoPasteListView;->l:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget v0, p0, Lcom/miui/common/customview/AutoPasteListView;->k:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    iget-boolean v0, p0, Lcom/miui/common/customview/AutoPasteListView;->o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v2, v0

    int-to-float v0, v2

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v4, v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v3, v0, :cond_4

    :cond_3
    iput-boolean v1, p0, Lcom/miui/common/customview/AutoPasteListView;->j:Z

    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v4, v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v3, v0, :cond_7

    :cond_6
    iput-boolean v1, p0, Lcom/miui/common/customview/AutoPasteListView;->j:Z

    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_8
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->b:Landroid/view/VelocityTracker;

    if-nez v0, :cond_9

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->b:Landroid/view/VelocityTracker;

    :cond_9
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_a

    goto/16 :goto_9

    :cond_a
    iput-boolean v1, p0, Lcom/miui/common/customview/AutoPasteListView;->j:Z

    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/AutoPasteListView;->k:I

    if-nez v0, :cond_b

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/View;->setOverScrollMode(I)V

    :cond_b
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->b:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/miui/common/customview/AutoPasteListView;->i:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Lcom/miui/common/customview/AutoPasteListView;->d:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    iget v3, p0, Lcom/miui/common/customview/AutoPasteListView;->e:I

    if-gt v2, v3, :cond_15

    iget v3, p0, Lcom/miui/common/customview/AutoPasteListView;->l:I

    if-eqz v3, :cond_15

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_c

    iget-object v5, p0, Lcom/miui/common/customview/AutoPasteListView;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_c

    iget-object v5, p0, Lcom/miui/common/customview/AutoPasteListView;->p:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_c
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/miui/common/customview/AutoPasteListView;->g:I

    add-int/2addr v1, v2

    add-int/2addr v4, v1

    iget v1, p0, Lcom/miui/common/customview/AutoPasteListView;->l:I

    const v2, -0x3b448000    # -1500.0f

    cmpl-float v3, v0, v2

    const v5, 0x3ca3d70a    # 0.02f

    if-lez v3, :cond_e

    iget v3, p0, Lcom/miui/common/customview/AutoPasteListView;->h:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_e

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_d

    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, v1, v2

    goto :goto_2

    :cond_d
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v2, v2

    :goto_2
    invoke-virtual {p0, v2}, Lcom/miui/common/customview/AutoPasteListView;->k(I)V

    goto :goto_3

    :cond_e
    const/high16 v3, -0x31000000

    cmpl-float v3, v0, v3

    if-lez v3, :cond_f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_f

    iget-boolean v2, p0, Lcom/miui/common/customview/AutoPasteListView;->u:Z

    if-nez v2, :cond_f

    goto :goto_1

    :cond_f
    :goto_3
    const v2, 0x44bb8000    # 1500.0f

    cmpg-float v3, v0, v2

    const v6, 0x3f7ae148    # 0.98f

    if-gez v3, :cond_11

    iget v3, p0, Lcom/miui/common/customview/AutoPasteListView;->h:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_11

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    mul-float/2addr v3, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_10

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int v2, v1, v2

    goto :goto_5

    :cond_10
    :goto_4
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    neg-int v2, v2

    :goto_5
    invoke-virtual {p0, v2}, Lcom/miui/common/customview/AutoPasteListView;->k(I)V

    goto :goto_6

    :cond_11
    const/high16 v3, 0x4f000000

    cmpg-float v3, v0, v3

    if-gez v3, :cond_12

    cmpl-float v2, v0, v2

    if-lez v2, :cond_12

    iget-boolean v2, p0, Lcom/miui/common/customview/AutoPasteListView;->u:Z

    if-nez v2, :cond_12

    goto :goto_4

    :cond_12
    :goto_6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/miui/common/customview/AutoPasteListView;->h:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_15

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Lcom/miui/common/customview/AutoPasteListView;->m:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_13

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v1

    mul-float/2addr v2, v5

    cmpl-float v0, v0, v2

    if-lez v0, :cond_14

    goto :goto_7

    :cond_13
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v1

    mul-float/2addr v2, v6

    cmpl-float v0, v0, v2

    if-lez v0, :cond_14

    :goto_7
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/common/customview/AutoPasteListView;->k(I)V

    goto :goto_8

    :cond_14
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/AutoPasteListView;->k(I)V

    :cond_15
    :goto_8
    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->b:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->b:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->b:Landroid/view/VelocityTracker;

    :cond_16
    :goto_9
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAlignHeight(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/AutoPasteListView;->l:I

    return-void
.end method

.method public setAlignItem(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/AutoPasteListView;->e:I

    return-void
.end method

.method public setHeavySlideNoAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoPasteListView;->u:Z

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

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/common/customview/AutoPasteListView;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/customview/AutoPasteListView;->getScrollingChildHelper()Landroidx/core/view/h0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/h0;->n(Z)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/AutoPasteListView;->r:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setOnScrollPercentChangeListener(Lcom/miui/common/customview/AutoPasteListView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/AutoPasteListView;->s:Lcom/miui/common/customview/AutoPasteListView$c;

    return-void
.end method

.method public setTopDraggable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoPasteListView;->o:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/customview/AutoPasteListView;->getScrollingChildHelper()Landroidx/core/view/h0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/view/h0;->p(I)Z

    move-result p1

    return p1
.end method

.method public stopNestedScroll()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/customview/AutoPasteListView;->getScrollingChildHelper()Landroidx/core/view/h0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/h0;->r()V

    return-void
.end method
