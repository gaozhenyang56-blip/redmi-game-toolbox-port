.class public abstract Lcom/miui/maml/ActionCommand$StateTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2

    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final isTurningOn()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v2, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    goto :goto_3

    :cond_0
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    :goto_0
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    :goto_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    iput-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    :goto_3
    if-eqz v0, :cond_6

    iget-boolean p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    if-nez p2, :cond_6

    iget-boolean p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz p2, :cond_6

    const-string p2, "ActionCommand"

    const-string v0, "processing deferred state change"

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "... but intended state matches, so no changes."

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    iget-object p2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz p2, :cond_5

    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    :cond_5
    :goto_4
    iput-boolean v1, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    :cond_6
    return-void
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/miui/maml/ActionCommand$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-boolean v0, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/miui/maml/ActionCommand$StateTracker;->mInTransition:Z

    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/ActionCommand$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    :goto_1
    return-void
.end method
