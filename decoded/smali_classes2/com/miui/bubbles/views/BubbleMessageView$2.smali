.class Lcom/miui/bubbles/views/BubbleMessageView$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/bubbles/views/BubbleMessageView;->animateFlyoutCollapsed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/views/BubbleMessageView;

.field final synthetic val$startLeftX:F

.field final synthetic val$startRightX:F


# direct methods
.method constructor <init>(Lcom/miui/bubbles/views/BubbleMessageView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    iput p2, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->val$startRightX:F

    iput p3, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->val$startLeftX:F

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/bubbles/views/BubbleMessageView;->access$500(Lcom/miui/bubbles/views/BubbleMessageView;Z)V

    return-void
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    const-string p1, "width"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    const-string v0, "translationDeltaX"

    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-static {p1}, Lcom/miui/bubbles/views/BubbleMessageView;->access$100(Lcom/miui/bubbles/views/BubbleMessageView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->val$startRightX:F

    invoke-virtual {v0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v1, v0

    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->val$startRightX:F

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    iget v1, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->val$startLeftX:F

    invoke-virtual {v0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-static {p1}, Lcom/miui/bubbles/views/BubbleMessageView;->access$100(Lcom/miui/bubbles/views/BubbleMessageView;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    const-string p1, "scaleX"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    const-string v0, "scaleY"

    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-virtual {v0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    :cond_4
    const-string p1, "alpha"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/miui/bubbles/views/BubbleMessageView;->setAlpha(F)V

    :cond_5
    iget-object p1, p0, Lcom/miui/bubbles/views/BubbleMessageView$2;->this$0:Lcom/miui/bubbles/views/BubbleMessageView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
