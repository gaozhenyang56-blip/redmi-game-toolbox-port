.class public Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# instance fields
.field protected mActivityIdentity:Ljava/lang/String;

.field protected mActivityTaskId:I


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getActivityIdentity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->mActivityIdentity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->mActivityTaskId:I

    return-void
.end method


# virtual methods
.method protected getActivityIdentity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->mActivityIdentity:Ljava/lang/String;

    return-object v0
.end method

.method protected getActivityTaskId()I
    .locals 1

    iget v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingLifecycleObserver;->mActivityTaskId:I

    return v0
.end method

.method public onCreate()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/l$a;->ON_CREATE:Landroidx/lifecycle/l$a;
    .end annotation

    return-void
.end method

.method public onDestroy()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/l$a;->ON_PAUSE:Landroidx/lifecycle/l$a;
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/l$a;->ON_RESUME:Landroidx/lifecycle/l$a;
    .end annotation

    return-void
.end method
