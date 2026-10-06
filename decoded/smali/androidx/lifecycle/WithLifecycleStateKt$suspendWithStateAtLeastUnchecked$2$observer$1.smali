.class public final Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field final synthetic a:Landroidx/lifecycle/l$b;

.field final synthetic b:Landroidx/lifecycle/l;

.field final synthetic c:Llk/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llk/l<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lak/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Landroidx/lifecycle/v;Landroidx/lifecycle/l$a;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/l$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/lifecycle/l$a;->Companion:Landroidx/lifecycle/l$a$a;

    iget-object v0, p0, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;->a:Landroidx/lifecycle/l$b;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/l$a$a;->c(Landroidx/lifecycle/l$b;)Landroidx/lifecycle/l$a;

    move-result-object p1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;->b:Landroidx/lifecycle/l;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/u;)V

    iget-object p1, p0, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;->c:Llk/l;

    iget-object p2, p0, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;->d:Lak/a;

    :try_start_0
    sget-object v0, Loj/m;->b:Loj/m$a;

    invoke-interface {p2}, Lak/a;->invoke()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    sget-object v0, Loj/m;->b:Loj/m$a;

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;->b:Landroidx/lifecycle/l;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/u;)V

    iget-object p1, p0, Landroidx/lifecycle/WithLifecycleStateKt$suspendWithStateAtLeastUnchecked$2$observer$1;->c:Llk/l;

    sget-object p2, Loj/m;->b:Loj/m$a;

    new-instance p2, Landroidx/lifecycle/p;

    invoke-direct {p2}, Landroidx/lifecycle/p;-><init>()V

    :goto_0
    invoke-static {p2}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_1
    invoke-interface {p1, p2}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
