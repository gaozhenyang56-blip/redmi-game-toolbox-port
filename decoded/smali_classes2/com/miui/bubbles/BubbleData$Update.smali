.class final Lcom/miui/bubbles/BubbleData$Update;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/BubbleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Update"
.end annotation


# instance fields
.field addedBubble:Lcom/miui/bubbles/Bubble;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final bubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field final removedBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/miui/bubbles/Bubble;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field updatedBubble:Lcom/miui/bubbles/Bubble;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/bubbles/Bubble;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/miui/bubbles/BubbleData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method anythingChanged()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleData$Update;->addedBubble:Lcom/miui/bubbles/Bubble;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleData$Update;->updatedBubble:Lcom/miui/bubbles/Bubble;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method bubbleRemoved(Lcom/miui/bubbles/Bubble;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
