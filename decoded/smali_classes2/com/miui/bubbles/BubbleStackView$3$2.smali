.class Lcom/miui/bubbles/BubbleStackView$3$2;
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
.field final synthetic this$1:Lcom/miui/bubbles/BubbleStackView$3;

.field final synthetic val$iconView:Lcom/miui/bubbles/views/BubbleImageView;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/BubbleStackView$3;Lcom/miui/bubbles/views/BubbleImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/BubbleStackView$3$2;->this$1:Lcom/miui/bubbles/BubbleStackView$3;

    iput-object p2, p0, Lcom/miui/bubbles/BubbleStackView$3$2;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$3$2;->this$1:Lcom/miui/bubbles/BubbleStackView$3;

    iget-object v0, v0, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$3$2;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    iget-object v1, p0, Lcom/miui/bubbles/BubbleStackView$3$2;->this$1:Lcom/miui/bubbles/BubbleStackView$3;

    iget-object v1, v1, Lcom/miui/bubbles/BubbleStackView$3;->this$0:Lcom/miui/bubbles/BubbleStackView;

    invoke-static {v1}, Lcom/miui/bubbles/BubbleStackView;->access$300(Lcom/miui/bubbles/BubbleStackView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/views/BubbleImageView;->postReduceAlphaTask(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$3$2;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    sget-object v1, Lcom/miui/bubbles/data/EdgeState;->PINNED:Lcom/miui/bubbles/data/EdgeState;

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/views/BubbleImageView;->setEdgeState(Lcom/miui/bubbles/data/EdgeState;)V

    iget-object v0, p0, Lcom/miui/bubbles/BubbleStackView$3$2;->val$iconView:Lcom/miui/bubbles/views/BubbleImageView;

    invoke-virtual {v0}, Lcom/miui/bubbles/views/BubbleImageView;->getDragState()Lcom/miui/bubbles/views/BubbleImageView$DragState;

    move-result-object v0

    sget-object v1, Lcom/miui/bubbles/data/FreeformMode;->MODE_EDGE:Lcom/miui/bubbles/data/FreeformMode;

    iput-object v1, v0, Lcom/miui/bubbles/views/BubbleImageView$DragState;->preMode:Lcom/miui/bubbles/data/FreeformMode;

    return-void
.end method
