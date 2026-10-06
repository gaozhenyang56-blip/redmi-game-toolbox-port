.class public final Landroidx/lifecycle/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLifecycleController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleController.kt\nandroidx/lifecycle/LifecycleController\n*L\n1#1,70:1\n57#1,3:71\n57#1,3:74\n*S KotlinDebug\n*F\n+ 1 LifecycleController.kt\nandroidx/lifecycle/LifecycleController\n*L\n49#1:71,3\n36#1:74,3\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/l;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroidx/lifecycle/l$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroidx/lifecycle/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Landroidx/lifecycle/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/lifecycle/l;Landroidx/lifecycle/l$b;Landroidx/lifecycle/g;Llk/s1;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/l$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/lifecycle/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Llk/s1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minState"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatchQueue"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentJob"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/l;

    iput-object p2, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/l$b;

    iput-object p3, p0, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/g;

    new-instance p2, Landroidx/lifecycle/m;

    invoke-direct {p2, p0, p4}, Landroidx/lifecycle/m;-><init>(Landroidx/lifecycle/n;Llk/s1;)V

    iput-object p2, p0, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/r;

    invoke-virtual {p1}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object p3

    sget-object v0, Landroidx/lifecycle/l$b;->a:Landroidx/lifecycle/l$b;

    if-ne p3, v0, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p4, p2, p1, p2}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/lifecycle/n;->b()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/u;)V

    :goto_0
    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/n;Llk/s1;Landroidx/lifecycle/v;Landroidx/lifecycle/l$a;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/lifecycle/n;->c(Landroidx/lifecycle/n;Llk/s1;Landroidx/lifecycle/v;Landroidx/lifecycle/l$a;)V

    return-void
.end method

.method private static final c(Landroidx/lifecycle/n;Llk/s1;Landroidx/lifecycle/v;Landroidx/lifecycle/l$a;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$parentJob"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object p3

    sget-object v0, Landroidx/lifecycle/l$b;->a:Landroidx/lifecycle/l$b;

    if-ne p3, v0, :cond_0

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {p1, p3, p2, p3}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/lifecycle/n;->b()V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/l;->b()Landroidx/lifecycle/l$b;

    move-result-object p1

    iget-object p2, p0, Landroidx/lifecycle/n;->b:Landroidx/lifecycle/l$b;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    iget-object p0, p0, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/g;

    if-gez p1, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/g;->h()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/lifecycle/g;->i()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/l;

    iget-object v1, p0, Landroidx/lifecycle/n;->d:Landroidx/lifecycle/r;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->d(Landroidx/lifecycle/u;)V

    iget-object v0, p0, Landroidx/lifecycle/n;->c:Landroidx/lifecycle/g;

    invoke-virtual {v0}, Landroidx/lifecycle/g;->g()V

    return-void
.end method
