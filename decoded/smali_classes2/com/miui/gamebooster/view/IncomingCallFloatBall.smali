.class public Lcom/miui/gamebooster/view/IncomingCallFloatBall;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/view/IncomingCallFloatBall$c;,
        Lcom/miui/gamebooster/view/IncomingCallFloatBall$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:F

.field private c:F

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Lcom/miui/gamebooster/view/IncomingCallFloatBall$b;

.field private l:F

.field private m:Z

.field private n:I

.field private o:I

.field private p:Z

.field private q:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->q:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/miui/gamebooster/view/IncomingCallFloatBall;
    .locals 2

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0e018f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    return-object p0
.end method

.method private d(IIZ)V
    .locals 5

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Lcom/miui/gamebooster/view/IncomingCallFloatBall$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gamebooster/view/IncomingCallFloatBall$c;-><init>(Lcom/miui/gamebooster/view/IncomingCallFloatBall;Lcom/miui/gamebooster/view/IncomingCallFloatBall$a;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/Point;

    iget v4, p3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {v3, v4, p3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v3, v1, v2

    const/4 p3, 0x1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, p3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/gamebooster/view/IncomingCallFloatBall$a;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall$a;-><init>(Lcom/miui/gamebooster/view/IncomingCallFloatBall;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Ll8/h;

    invoke-direct {p2}, Ll8/h;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->h(II)V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->o:I

    iget v3, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->g:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->n:I

    iget v3, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->f:I

    sub-int v4, v2, v3

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-ge v0, v4, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v5}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->d(IIZ)V

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v3

    invoke-direct {p0, v2, v1, v5}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->d(IIZ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->a:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->p:Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->q:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->a:Landroid/view/WindowManager;

    const v0, 0x7f0b01f3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->h:Landroid/widget/TextView;

    const v0, 0x7f0b01f2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->i:Landroid/widget/TextView;

    const v0, 0x7f0b04c7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->l:F

    return-void
.end method

.method public f()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->n:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->o:I

    return-void
.end method

.method public g()V
    .locals 7

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    const-string v1, "FloatCallView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x1028

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->a:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v5, v2, Landroid/graphics/Point;->y:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Landroid/view/View;->measure(II)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_1
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->a:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->p:Z

    return-void
.end method

.method public h(II)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->n:I

    iget v3, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->f:I

    sub-int v4, v2, v3

    if-le p1, v4, :cond_1

    sub-int p1, v2, v3

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->o:I

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->g:I

    sub-int v3, v1, v2

    if-le p2, v3, :cond_3

    sub-int p2, v1, v2

    :cond_3
    :goto_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-boolean p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->p:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->a:Landroid/view/WindowManager;

    invoke-interface {p1, p0, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->k:Lcom/miui/gamebooster/view/IncomingCallFloatBall$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/gamebooster/view/IncomingCallFloatBall$b;->a()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->f()V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->h(II)V

    invoke-direct {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->e()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->c()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->m:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->b:F

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->c:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->l:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    iput-boolean v3, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->m:Z

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iput v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->b:F

    iput v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->c:F

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->d:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->e:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->b:F

    iput v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->c:F

    :cond_2
    iput-boolean v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->m:Z

    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->m:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->n:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->f()V

    :cond_0
    sub-int/2addr p4, p2

    iput p4, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->f:I

    sub-int/2addr p5, p3

    iput p5, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->g:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->b:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->c:F

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->d:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->e:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->h(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->e()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->m:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->d:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->e:I

    :goto_0
    return v2
.end method

.method public setCallDuration(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCallerName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnHangUpClickListener(Lcom/miui/gamebooster/view/IncomingCallFloatBall$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->k:Lcom/miui/gamebooster/view/IncomingCallFloatBall$b;

    return-void
.end method
