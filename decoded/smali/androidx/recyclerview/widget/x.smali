.class abstract Landroidx/recyclerview/widget/x;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/x$a;
    }
.end annotation


# instance fields
.field private final a:[Lmiuix/animation/utils/VelocityMonitor;

.field private b:I

.field private c:Z

.field private d:Z

.field private e:J

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Lcm/a;->a:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x5

    new-array p2, p2, [Lmiuix/animation/utils/VelocityMonitor;

    iput-object p2, p0, Landroidx/recyclerview/widget/x;->a:[Lmiuix/animation/utils/VelocityMonitor;

    const/4 p2, -0x1

    iput p2, p0, Landroidx/recyclerview/widget/x;->b:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/recyclerview/widget/x;->c:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/recyclerview/widget/x;->d:Z

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Landroidx/recyclerview/widget/x;->e:J

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/x;->f:I

    return-void
.end method

.method static synthetic a(Landroidx/recyclerview/widget/x;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Landroidx/recyclerview/widget/x;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/x;->c:Z

    return p0
.end method

.method static synthetic c(Landroidx/recyclerview/widget/x;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/x;->f:I

    return p0
.end method

.method static synthetic d(Landroidx/recyclerview/widget/x;)I
    .locals 0

    iget p0, p0, Landroidx/recyclerview/widget/x;->b:I

    return p0
.end method

.method static synthetic e(Landroidx/recyclerview/widget/x;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/x;->g(I)V

    return-void
.end method

.method static synthetic f(Landroidx/recyclerview/widget/x;)[Lmiuix/animation/utils/VelocityMonitor;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/x;->a:[Lmiuix/animation/utils/VelocityMonitor;

    return-object p0
.end method

.method private g(I)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/x;->a:[Lmiuix/animation/utils/VelocityMonitor;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    new-instance v1, Lmiuix/animation/utils/VelocityMonitor;

    invoke-direct {v1}, Lmiuix/animation/utils/VelocityMonitor;-><init>()V

    aput-object v1, v0, p1

    :cond_0
    return-void
.end method

.method private i(Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    rem-int/lit8 p1, p1, 0x5

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/x;->g(I)V

    iget-object p2, p0, Landroidx/recyclerview/widget/x;->a:[Lmiuix/animation/utils/VelocityMonitor;

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lmiuix/animation/utils/VelocityMonitor;->clear()V

    return-void
.end method

.method private j(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-direct {p0, p1, v2}, Landroidx/recyclerview/widget/x;->k(Landroid/view/MotionEvent;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    :goto_1
    iput v0, p0, Landroidx/recyclerview/widget/x;->b:I

    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/x;->i(Landroid/view/MotionEvent;I)V

    invoke-direct {p0, p1, v1}, Landroidx/recyclerview/widget/x;->k(Landroid/view/MotionEvent;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method private k(Landroid/view/MotionEvent;I)V
    .locals 6

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/x;->g(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x1d

    if-lt v1, v5, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/x;->a:[Lmiuix/animation/utils/VelocityMonitor;

    aget-object v0, v1, v0

    new-array v1, v4, [D

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/v;->a(Landroid/view/MotionEvent;I)F

    move-result v4

    float-to-double v4, v4

    aput-wide v4, v1, v3

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/w;->a(Landroid/view/MotionEvent;I)F

    move-result p1

    float-to-double p1, p1

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/recyclerview/widget/x;->a:[Lmiuix/animation/utils/VelocityMonitor;

    aget-object p2, p2, v0

    new-array v0, v4, [D

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-double v4, v1

    aput-wide v4, v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-double v3, p1

    aput-wide v3, v0, v2

    invoke-virtual {p2, v0}, Lmiuix/animation/utils/VelocityMonitor;->update([D)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSpringEnabled()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/recyclerview/widget/x;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Landroidx/recyclerview/widget/x;->c:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroidx/recyclerview/widget/x;->d:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method protected h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/16 v0, 0x2002

    invoke-static {p1, v0}, Landroidx/core/view/e0;->h(Landroid/view/MotionEvent;I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/x;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/x;->e:J

    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/x;->j(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/16 v0, 0x2002

    invoke-static {p1, v0}, Landroidx/core/view/e0;->h(Landroid/view/MotionEvent;I)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/x;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/recyclerview/widget/x;->e:J

    :cond_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/x;->j(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOverScrollMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/x;->c:Z

    :cond_0
    return-void
.end method

.method public setSpringEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/x;->c:Z

    return-void
.end method
