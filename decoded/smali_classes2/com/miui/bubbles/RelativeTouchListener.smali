.class public abstract Lcom/miui/bubbles/RelativeTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field protected final centerPos:Landroid/graphics/PointF;

.field private maximumFlingVelocity:I

.field private movedEnough:Z

.field private performedLongClick:Z

.field protected final touchDown:Landroid/graphics/PointF;

.field private touchSlop:I

.field private final velocityTracker:Landroid/view/VelocityTracker;

.field protected final viewPositionOnTouchDown:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->centerPos:Landroid/graphics/PointF;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->touchSlop:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->movedEnough:Z

    iput-boolean v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->performedLongClick:Z

    return-void
.end method

.method public static synthetic a(Lcom/miui/bubbles/RelativeTouchListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/RelativeTouchListener;->lambda$onTouch$0(Landroid/view/View;)V

    return-void
.end method

.method private addMovement(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lcom/miui/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    neg-float v0, v0

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private synthetic lambda$onTouch$0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/bubbles/RelativeTouchListener;->performedLongClick:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-direct {p0, p2}, Lcom/miui/bubbles/RelativeTouchListener;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/miui/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v7, v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/miui/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v8, v0, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v11, 0x1

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    if-eq v0, v11, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    goto/16 :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->movedEnough:Z

    if-nez v0, :cond_1

    mul-float v0, v7, v7

    mul-float v1, v8, v8

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v4, p0, Lcom/miui/bubbles/RelativeTouchListener;->touchSlop:I

    int-to-double v4, v4

    cmpl-double v0, v0, v4

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->performedLongClick:Z

    if-nez v0, :cond_1

    iput-boolean v11, p0, Lcom/miui/bubbles/RelativeTouchListener;->movedEnough:Z

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->movedEnough:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/miui/bubbles/RelativeTouchListener;->maximumFlingVelocity:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    iget-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/miui/bubbles/RelativeTouchListener;->onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V

    goto/16 :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->movedEnough:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/miui/bubbles/RelativeTouchListener;->maximumFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    iget-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/miui/bubbles/RelativeTouchListener;->onUp(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V

    goto :goto_0

    :cond_3
    iget-boolean p2, p0, Lcom/miui/bubbles/RelativeTouchListener;->performedLongClick:Z

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/bubbles/RelativeTouchListener;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    iput-boolean v1, p0, Lcom/miui/bubbles/RelativeTouchListener;->movedEnough:Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/miui/bubbles/RelativeTouchListener;->onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/miui/bubbles/RelativeTouchListener;->touchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->maximumFlingVelocity:I

    iget-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {v0, v2, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p2, p0, Lcom/miui/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p2, p0, Lcom/miui/bubbles/RelativeTouchListener;->centerPos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/miui/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/miui/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/miui/bubbles/RelativeTouchListener;->viewPositionOnTouchDown:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget-object v3, p0, Lcom/miui/bubbles/RelativeTouchListener;->touchDown:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    invoke-virtual {p2, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v1, p0, Lcom/miui/bubbles/RelativeTouchListener;->performedLongClick:Z

    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/miui/bubbles/v;

    invoke-direct {v0, p0, p1}, Lcom/miui/bubbles/v;-><init>(Lcom/miui/bubbles/RelativeTouchListener;Landroid/view/View;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_1
    return v11
.end method

.method public abstract onUp(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V
.end method
