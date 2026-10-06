.class public Lcom/miui/common/customview/AutoScrollViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/customview/AutoScrollViewPager$b;
    }
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Z

.field private g:D

.field private h:D

.field private i:Landroid/os/Handler;

.field private j:Z

.field private k:Z

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:I

.field private q:Lk4/a;

.field r:I

.field s:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->a:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->b:I

    iput-boolean v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->c:Z

    iput-boolean v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->d:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->e:I

    iput-boolean v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->f:Z

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/miui/common/customview/AutoScrollViewPager;->g:D

    iput-wide v2, p0, Lcom/miui/common/customview/AutoScrollViewPager;->h:D

    iput-boolean v1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->j:Z

    iput-boolean v1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->k:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->l:F

    iput v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->m:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->q:Lk4/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->r:I

    iput v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->s:I

    invoke-direct {p0, p1, p2}, Lcom/miui/common/customview/AutoScrollViewPager;->g(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/common/customview/AutoScrollViewPager;)D
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->g:D

    return-wide v0
.end method

.method static synthetic b(Lcom/miui/common/customview/AutoScrollViewPager;)Lk4/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->q:Lk4/a;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/common/customview/AutoScrollViewPager;)D
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->h:D

    return-wide v0
.end method

.method static synthetic d(Lcom/miui/common/customview/AutoScrollViewPager;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->a:J

    return-wide v0
.end method

.method static synthetic e(Lcom/miui/common/customview/AutoScrollViewPager;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/customview/AutoScrollViewPager;->i(J)V

    return-void
.end method

.method private g(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    new-instance v0, Lcom/miui/common/customview/AutoScrollViewPager$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/common/customview/AutoScrollViewPager$b;-><init>(Lcom/miui/common/customview/AutoScrollViewPager;Lcom/miui/common/customview/AutoScrollViewPager$a;)V

    iput-object v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->i:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/common/customview/AutoScrollViewPager;->j()V

    sget-object v0, Lef/y;->B:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->n:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->o:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->p:I

    return-void
.end method

.method private i(J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private j()V
    .locals 5

    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-class v2, Landroidx/viewpager/widget/ViewPager;

    const-string v3, "sInterpolator"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v1, Lk4/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Interpolator;

    invoke-direct {v1, v3, v2}, Lk4/a;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->q:Lk4/a;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-static {p1}, Landroidx/core/view/e0;->c(Landroid/view/MotionEvent;)I

    move-result v0

    iget-boolean v1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->j:Z

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/miui/common/customview/AutoScrollViewPager;->k:Z

    invoke-virtual {p0}, Lcom/miui/common/customview/AutoScrollViewPager;->m()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->k:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/common/customview/AutoScrollViewPager;->k()V

    :cond_2
    :goto_0
    iget v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->e:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    if-ne v0, v2, :cond_a

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->l:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->l:F

    iput v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->m:F

    :cond_4
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    move v3, v4

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v3

    :goto_1
    if-nez v0, :cond_6

    iget v5, p0, Lcom/miui/common/customview/AutoScrollViewPager;->m:F

    iget v6, p0, Lcom/miui/common/customview/AutoScrollViewPager;->l:F

    cmpg-float v5, v5, v6

    if-lez v5, :cond_7

    :cond_6
    add-int/lit8 v5, v3, -0x1

    if-ne v0, v5, :cond_a

    iget v5, p0, Lcom/miui/common/customview/AutoScrollViewPager;->m:F

    iget v6, p0, Lcom/miui/common/customview/AutoScrollViewPager;->l:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    :cond_7
    iget v5, p0, Lcom/miui/common/customview/AutoScrollViewPager;->e:I

    if-ne v5, v1, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_8
    if-le v3, v2, :cond_9

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    iget-boolean v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->f:Z

    invoke-virtual {p0, v3, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_a
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public getDirection()I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->a:J

    return-wide v0
.end method

.method public getSlideBorderMode()I
    .locals 1

    iget v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->e:I

    return v0
.end method

.method public h()V
    .locals 4

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/a;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/viewpager/widget/a;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_2

    :cond_0
    iget v3, p0, Lcom/miui/common/customview/AutoScrollViewPager;->b:I

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/2addr v1, v2

    :goto_0
    if-gez v1, :cond_2

    iget-boolean v1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->c:Z

    if-eqz v1, :cond_4

    sub-int/2addr v0, v2

    :goto_1
    iget-boolean v1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->f:Z

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_2

    :cond_2
    if-ne v1, v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->c:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method public k()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->j:Z

    iget-wide v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->a:J

    long-to-double v0, v0

    iget-object v2, p0, Lcom/miui/common/customview/AutoScrollViewPager;->q:Lk4/a;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getDuration()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/miui/common/customview/AutoScrollViewPager;->g:D

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/miui/common/customview/AutoScrollViewPager;->h:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/miui/common/customview/AutoScrollViewPager;->i(J)V

    return-void
.end method

.method public l(I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->j:Z

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/miui/common/customview/AutoScrollViewPager;->i(J)V

    return-void
.end method

.method public m()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->j:Z

    iget-object v1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    if-lez p2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lx4/t;->k(Landroid/content/Context;)I

    move-result p2

    const/16 v1, 0x744

    if-lt p2, v1, :cond_1

    iget p2, p0, Lcom/miui/common/customview/AutoScrollViewPager;->p:I

    if-ge v0, p2, :cond_3

    :goto_0
    move v0, p2

    goto :goto_1

    :cond_1
    const/16 v1, 0x2d0

    if-le p2, v1, :cond_2

    const/16 v1, 0x370

    if-gt p2, v1, :cond_2

    iget p2, p0, Lcom/miui/common/customview/AutoScrollViewPager;->o:I

    if-ge v0, p2, :cond_3

    goto :goto_0

    :cond_2
    iget p2, p0, Lcom/miui/common/customview/AutoScrollViewPager;->n:I

    if-ge v0, p2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    const/high16 p2, -0x80000000

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    return-void
.end method

.method public setAutoScrollDurationFactor(D)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->g:D

    return-void
.end method

.method public setBorderAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->f:Z

    return-void
.end method

.method public setCycle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->c:Z

    return-void
.end method

.method public setDirection(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->b:I

    return-void
.end method

.method public setDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/AutoScrollViewPager;->q:Lk4/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lk4/a;->a(I)V

    :cond_0
    return-void
.end method

.method public setInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->a:J

    return-void
.end method

.method public setSlideBorderMode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->e:I

    return-void
.end method

.method public setStopScrollWhenTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->d:Z

    return-void
.end method

.method public setSwipeScrollDurationFactor(D)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/common/customview/AutoScrollViewPager;->h:D

    return-void
.end method
