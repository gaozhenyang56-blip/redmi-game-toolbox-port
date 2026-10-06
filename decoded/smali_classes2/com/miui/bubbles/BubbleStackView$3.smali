.class Lcom/miui/bubbles/BubbleStackView$3;
.super Lcom/miui/bubbles/RelativeTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/BubbleStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/BubbleStackView;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/BubbleStackView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-direct {p0}, Lcom/miui/bubbles/RelativeTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    instance-of p2, p1, Lcom/miui/bubbles/views/BubbleImageView;

    const-string v0, "MiuiBubbles.BSV"

    if-nez p2, :cond_0

    const-string p1, "onDown: v invalid view"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    move-object p2, p1

    check-cast p2, Lcom/miui/bubbles/views/BubbleImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " edgeState = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/bubbles/views/BubbleImageView;->getEdgeState()Lcom/miui/bubbles/data/EdgeState;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {p1}, Lcom/miui/bubbles/BubbleStackView;->access$500(Lcom/miui/bubbles/BubbleStackView;)V

    invoke-static {p2}, Lcom/miui/bubbles/animation/BubbleAnimator;->resetEdgeAlpha(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V
    .locals 3

    iget-object p2, p0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {p2}, Lcom/miui/bubbles/BubbleStackView;->access$200(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubbleData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/bubbles/BubbleData;->getBubbleWithView(Landroid/view/View;)Lcom/miui/bubbles/Bubble;

    move-result-object p2

    const-string v0, "MiuiBubbles.BSV"

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v1

    if-eq v1, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v1

    sget-object v2, Lcom/miui/bubbles/data/EdgeState;->DRAGGING:Lcom/miui/bubbles/data/EdgeState;

    invoke-virtual {v1, v2}, Lcom/miui/bubbles/views/BubbleImageView;->setEdgeState(Lcom/miui/bubbles/data/EdgeState;)V

    invoke-virtual {v1}, Lcom/miui/bubbles/views/BubbleImageView;->getDragState()Lcom/miui/bubbles/views/BubbleImageView$DragState;

    move-result-object v2

    add-float/2addr p3, p5

    add-float/2addr p4, p6

    invoke-static {p7, p8}, Lcom/miui/bubbles/BubblePositioner;->mergeXY(FF)F

    move-result p6

    iget-object p7, v2, Lcom/miui/bubbles/views/BubbleImageView$DragState;->preMode:Lcom/miui/bubbles/data/FreeformMode;

    const p8, 0x44bb8000    # 1500.0f

    cmpg-float p6, p6, p8

    if-gtz p6, :cond_1

    iget-object p6, p0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {p6}, Lcom/miui/bubbles/BubbleStackView;->access$600(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubblePositioner;

    move-result-object p6

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    iget-object p7, p2, Lcom/miui/bubbles/Bubble;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    invoke-virtual {p6, p5, p7}, Lcom/miui/bubbles/BubblePositioner;->guessMode(FLcom/miui/bubbles/data/FreeformMode;)Lcom/miui/bubbles/data/FreeformMode;

    move-result-object p7

    :cond_1
    sget-object p5, Lcom/miui/bubbles/data/FreeformMode;->MODE_EDGE:Lcom/miui/bubbles/data/FreeformMode;

    if-eq p7, p5, :cond_2

    iget-object p6, p0, Lcom/miui/bubbles/RelativeTouchListener;->centerPos:Landroid/graphics/PointF;

    iget p8, p6, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, p8

    iget p6, p6, Landroid/graphics/PointF;->y:F

    sub-float/2addr p4, p6

    :cond_2
    iget-object p6, v2, Lcom/miui/bubbles/views/BubbleImageView$DragState;->preMode:Lcom/miui/bubbles/data/FreeformMode;

    if-eq p7, p6, :cond_4

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "onMove: "

    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p8, "\t bubble key="

    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p6, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v0, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p7, v2, Lcom/miui/bubbles/views/BubbleImageView$DragState;->preMode:Lcom/miui/bubbles/data/FreeformMode;

    const/4 p6, 0x0

    if-ne p7, p5, :cond_3

    iget-object p2, p2, Lcom/miui/bubbles/Bubble;->pinFloatingWindowPos:Landroid/graphics/Rect;

    const/4 p5, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/miui/bubbles/Bubble;->getPreModeBounds()Landroid/graphics/Rect;

    move-result-object p2

    const/4 p5, 0x0

    :goto_0
    invoke-static {v1, p2, p5, p6}, Lcom/miui/bubbles/animation/BubbleAnimator;->animScaleTo(Lcom/miui/bubbles/views/BubbleImageView;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V

    :cond_4
    iget-object p2, p0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {p2}, Lcom/miui/bubbles/BubbleStackView;->access$600(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubblePositioner;

    move-result-object p2

    invoke-static {p2, p1, p3, p4}, Lcom/miui/bubbles/animation/BubbleAnimator;->moveStackFromTouch(Lcom/miui/bubbles/BubblePositioner;Landroid/view/View;FF)V

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    return-void

    :cond_5
    :goto_1
    const-string p1, "onMove: buuble is null or iconView is null"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUp(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    iget-object v2, v0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v2}, Lcom/miui/bubbles/BubbleStackView;->access$200(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubbleData;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/miui/bubbles/BubbleData;->getBubbleWithView(Landroid/view/View;)Lcom/miui/bubbles/Bubble;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    add-float v4, p3, p5

    add-float v5, p4, p6

    const/high16 v3, 0x40800000    # 4.0f

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-static {v4, v5, v8, v9, v3}, Lcom/miui/bubbles/animation/BubbleAnimator;->getPredict(FFFFF)Landroid/graphics/PointF;

    move-result-object v10

    iget-object v3, v0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v3}, Lcom/miui/bubbles/BubbleStackView;->access$600(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubblePositioner;

    move-result-object v3

    iget v6, v10, Landroid/graphics/PointF;->x:F

    iget v7, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {v3 .. v9}, Lcom/miui/bubbles/BubblePositioner;->finalModeIsEdge(FFFFFF)Z

    move-result v3

    move-object v4, v1

    check-cast v4, Lcom/miui/bubbles/views/BubbleImageView;

    const/4 v5, 0x0

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v3}, Lcom/miui/bubbles/BubbleStackView;->access$600(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubblePositioner;

    move-result-object v3

    iget-object v6, v2, Lcom/miui/bubbles/Bubble;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    iget v7, v10, Landroid/graphics/PointF;->x:F

    iget-object v8, v0, Lcom/miui/bubbles/RelativeTouchListener;->centerPos:Landroid/graphics/PointF;

    iget v9, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v9

    iget v9, v10, Landroid/graphics/PointF;->y:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v8

    invoke-virtual {v3, v2, v6, v7, v9}, Lcom/miui/bubbles/BubblePositioner;->finalBounds(Lcom/miui/bubbles/Bubble;Lcom/miui/bubbles/data/FreeformMode;FF)Landroid/graphics/Rect;

    move-result-object v3

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onUp: BubbleKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\tfinalBounds="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MiuiBubbles.BSV"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v2, Lcom/miui/bubbles/Bubble;->mFreeformMode:Lcom/miui/bubbles/data/FreeformMode;

    sget-object v8, Lcom/miui/bubbles/data/FreeformMode;->MODE_FREEFORM:Lcom/miui/bubbles/data/FreeformMode;

    if-ne v7, v8, :cond_1

    iget-object v7, v2, Lcom/miui/bubbles/Bubble;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v2, Lcom/miui/bubbles/Bubble;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/miui/bubbles/BubblePositioner;->scaleCenterHorizontalWidth(Landroid/graphics/Rect;II)V

    goto :goto_0

    :cond_1
    iget-object v7, v2, Lcom/miui/bubbles/Bubble;->smallWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, v2, Lcom/miui/bubbles/Bubble;->smallWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/miui/bubbles/BubblePositioner;->scaleSizeCenter(Landroid/graphics/Rect;II)V

    :goto_0
    new-instance v7, Lcom/miui/bubbles/BubbleStackView$3$1;

    move-object p2, v7

    move-object p3, p0

    move-object p4, v6

    move-object/from16 p5, v2

    move-object/from16 p6, v4

    move-object/from16 p7, v3

    move-object/from16 p8, p1

    invoke-direct/range {p2 .. p8}, Lcom/miui/bubbles/BubbleStackView$3$1;-><init>(Lcom/miui/bubbles/BubbleStackView$3;Landroid/graphics/Rect;Lcom/miui/bubbles/Bubble;Lcom/miui/bubbles/views/BubbleImageView;Landroid/graphics/Rect;Landroid/view/View;)V

    sget-object v2, Lcom/miui/bubbles/data/EdgeState;->ANIMATING:Lcom/miui/bubbles/data/EdgeState;

    invoke-virtual {v4, v2}, Lcom/miui/bubbles/views/BubbleImageView;->setEdgeState(Lcom/miui/bubbles/data/EdgeState;)V

    invoke-static {p1, v7, v3}, Lcom/miui/bubbles/animation/BubbleAnimator;->animMoveBubbleTo(Landroid/view/View;Ljava/lang/Runnable;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-static {v4, v6, v1, v5}, Lcom/miui/bubbles/animation/BubbleAnimator;->animScaleTo(Lcom/miui/bubbles/views/BubbleImageView;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v3}, Lcom/miui/bubbles/BubbleStackView;->access$600(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubblePositioner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/bubbles/BubblePositioner;->getBubbleSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v6, v0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v6}, Lcom/miui/bubbles/BubbleStackView;->access$600(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubblePositioner;

    move-result-object v6

    sget-object v7, Lcom/miui/bubbles/data/FreeformMode;->MODE_EDGE:Lcom/miui/bubbles/data/FreeformMode;

    iget v8, v10, Landroid/graphics/PointF;->x:F

    float-to-int v8, v8

    add-int/2addr v8, v3

    int-to-float v3, v8

    iget v8, v10, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v6, v2, v7, v3, v8}, Lcom/miui/bubbles/BubblePositioner;->finalBounds(Lcom/miui/bubbles/Bubble;Lcom/miui/bubbles/data/FreeformMode;FF)Landroid/graphics/Rect;

    move-result-object v3

    new-instance v6, Lcom/miui/bubbles/BubbleStackView$3$2;

    invoke-direct {v6, p0, v4}, Lcom/miui/bubbles/BubbleStackView$3$2;-><init>(Lcom/miui/bubbles/BubbleStackView$3;Lcom/miui/bubbles/views/BubbleImageView;)V

    sget-object v7, Lcom/miui/bubbles/data/EdgeState;->ANIMATING:Lcom/miui/bubbles/data/EdgeState;

    invoke-virtual {v4, v7}, Lcom/miui/bubbles/views/BubbleImageView;->setEdgeState(Lcom/miui/bubbles/data/EdgeState;)V

    invoke-static {p1, v6, v3}, Lcom/miui/bubbles/animation/BubbleAnimator;->animMoveBubbleTo(Landroid/view/View;Ljava/lang/Runnable;Landroid/graphics/Rect;)V

    const/4 v1, 0x1

    invoke-static {v4, v3, v1, v5}, Lcom/miui/bubbles/animation/BubbleAnimator;->animScaleTo(Lcom/miui/bubbles/views/BubbleImageView;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V

    iget-object v1, v0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v1}, Lcom/miui/bubbles/BubbleStackView;->access$600(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubblePositioner;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/miui/bubbles/BubblePositioner;->setBubbleRect(Lcom/miui/bubbles/Bubble;Landroid/graphics/Rect;)V

    iget v1, v2, Lcom/miui/bubbles/Bubble;->stackId:I

    invoke-static {v3, v1}, Lmiui/app/MiuiFreeFormManager;->updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V

    iget-object v1, v0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v1}, Lcom/miui/bubbles/BubbleStackView;->access$300(Lcom/miui/bubbles/BubbleStackView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
