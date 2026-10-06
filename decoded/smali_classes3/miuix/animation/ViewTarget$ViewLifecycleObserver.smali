.class public Lmiuix/animation/ViewTarget$ViewLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewLifecycleObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/animation/ViewTarget;


# direct methods
.method protected constructor <init>(Lmiuix/animation/ViewTarget;)V
    .locals 0

    iput-object p1, p0, Lmiuix/animation/ViewTarget$ViewLifecycleObserver;->this$0:Lmiuix/animation/ViewTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;
    .end annotation

    iget-object v0, p0, Lmiuix/animation/ViewTarget$ViewLifecycleObserver;->this$0:Lmiuix/animation/ViewTarget;

    invoke-static {v0}, Lmiuix/animation/ViewTarget;->access$400(Lmiuix/animation/ViewTarget;)V

    return-void
.end method

.method onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/l$a;->ON_RESUME:Landroidx/lifecycle/l$a;
    .end annotation

    iget-object v0, p0, Lmiuix/animation/ViewTarget$ViewLifecycleObserver;->this$0:Lmiuix/animation/ViewTarget;

    invoke-static {v0}, Lmiuix/animation/ViewTarget;->access$200(Lmiuix/animation/ViewTarget;)V

    return-void
.end method

.method onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/l$a;->ON_RESUME:Landroidx/lifecycle/l$a;
    .end annotation

    invoke-static {}, Lmiuix/animation/Folme;->enableSleep()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/animation/ViewTarget$ViewLifecycleObserver;->this$0:Lmiuix/animation/ViewTarget;

    invoke-static {v0}, Lmiuix/animation/ViewTarget;->access$300(Lmiuix/animation/ViewTarget;)V

    :cond_0
    return-void
.end method
