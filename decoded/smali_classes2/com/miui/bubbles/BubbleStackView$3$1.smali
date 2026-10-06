.class Lcom/miui/bubbles/BubbleStackView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/bubbles/BubbleStackView$3;->onUp(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isValid:Z

.field final synthetic this$1:Lcom/miui/bubbles/BubbleStackView$3;

.field final synthetic val$finalBounds:Landroid/graphics/Rect;

.field final synthetic val$finalScaleBounds:Landroid/graphics/Rect;

.field final synthetic val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

.field final synthetic val$touchedBubble:Lcom/miui/bubbles/Bubble;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/BubbleStackView$3;Landroid/graphics/Rect;Lcom/miui/bubbles/Bubble;Lcom/miui/bubbles/views/BubbleImageView;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->this$1:Lcom/miui/bubbles/BubbleStackView$3;

    iput-object p2, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$finalScaleBounds:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$touchedBubble:Lcom/miui/bubbles/Bubble;

    iput-object p4, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    iput-object p5, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$finalBounds:Landroid/graphics/Rect;

    iput-object p6, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->isValid:Z

    return-void
.end method

.method public static synthetic a(Lcom/miui/bubbles/BubbleStackView$3$1;Lcom/miui/bubbles/Bubble;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleStackView$3$1;->lambda$run$0(Lcom/miui/bubbles/Bubble;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/bubbles/views/BubbleImageView;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/bubbles/BubbleStackView$3$1;->lambda$run$1(Lcom/miui/bubbles/views/BubbleImageView;)V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/miui/bubbles/Bubble;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->this$1:Lcom/miui/bubbles/BubbleStackView$3;

    iget-object v0, v0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v0, p1}, Lcom/miui/bubbles/BubbleStackView;->access$400(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/Bubble;)V

    return-void
.end method

.method private static synthetic lambda$run$1(Lcom/miui/bubbles/views/BubbleImageView;)V
    .locals 1

    sget-object v0, Lcom/miui/bubbles/data/EdgeState;->PINNED:Lcom/miui/bubbles/data/EdgeState;

    invoke-virtual {p0, v0}, Lcom/miui/bubbles/views/BubbleImageView;->setEdgeState(Lcom/miui/bubbles/data/EdgeState;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->isValid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->isValid:Z

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$finalScaleBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$touchedBubble:Lcom/miui/bubbles/Bubble;

    iget v2, v2, Lcom/miui/bubbles/Bubble;->stackId:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3, v0}, Lmiui/app/MiuiFreeFormManager;->unPinFloatingWindow(Landroid/graphics/Rect;IFFZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    sget-object v1, Lcom/miui/bubbles/data/EdgeState;->UNDEFINE:Lcom/miui/bubbles/data/EdgeState;

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/views/BubbleImageView;->setEdgeState(Lcom/miui/bubbles/data/EdgeState;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->this$1:Lcom/miui/bubbles/BubbleStackView$3;

    iget-object v0, v0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/miui/bubbles/BubbleStackView;->access$300(Lcom/miui/bubbles/BubbleStackView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$touchedBubble:Lcom/miui/bubbles/Bubble;

    new-instance v2, Lcom/miui/bubbles/s;

    invoke-direct {v2, p0, v1}, Lcom/miui/bubbles/s;-><init>(Lcom/miui/bubbles/BubbleStackView$3$1;Lcom/miui/bubbles/Bubble;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bubble="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$touchedBubble:Lcom/miui/bubbles/Bubble;

    invoke-virtual {v2}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "switch to mini/freeform failed, then back to edge: finalBounds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MiuiBubbles.BSV"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->this$1:Lcom/miui/bubbles/BubbleStackView$3;

    iget-object v0, v0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/miui/bubbles/BubbleStackView;->access$600(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubblePositioner;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$touchedBubble:Lcom/miui/bubbles/Bubble;

    iget-object v4, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4}, Lcom/miui/bubbles/BubblePositioner;->adjustEdgeToAvoidIntersect(Lcom/miui/bubbles/Bubble;Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$touchedBubble:Lcom/miui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "after pre mode bounds to edge horizontal, finalBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    sget-object v1, Lcom/miui/bubbles/data/EdgeState;->ANIMATING:Lcom/miui/bubbles/data/EdgeState;

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/views/BubbleImageView;->setEdgeState(Lcom/miui/bubbles/data/EdgeState;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    new-instance v2, Lcom/miui/bubbles/t;

    invoke-direct {v2, v1}, Lcom/miui/bubbles/t;-><init>(Lcom/miui/bubbles/views/BubbleImageView;)V

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$finalBounds:Landroid/graphics/Rect;

    invoke-static {v0, v2, v1}, Lcom/miui/bubbles/animation/BubbleAnimator;->animMoveBubbleTo(Landroid/view/View;Ljava/lang/Runnable;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$v:Landroid/view/View;

    check-cast v0, Lcom/miui/bubbles/views/BubbleImageView;

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$finalBounds:Landroid/graphics/Rect;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/bubbles/animation/BubbleAnimator;->animScaleTo(Lcom/miui/bubbles/views/BubbleImageView;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->this$1:Lcom/miui/bubbles/BubbleStackView$3;

    iget-object v0, v0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v0}, Lcom/miui/bubbles/BubbleStackView;->access$600(Lcom/miui/bubbles/BubbleStackView;)Lcom/miui/bubbles/BubblePositioner;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$touchedBubble:Lcom/miui/bubbles/Bubble;

    iget-object v2, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$finalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/miui/bubbles/BubblePositioner;->setBubbleRect(Lcom/miui/bubbles/Bubble;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$finalBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView$3$1;->val$touchedBubble:Lcom/miui/bubbles/Bubble;

    iget v1, v1, Lcom/miui/bubbles/Bubble;->stackId:I

    invoke-static {v0, v1}, Lmiui/app/MiuiFreeFormManager;->updatePinFloatingWindowPos(Landroid/graphics/Rect;I)V

    :goto_0
    return-void
.end method
