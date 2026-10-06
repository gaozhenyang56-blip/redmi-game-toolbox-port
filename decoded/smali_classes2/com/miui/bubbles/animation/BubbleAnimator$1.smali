.class Lcom/miui/bubbles/animation/BubbleAnimator$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/bubbles/animation/BubbleAnimator;->animScaleTo(Lcom/miui/bubbles/views/BubbleImageView;Landroid/graphics/Rect;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/views/BubbleImageView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/animation/BubbleAnimator$1;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    iput-object p2, p0, Lcom/miui/bubbles/animation/BubbleAnimator$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/bubbles/animation/BubbleAnimator$1;->val$onComplete:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
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

    const-string p1, "scale_background_width"

    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    const-string v0, "scale_background_height"

    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v0

    const-string v1, "scale_corner_radius"

    invoke-static {p2, v1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/bubbles/animation/BubbleAnimator$1;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    invoke-virtual {v0}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/miui/bubbles/views/BubbleImageView;->scaleTo(II)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/miui/bubbles/animation/BubbleAnimator$1;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/bubbles/views/BubbleImageView;->setBubbleCornerRadius(F)V

    :cond_1
    iget-object p1, p0, Lcom/miui/bubbles/animation/BubbleAnimator$1;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
