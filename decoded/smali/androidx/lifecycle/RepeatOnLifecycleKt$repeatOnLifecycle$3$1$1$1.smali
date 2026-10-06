.class final Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/l$a;

.field final synthetic b:Lbk/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbk/y<",
            "Llk/s1;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Llk/i0;

.field final synthetic d:Landroidx/lifecycle/l$a;

.field final synthetic e:Llk/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llk/l<",
            "Loj/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lkotlinx/coroutines/sync/b;

.field final synthetic g:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Llk/i0;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/lifecycle/l$a;Lbk/y;Llk/i0;Landroidx/lifecycle/l$a;Llk/l;Lkotlinx/coroutines/sync/b;Lak/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/l$a;",
            "Lbk/y<",
            "Llk/s1;",
            ">;",
            "Llk/i0;",
            "Landroidx/lifecycle/l$a;",
            "Llk/l<",
            "-",
            "Loj/t;",
            ">;",
            "Lkotlinx/coroutines/sync/b;",
            "Lak/p<",
            "-",
            "Llk/i0;",
            "-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->a:Landroidx/lifecycle/l$a;

    iput-object p2, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->b:Lbk/y;

    iput-object p3, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->c:Llk/i0;

    iput-object p4, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->d:Landroidx/lifecycle/l$a;

    iput-object p5, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->e:Llk/l;

    iput-object p6, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->f:Lkotlinx/coroutines/sync/b;

    iput-object p7, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->g:Lak/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/v;Landroidx/lifecycle/l$a;)V
    .locals 7
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/l$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->a:Landroidx/lifecycle/l$a;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->b:Lbk/y;

    iget-object v1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->c:Llk/i0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$a;

    iget-object p2, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->f:Lkotlinx/coroutines/sync/b;

    iget-object v5, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->g:Lak/p;

    invoke-direct {v4, p2, v5, v0}, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$a;-><init>(Lkotlinx/coroutines/sync/b;Lak/p;Ltj/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    move-result-object p2

    iput-object p2, p1, Lbk/y;->a:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->d:Landroidx/lifecycle/l$a;

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->b:Lbk/y;

    iget-object p1, p1, Lbk/y;->a:Ljava/lang/Object;

    check-cast p1, Llk/s1;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->b:Lbk/y;

    iput-object v0, p1, Lbk/y;->a:Ljava/lang/Object;

    :cond_2
    sget-object p1, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Landroidx/lifecycle/RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1;->e:Llk/l;

    sget-object p2, Loj/m;->b:Loj/m$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-static {p2}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
