.class Lcom/miui/warningcenter/MiuiStatusBarCapsule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/MiuiStatusBarCapsule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/MiuiStatusBarCapsule;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/MiuiStatusBarCapsule;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$1;->this$0:Lcom/miui/warningcenter/MiuiStatusBarCapsule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreate(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->a(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/v;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$1;->this$0:Lcom/miui/warningcenter/MiuiStatusBarCapsule;

    invoke-virtual {v0}, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->dismiss()V

    invoke-interface {p1}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/u;)V

    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->c(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->d(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/warningcenter/MiuiStatusBarCapsule$1;->this$0:Lcom/miui/warningcenter/MiuiStatusBarCapsule;

    invoke-virtual {p1}, Lcom/miui/warningcenter/MiuiStatusBarCapsule;->show()V

    return-void
.end method

.method public bridge synthetic onStop(Landroidx/lifecycle/v;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->f(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    return-void
.end method
