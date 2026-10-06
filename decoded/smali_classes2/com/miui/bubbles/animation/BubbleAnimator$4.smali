.class Lcom/miui/bubbles/animation/BubbleAnimator$4;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/bubbles/animation/BubbleAnimator;->showPinnedAppFromRestore(Lcom/miui/bubbles/views/BubbleImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$iconView:Lcom/miui/bubbles/views/BubbleImageView;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/views/BubbleImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/animation/BubbleAnimator$4;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/bubbles/animation/BubbleAnimator$4;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/bubbles/animation/BubbleAnimator$4;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    sget-object v0, Lcom/miui/bubbles/data/EdgeState;->PINNED:Lcom/miui/bubbles/data/EdgeState;

    invoke-virtual {p1, v0}, Lcom/miui/bubbles/views/BubbleImageView;->setEdgeState(Lcom/miui/bubbles/data/EdgeState;)V

    iget-object p1, p0, Lcom/miui/bubbles/animation/BubbleAnimator$4;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
