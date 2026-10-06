.class public final Lyc/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyc/q;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lkotlinx/coroutines/flow/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/r<",
            "Lyc/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lkotlinx/coroutines/flow/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/r<",
            "Lyc/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lkotlinx/coroutines/flow/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/r<",
            "Lyc/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyc/q;

    invoke-direct {v0}, Lyc/q;-><init>()V

    sput-object v0, Lyc/q;->a:Lyc/q;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v0, v1, v2, v1}, Lkotlinx/coroutines/flow/y;->b(IILnk/e;ILjava/lang/Object;)Lkotlinx/coroutines/flow/r;

    move-result-object v3

    sput-object v3, Lyc/q;->b:Lkotlinx/coroutines/flow/r;

    invoke-static {v0, v0, v1, v2, v1}, Lkotlinx/coroutines/flow/y;->b(IILnk/e;ILjava/lang/Object;)Lkotlinx/coroutines/flow/r;

    move-result-object v3

    sput-object v3, Lyc/q;->c:Lkotlinx/coroutines/flow/r;

    invoke-static {v0, v0, v1, v2, v1}, Lkotlinx/coroutines/flow/y;->b(IILnk/e;ILjava/lang/Object;)Lkotlinx/coroutines/flow/r;

    move-result-object v0

    sput-object v0, Lyc/q;->d:Lkotlinx/coroutines/flow/r;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lyc/r;)V
    .locals 7
    .param p0    # Lyc/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "wakePathRuleInfo"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Llk/l1;->a:Llk/l1;

    invoke-static {}, Llk/w0;->a()Llk/d0;

    move-result-object v2

    new-instance v4, Lyc/q$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lyc/q$a;-><init>(Lyc/r;Ltj/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method


# virtual methods
.method public final b()Lkotlinx/coroutines/flow/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/r<",
            "Lyc/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lyc/q;->d:Lkotlinx/coroutines/flow/r;

    return-object v0
.end method

.method public final c()Lkotlinx/coroutines/flow/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/r<",
            "Lyc/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lyc/q;->c:Lkotlinx/coroutines/flow/r;

    return-object v0
.end method

.method public final d()Lkotlinx/coroutines/flow/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/r<",
            "Lyc/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lyc/q;->b:Lkotlinx/coroutines/flow/r;

    return-object v0
.end method
