.class Lcom/miui/bubbles/views/BubbleMessageView$1;
.super Lcom/miui/bubbles/RelativeTouchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/views/BubbleMessageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/views/BubbleMessageView;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/views/BubbleMessageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$1;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-direct {p0}, Lcom/miui/bubbles/RelativeTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p2, p0, Lcom/miui/bubbles/views/BubbleMessageView$1;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-static {p2}, Lcom/miui/bubbles/views/BubbleMessageView;->access$000(Lcom/miui/bubbles/views/BubbleMessageView;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V
    .locals 1

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$1;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-static {p1}, Lcom/miui/bubbles/views/BubbleMessageView;->access$100(Lcom/miui/bubbles/views/BubbleMessageView;)Z

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    cmpl-float p1, p5, p4

    if-gtz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$1;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-static {p1}, Lcom/miui/bubbles/views/BubbleMessageView;->access$100(Lcom/miui/bubbles/views/BubbleMessageView;)Z

    move-result p1

    if-nez p1, :cond_3

    cmpg-float p1, p5, p4

    if-gez p1, :cond_3

    :cond_1
    cmpl-float p1, p5, p4

    if-ltz p1, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    const/high16 p1, -0x40800000    # -1.0f

    :goto_0
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p4

    iget-object p5, p0, Lcom/miui/bubbles/views/BubbleMessageView$1;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-static {p5}, Lcom/miui/bubbles/views/BubbleMessageView;->access$200(Lcom/miui/bubbles/views/BubbleMessageView;)Lcom/miui/bubbles/BubblePositioner;

    move-result-object p5

    invoke-virtual {p5}, Lcom/miui/bubbles/BubblePositioner;->getAvailableRect()Landroid/graphics/Rect;

    move-result-object p5

    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    invoke-static {p4, p5}, Lmiuix/animation/Folme;->afterFrictionValue(FF)F

    move-result p4

    const p5, 0x3dcccccd    # 0.1f

    mul-float/2addr p4, p5

    mul-float p5, p4, p1

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$1;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-virtual {p1, p2}, Lcom/miui/bubbles/views/BubbleMessageView;->setAlpha(F)V

    goto :goto_1

    :cond_3
    const/high16 p1, 0x43160000    # 150.0f

    invoke-static {p5, p4, p1}, Lmiuix/animation/Folme;->perFromValue(FFF)F

    move-result p1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, p4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/4 p4, 0x1

    new-array p6, p4, [Landroid/view/View;

    iget-object p7, p0, Lcom/miui/bubbles/views/BubbleMessageView$1;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    const/4 p8, 0x0

    aput-object p7, p6, p8

    invoke-static {p6}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p6

    invoke-interface {p6}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p6

    const/4 p7, 0x2

    new-array p7, p7, [Ljava/lang/Object;

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v0, p7, p8

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p7, p4

    invoke-interface {p6, p7}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_1
    add-float/2addr p3, p5

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$1;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-static {p1, p3}, Lcom/miui/bubbles/views/BubbleMessageView;->access$302(Lcom/miui/bubbles/views/BubbleMessageView;F)F

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$1;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public onUp(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V
    .locals 0

    iget-object p2, p0, Lcom/miui/bubbles/views/BubbleMessageView$1;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-static {p2}, Lcom/miui/bubbles/views/BubbleMessageView;->access$100(Lcom/miui/bubbles/views/BubbleMessageView;)Z

    move-result p2

    const/4 p4, 0x0

    const/4 p6, 0x1

    if-eqz p2, :cond_0

    const/high16 p2, -0x3b860000    # -1000.0f

    cmpl-float p2, p7, p2

    if-lez p2, :cond_1

    const/high16 p2, -0x3cea0000    # -150.0f

    cmpl-float p2, p5, p2

    if-lez p2, :cond_1

    goto :goto_0

    :cond_0
    const/high16 p2, 0x447a0000    # 1000.0f

    cmpg-float p2, p7, p2

    if-gez p2, :cond_1

    const/high16 p2, 0x43160000    # 150.0f

    cmpg-float p2, p5, p2

    if-gez p2, :cond_1

    :goto_0
    move p2, p6

    goto :goto_1

    :cond_1
    move p2, p4

    :goto_1
    if-eqz p2, :cond_2

    invoke-static {p1, p3}, Lcom/miui/bubbles/animation/BubbleAnimator;->moveMessageToPosition(Landroid/view/View;F)V

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$1;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-virtual {p1}, Lcom/miui/bubbles/views/BubbleMessageView;->hideFlyoutDelay()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$1;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-virtual {p1, p6}, Lcom/miui/bubbles/views/BubbleMessageView;->animateFlyoutCollapsed(Z)V

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$1;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-static {p1}, Lcom/miui/bubbles/views/BubbleMessageView;->access$400(Lcom/miui/bubbles/views/BubbleMessageView;)Lcom/miui/bubbles/Bubble;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/miui/bubbles/utils/BubbleMessageTrackUtil;->trackBubbleMessageCollapsed(Lcom/miui/bubbles/Bubble;Z)V

    :goto_2
    return-void
.end method
