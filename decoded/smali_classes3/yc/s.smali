.class public final Lyc/s;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyc/s$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWakePathViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WakePathViewModel.kt\ncom/miui/permcenter/wakepath/WakePathViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,275:1\n1855#2,2:276\n*S KotlinDebug\n*F\n+ 1 WakePathViewModel.kt\ncom/miui/permcenter/wakepath/WakePathViewModel\n*L\n186#1:276,2\n*E\n"
    }
.end annotation


# static fields
.field public static final j:Lyc/s$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lyc/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lkotlinx/coroutines/flow/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/r<",
            "Ljava/util/List<",
            "Lyc/r;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lkotlinx/coroutines/flow/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/w<",
            "Ljava/util/List<",
            "Lyc/r;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/util/List<",
            "Lyc/r;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/util/List<",
            "Lyc/r;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lyc/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyc/s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyc/s$a;-><init>(Lbk/g;)V

    sput-object v0, Lyc/s;->j:Lyc/s$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyc/s;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/coroutines/flow/y;->b(IILnk/e;ILjava/lang/Object;)Lkotlinx/coroutines/flow/r;

    move-result-object v0

    iput-object v0, p0, Lyc/s;->b:Lkotlinx/coroutines/flow/r;

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->a(Lkotlinx/coroutines/flow/r;)Lkotlinx/coroutines/flow/w;

    move-result-object v0

    iput-object v0, p0, Lyc/s;->c:Lkotlinx/coroutines/flow/w;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lyc/s;->d:Landroidx/lifecycle/c0;

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lyc/s;->e:Landroidx/lifecycle/c0;

    new-instance v0, Lyc/s$i;

    invoke-direct {v0}, Lyc/s$i;-><init>()V

    iput-object v0, p0, Lyc/s;->f:Ljava/util/Comparator;

    sget-boolean v0, Lcom/miui/permcenter/o;->t:Z

    iput-boolean v0, p0, Lyc/s;->h:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lyc/s;->i:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic a(Lyc/s;)V
    .locals 0

    invoke-direct {p0}, Lyc/s;->h()V

    return-void
.end method

.method public static final synthetic b(Lyc/s;)Z
    .locals 0

    iget-boolean p0, p0, Lyc/s;->g:Z

    return p0
.end method

.method public static final synthetic c(Lyc/s;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lyc/s;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic d(Lyc/s;)Z
    .locals 0

    iget-boolean p0, p0, Lyc/s;->h:Z

    return p0
.end method

.method public static final synthetic e(Lyc/s;)Lkotlinx/coroutines/flow/r;
    .locals 0

    iget-object p0, p0, Lyc/s;->b:Lkotlinx/coroutines/flow/r;

    return-object p0
.end method

.method public static final synthetic f(Lyc/s;Z)V
    .locals 0

    iput-boolean p1, p0, Lyc/s;->g:Z

    return-void
.end method

.method public static final synthetic g(Lyc/s;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lyc/s;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private final h()V
    .locals 3

    iget-object v0, p0, Lyc/s;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/r;

    invoke-virtual {v1}, Lyc/r;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lyc/r;->q(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic k(Lyc/s;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lyc/s;->j(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final i(Lyc/r;)V
    .locals 7
    .param p1    # Lyc/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "wakePathRuleInfo"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v1

    new-instance v4, Lyc/s$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lyc/s$b;-><init>(Lyc/s;Lyc/r;Ltj/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public final j(Ljava/lang/String;Z)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v0

    new-instance v3, Lyc/s$c;

    const/4 v1, 0x0

    invoke-direct {v3, p1, p0, p2, v1}, Lyc/s$c;-><init>(Ljava/lang/String;Lyc/s;ZLtj/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public final l()Lkotlinx/coroutines/flow/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/w<",
            "Ljava/util/List<",
            "Lyc/r;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyc/s;->c:Lkotlinx/coroutines/flow/w;

    return-object v0
.end method

.method public final m()Landroidx/lifecycle/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/c0<",
            "Ljava/util/List<",
            "Lyc/r;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyc/s;->d:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public final n()Landroidx/lifecycle/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/c0<",
            "Ljava/util/List<",
            "Lyc/r;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyc/s;->e:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public final o()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lyc/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyc/s;->f:Ljava/util/Comparator;

    return-object v0
.end method

.method public final p(Ljava/lang/String;)Lyc/r;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "caller"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyc/s;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lyc/r;

    invoke-virtual {v2}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lyc/r;

    return-object v1
.end method

.method public final q()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lyc/s;->i:Ljava/util/HashMap;

    return-object v0
.end method

.method public final r(Landroid/content/Context;)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v1

    new-instance v4, Lyc/s$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lyc/s$d;-><init>(Lyc/s;Landroid/content/Context;Ltj/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v7

    new-instance v10, Lyc/s$e;

    invoke-direct {v10, p0, v0}, Lyc/s$e;-><init>(Lyc/s;Ltj/d;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v1

    new-instance v4, Lyc/s$f;

    invoke-direct {v4, p0, v0}, Lyc/s$f;-><init>(Lyc/s;Ltj/d;)V

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v7

    new-instance v10, Lyc/s$g;

    invoke-direct {v10, p0, v0}, Lyc/s$g;-><init>(Lyc/s;Ltj/d;)V

    invoke-static/range {v7 .. v12}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public final s()V
    .locals 6

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v0

    new-instance v3, Lyc/s$h;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lyc/s$h;-><init>(Lyc/s;Ltj/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lyc/s;->d:Landroidx/lifecycle/c0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    iget-object v0, p0, Lyc/s;->e:Landroidx/lifecycle/c0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c0;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public final u(Ljava/lang/String;Ltj/d;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lyc/s$j;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyc/s$j;

    iget v1, v0, Lyc/s$j;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyc/s$j;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyc/s$j;

    invoke-direct {v0, p0, p2}, Lyc/s$j;-><init>(Lyc/s;Ltj/d;)V

    :goto_0
    iget-object p2, v0, Lyc/s$j;->a:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lyc/s$j;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lyc/s;->c:Lkotlinx/coroutines/flow/w;

    new-instance v2, Lyc/s$k;

    invoke-direct {v2, p1, p0}, Lyc/s$k;-><init>(Ljava/lang/String;Lyc/s;)V

    iput v3, v0, Lyc/s$j;->c:I

    invoke-interface {p2, v2, v0}, Lkotlinx/coroutines/flow/w;->collect(Lkotlinx/coroutines/flow/f;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p1, Loj/e;

    invoke-direct {p1}, Loj/e;-><init>()V

    throw p1
.end method
