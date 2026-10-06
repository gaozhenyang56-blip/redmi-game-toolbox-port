.class Lcom/miui/warningcenter/AlertWindowHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/AlertWindowHelper;->delegate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/AlertWindowHelper;

.field final synthetic val$isFinishWhenPaused:Z


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/AlertWindowHelper;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/AlertWindowHelper$1;->this$0:Lcom/miui/warningcenter/AlertWindowHelper;

    iput-boolean p2, p0, Lcom/miui/warningcenter/AlertWindowHelper$1;->val$isFinishWhenPaused:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/warningcenter/AlertWindowHelper$1;->this$0:Lcom/miui/warningcenter/AlertWindowHelper;

    invoke-static {p1}, Lcom/miui/warningcenter/AlertWindowHelper;->access$000(Lcom/miui/warningcenter/AlertWindowHelper;)V

    iget-object p1, p0, Lcom/miui/warningcenter/AlertWindowHelper$1;->this$0:Lcom/miui/warningcenter/AlertWindowHelper;

    invoke-static {p1}, Lcom/miui/warningcenter/AlertWindowHelper;->access$100(Lcom/miui/warningcenter/AlertWindowHelper;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/u;)V

    iget-object p1, p0, Lcom/miui/warningcenter/AlertWindowHelper$1;->this$0:Lcom/miui/warningcenter/AlertWindowHelper;

    iget-object p1, p1, Lcom/miui/warningcenter/AlertWindowHelper;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object p1, p0, Lcom/miui/warningcenter/AlertWindowHelper$1;->this$0:Lcom/miui/warningcenter/AlertWindowHelper;

    invoke-static {p1}, Lcom/miui/warningcenter/AlertWindowHelper;->access$300(Lcom/miui/warningcenter/AlertWindowHelper;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResume(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public bridge synthetic onStart(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->e(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/v;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->f(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    iget-boolean p1, p0, Lcom/miui/warningcenter/AlertWindowHelper$1;->val$isFinishWhenPaused:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/AlertWindowHelper$1;->this$0:Lcom/miui/warningcenter/AlertWindowHelper;

    invoke-static {p1}, Lcom/miui/warningcenter/AlertWindowHelper;->access$200(Lcom/miui/warningcenter/AlertWindowHelper;)Landroidx/activity/ComponentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/warningcenter/AlertWindowHelper;->isForeground(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/AlertWindowHelper$1;->this$0:Lcom/miui/warningcenter/AlertWindowHelper;

    invoke-static {p1}, Lcom/miui/warningcenter/AlertWindowHelper;->access$200(Lcom/miui/warningcenter/AlertWindowHelper;)Landroidx/activity/ComponentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
