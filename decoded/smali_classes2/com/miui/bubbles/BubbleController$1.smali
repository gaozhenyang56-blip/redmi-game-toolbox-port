.class Lcom/miui/bubbles/BubbleController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/bubbles/BubbleData$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/BubbleController;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/BubbleController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/BubbleController$1;->this$0:Lcom/miui/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyUpdate(Lcom/miui/bubbles/BubbleData$Update;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController$1;->this$0:Lcom/miui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/miui/bubbles/BubbleController;->access$000(Lcom/miui/bubbles/BubbleController;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/miui/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/miui/bubbles/Bubble;

    iget-object v2, p0, Lcom/miui/bubbles/BubbleController$1;->this$0:Lcom/miui/bubbles/BubbleController;

    invoke-static {v2}, Lcom/miui/bubbles/BubbleController;->access$100(Lcom/miui/bubbles/BubbleController;)Lcom/miui/bubbles/BubbleStackView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/bubbles/BubbleController$1;->this$0:Lcom/miui/bubbles/BubbleController;

    invoke-static {v2}, Lcom/miui/bubbles/BubbleController;->access$100(Lcom/miui/bubbles/BubbleController;)Lcom/miui/bubbles/BubbleStackView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/bubbles/BubbleStackView;->removeBubble(Lcom/miui/bubbles/Bubble;)V

    :cond_0
    iget-object v2, p0, Lcom/miui/bubbles/BubbleController$1;->this$0:Lcom/miui/bubbles/BubbleController;

    invoke-static {v2}, Lcom/miui/bubbles/BubbleController;->access$200(Lcom/miui/bubbles/BubbleController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/bubbles/settings/BubblesSettings;->removeActiveBubble(Lcom/miui/bubbles/Bubble;)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/miui/bubbles/BubbleData$Update;->addedBubble:Lcom/miui/bubbles/Bubble;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController$1;->this$0:Lcom/miui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/miui/bubbles/BubbleController;->access$100(Lcom/miui/bubbles/BubbleController;)Lcom/miui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController$1;->this$0:Lcom/miui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/miui/bubbles/BubbleController;->access$100(Lcom/miui/bubbles/BubbleController;)Lcom/miui/bubbles/BubbleStackView;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/bubbles/BubbleData$Update;->addedBubble:Lcom/miui/bubbles/Bubble;

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/BubbleStackView;->addBubble(Lcom/miui/bubbles/Bubble;)V

    :cond_2
    iget-object v0, p1, Lcom/miui/bubbles/BubbleData$Update;->updatedBubble:Lcom/miui/bubbles/Bubble;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController$1;->this$0:Lcom/miui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/miui/bubbles/BubbleController;->access$100(Lcom/miui/bubbles/BubbleController;)Lcom/miui/bubbles/BubbleStackView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/bubbles/BubbleController$1;->this$0:Lcom/miui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/miui/bubbles/BubbleController;->access$100(Lcom/miui/bubbles/BubbleController;)Lcom/miui/bubbles/BubbleStackView;

    move-result-object v0

    iget-object p1, p1, Lcom/miui/bubbles/BubbleData$Update;->updatedBubble:Lcom/miui/bubbles/Bubble;

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/BubbleStackView;->updateBubble(Lcom/miui/bubbles/Bubble;)V

    :cond_3
    iget-object p1, p0, Lcom/miui/bubbles/BubbleController$1;->this$0:Lcom/miui/bubbles/BubbleController;

    invoke-static {p1}, Lcom/miui/bubbles/BubbleController;->access$300(Lcom/miui/bubbles/BubbleController;)V

    return-void
.end method
