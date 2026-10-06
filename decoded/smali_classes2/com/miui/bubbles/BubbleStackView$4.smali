.class Lcom/miui/bubbles/BubbleStackView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/bubbles/views/BubbleMessageView$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/bubbles/BubbleStackView;->lambda$animateInMessageForBubble$5(Lcom/miui/bubbles/Bubble;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/BubbleStackView;

.field final synthetic val$iconView:Lcom/miui/bubbles/views/BubbleImageView;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/BubbleStackView;Lcom/miui/bubbles/views/BubbleImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/BubbleStackView$4;->this$0:Lcom/miui/bubbles/BubbleStackView;

    iput-object p2, p0, Lcom/miui/bubbles/BubbleStackView$4;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHide()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$4;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView$4;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v1}, Lcom/miui/bubbles/BubbleStackView;->access$300(Lcom/miui/bubbles/BubbleStackView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/views/BubbleImageView;->postReduceAlphaTask(Landroid/os/Handler;)V

    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$4;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    invoke-static {v0}, Lcom/miui/bubbles/animation/BubbleAnimator;->resetEdgeAlpha(Landroid/view/View;)V

    return-void
.end method
