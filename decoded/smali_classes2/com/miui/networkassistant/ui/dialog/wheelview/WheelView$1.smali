.class Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->access$000(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->notifyScrollingListenersAboutEnd()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->access$002(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->access$202(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;I)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onJustify()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->access$200(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->access$300(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->access$200(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;->scroll(II)V

    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->access$100(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->access$200(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)I

    move-result v0

    if-le v0, p1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->access$202(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;I)I

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->access$300(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelScroller;->stopScrolling()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->access$200(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;)I

    move-result v0

    neg-int p1, p1

    if-ge v0, p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onStarted()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->access$002(Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView$1;->this$0:Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/wheelview/WheelView;->notifyScrollingListenersAboutStart()V

    return-void
.end method
