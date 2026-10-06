.class public Lcom/miui/bubbles/BubbleData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/bubbles/BubbleData$Update;,
        Lcom/miui/bubbles/BubbleData$Listener;
    }
.end annotation


# instance fields
.field private final mBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/miui/bubbles/BubbleData$Listener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mStateChange:Lcom/miui/bubbles/BubbleData$Update;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    new-instance v1, Lcom/miui/bubbles/BubbleData$Update;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/miui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Lcom/miui/bubbles/BubbleData$1;)V

    iput-object v1, p0, Lcom/miui/bubbles/BubbleData;->mStateChange:Lcom/miui/bubbles/BubbleData$Update;

    return-void
.end method

.method private dispatchPendingChanges()V
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/BubbleData;->mListener:Lcom/miui/bubbles/BubbleData$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/bubbles/BubbleData;->mStateChange:Lcom/miui/bubbles/BubbleData$Update;

    invoke-virtual {v0}, Lcom/miui/bubbles/BubbleData$Update;->anythingChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/bubbles/BubbleData;->mListener:Lcom/miui/bubbles/BubbleData$Listener;

    iget-object v1, p0, Lcom/miui/bubbles/BubbleData;->mStateChange:Lcom/miui/bubbles/BubbleData$Update;

    invoke-interface {v0, v1}, Lcom/miui/bubbles/BubbleData$Listener;->applyUpdate(Lcom/miui/bubbles/BubbleData$Update;)V

    :cond_0
    new-instance v0, Lcom/miui/bubbles/BubbleData$Update;

    iget-object v1, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Lcom/miui/bubbles/BubbleData$1;)V

    iput-object v0, p0, Lcom/miui/bubbles/BubbleData;->mStateChange:Lcom/miui/bubbles/BubbleData$Update;

    return-void
.end method

.method private doAdd(Landroid/content/Context;Lcom/miui/bubbles/Bubble;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/bubbles/BubbleController;->isRunningInFreeformMode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/bubbles/BubbleData;->mStateChange:Lcom/miui/bubbles/BubbleData$Update;

    iput-object p2, p1, Lcom/miui/bubbles/BubbleData$Update;->addedBubble:Lcom/miui/bubbles/Bubble;

    const/4 p1, 0x1

    return p1
.end method

.method private doRemove(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/bubbles/BubbleData;->indexForKey(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v0}, Lcom/miui/bubbles/Bubble;->stopInflation()V

    iget-object v1, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/bubbles/BubbleData;->mStateChange:Lcom/miui/bubbles/BubbleData$Update;

    invoke-virtual {p1, v0, p2}, Lcom/miui/bubbles/BubbleData$Update;->bubbleRemoved(Lcom/miui/bubbles/Bubble;I)V

    return-void
.end method

.method private doUpdate(Lcom/miui/bubbles/Bubble;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleData;->mStateChange:Lcom/miui/bubbles/BubbleData$Update;

    iput-object p1, v0, Lcom/miui/bubbles/BubbleData$Update;->updatedBubble:Lcom/miui/bubbles/Bubble;

    return-void
.end method

.method private indexForKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public bubbleEntryUpdated(Landroid/content/Context;Lcom/miui/bubbles/Bubble;)V
    .locals 1

    invoke-virtual {p2}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/miui/bubbles/Bubble;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/bubbles/BubbleData;->doAdd(Landroid/content/Context;Lcom/miui/bubbles/Bubble;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/bubbles/BubbleData;->doUpdate(Lcom/miui/bubbles/Bubble;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public dismissBubbleWithKey(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/bubbles/BubbleData;->doRemove(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/miui/bubbles/BubbleData;->dispatchPendingChanges()V

    return-void
.end method

.method public getBubbleInStackWithKey(Ljava/lang/String;)Lcom/miui/bubbles/Bubble;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBubbleWithPackageAndUserId(Ljava/lang/String;I)Lcom/miui/bubbles/Bubble;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/miui/bubbles/Bubble;->userId:I

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBubbleWithView(Landroid/view/View;)Lcom/miui/bubbles/Bubble;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/bubbles/Bubble;

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getIconView()Lcom/miui/bubbles/views/BubbleImageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBubbles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/bubbles/Bubble;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOrCreateBubble(Lcom/miui/bubbles/data/BubbleEntry;Ljava/util/concurrent/Executor;)Lcom/miui/bubbles/Bubble;
    .locals 1

    invoke-virtual {p1}, Lcom/miui/bubbles/data/BubbleEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/miui/bubbles/Bubble;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/bubbles/Bubble;

    invoke-direct {v0, p1, p2}, Lcom/miui/bubbles/Bubble;-><init>(Lcom/miui/bubbles/data/BubbleEntry;Ljava/util/concurrent/Executor;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/bubbles/Bubble;->updateEntryData(Lcom/miui/bubbles/data/BubbleEntry;)V

    return-object v0
.end method

.method public hasBubbleInStackWithKey(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/bubbles/BubbleData;->getBubbleInStackWithKey(Ljava/lang/String;)Lcom/miui/bubbles/Bubble;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hasBubbles()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/BubbleData;->mBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setListener(Lcom/miui/bubbles/BubbleData$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/BubbleData;->mListener:Lcom/miui/bubbles/BubbleData$Listener;

    return-void
.end method
