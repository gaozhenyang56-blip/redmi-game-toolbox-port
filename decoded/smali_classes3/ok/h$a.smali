.class final Lok/h$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lok/h;->a(Lkotlinx/coroutines/flow/f;[Lkotlinx/coroutines/flow/e;Lak/a;Lak/q;Ltj/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
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

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "R",
        "T",
        "Llk/i0;",
        "Loj/t;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x39,
        0x4f,
        0x52
    }
    m = "invokeSuspend"
    n = {
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch",
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch",
        "latestValues",
        "resultChannel",
        "lastReceivedEpoch",
        "remainingAbsentValues",
        "currentEpoch"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1",
        "L$0",
        "L$1",
        "L$2",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:I

.field d:I

.field e:I

.field private synthetic f:Ljava/lang/Object;

.field final synthetic g:[Lkotlinx/coroutines/flow/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/coroutines/flow/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic h:Lak/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/a<",
            "[TT;>;"
        }
    .end annotation
.end field

.field final synthetic i:Lak/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/q<",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;[TT;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Lkotlinx/coroutines/flow/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/f<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lkotlinx/coroutines/flow/e;Lak/a;Lak/q;Lkotlinx/coroutines/flow/f;Ltj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlinx/coroutines/flow/e<",
            "+TT;>;",
            "Lak/a<",
            "[TT;>;",
            "Lak/q<",
            "-",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;-[TT;-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/flow/f<",
            "-TR;>;",
            "Ltj/d<",
            "-",
            "Lok/h$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lok/h$a;->g:[Lkotlinx/coroutines/flow/e;

    iput-object p2, p0, Lok/h$a;->h:Lak/a;

    iput-object p3, p0, Lok/h$a;->i:Lak/q;

    iput-object p4, p0, Lok/h$a;->j:Lkotlinx/coroutines/flow/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ltj/d<",
            "*>;)",
            "Ltj/d<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lok/h$a;

    iget-object v1, p0, Lok/h$a;->g:[Lkotlinx/coroutines/flow/e;

    iget-object v2, p0, Lok/h$a;->h:Lak/a;

    iget-object v3, p0, Lok/h$a;->i:Lak/q;

    iget-object v4, p0, Lok/h$a;->j:Lkotlinx/coroutines/flow/f;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lok/h$a;-><init>([Lkotlinx/coroutines/flow/e;Lak/a;Lak/q;Lkotlinx/coroutines/flow/f;Ltj/d;)V

    iput-object p1, v6, Lok/h$a;->f:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lok/h$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Llk/i0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/i0;",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lok/h$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lok/h$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lok/h$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lok/h$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    iget v2, v0, Lok/h$a;->d:I

    iget v3, v0, Lok/h$a;->c:I

    iget-object v7, v0, Lok/h$a;->b:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lok/h$a;->a:Ljava/lang/Object;

    check-cast v8, Lnk/f;

    iget-object v9, v0, Lok/h$a;->f:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    move v13, v3

    move-object v14, v9

    move v3, v2

    move-object v2, v7

    move-object v7, v8

    move-object v8, v0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v2, v0, Lok/h$a;->d:I

    iget v3, v0, Lok/h$a;->c:I

    iget-object v7, v0, Lok/h$a;->b:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lok/h$a;->a:Ljava/lang/Object;

    check-cast v8, Lnk/f;

    iget-object v9, v0, Lok/h$a;->f:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    move v13, v3

    move-object v14, v9

    move v3, v2

    move-object v2, v7

    move-object v7, v8

    move-object v8, v0

    goto/16 :goto_1

    :cond_2
    iget v2, v0, Lok/h$a;->d:I

    iget v3, v0, Lok/h$a;->c:I

    iget-object v7, v0, Lok/h$a;->b:Ljava/lang/Object;

    check-cast v7, [B

    iget-object v8, v0, Lok/h$a;->a:Ljava/lang/Object;

    check-cast v8, Lnk/f;

    iget-object v9, v0, Lok/h$a;->f:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    move-object/from16 v10, p1

    check-cast v10, Lnk/j;

    invoke-virtual {v10}, Lnk/j;->k()Ljava/lang/Object;

    move-result-object v10

    move-object v15, v9

    move-object v9, v0

    move-object/from16 v22, v7

    move v7, v2

    move-object/from16 v2, v22

    goto/16 :goto_2

    :cond_3
    invoke-static/range {p1 .. p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lok/h$a;->f:Ljava/lang/Object;

    check-cast v2, Llk/i0;

    iget-object v7, v0, Lok/h$a;->g:[Lkotlinx/coroutines/flow/e;

    array-length v13, v7

    if-nez v13, :cond_4

    sget-object v1, Loj/t;->a:Loj/t;

    return-object v1

    :cond_4
    new-array v14, v13, [Ljava/lang/Object;

    sget-object v8, Lok/o;->b:Lkotlinx/coroutines/internal/b0;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v7, v14

    invoke-static/range {v7 .. v12}, Lqj/f;->g([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static {v13, v8, v8, v7, v8}, Lnk/i;->b(ILnk/e;Lak/l;ILjava/lang/Object;)Lnk/f;

    move-result-object v21

    new-instance v12, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v12, v13}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move v11, v3

    :goto_0
    if-ge v11, v13, :cond_5

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lok/h$a$a;

    iget-object v7, v0, Lok/h$a;->g:[Lkotlinx/coroutines/flow/e;

    const/16 v20, 0x0

    move-object v15, v10

    move-object/from16 v16, v7

    move/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v21

    invoke-direct/range {v15 .. v20}, Lok/h$a$a;-><init>([Lkotlinx/coroutines/flow/e;ILjava/util/concurrent/atomic/AtomicInteger;Lnk/f;Ltj/d;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object v7, v2

    move v11, v15

    move-object v15, v12

    move-object/from16 v12, v16

    invoke-static/range {v7 .. v12}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    add-int/lit8 v11, v17, 0x1

    move-object v12, v15

    goto :goto_0

    :cond_5
    new-array v2, v13, [B

    move-object v8, v0

    move-object/from16 v7, v21

    :goto_1
    add-int/2addr v3, v6

    int-to-byte v3, v3

    iput-object v14, v8, Lok/h$a;->f:Ljava/lang/Object;

    iput-object v7, v8, Lok/h$a;->a:Ljava/lang/Object;

    iput-object v2, v8, Lok/h$a;->b:Ljava/lang/Object;

    iput v13, v8, Lok/h$a;->c:I

    iput v3, v8, Lok/h$a;->d:I

    iput v6, v8, Lok/h$a;->e:I

    invoke-interface {v7, v8}, Lnk/v;->b(Ltj/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_6

    return-object v1

    :cond_6
    move-object v9, v8

    move-object v15, v14

    move-object v8, v7

    move v7, v3

    move v3, v13

    :goto_2
    invoke-static {v10}, Lnk/j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lqj/a0;

    if-nez v10, :cond_7

    sget-object v1, Loj/t;->a:Loj/t;

    return-object v1

    :cond_7
    invoke-virtual {v10}, Lqj/a0;->a()I

    move-result v11

    aget-object v12, v15, v11

    invoke-virtual {v10}, Lqj/a0;->b()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v15, v11

    sget-object v10, Lok/o;->b:Lkotlinx/coroutines/internal/b0;

    if-ne v12, v10, :cond_8

    add-int/lit8 v3, v3, -0x1

    :cond_8
    aget-byte v10, v2, v11

    if-eq v10, v7, :cond_9

    int-to-byte v10, v7

    aput-byte v10, v2, v11

    invoke-interface {v8}, Lnk/v;->q()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lnk/j;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lqj/a0;

    if-nez v10, :cond_7

    :cond_9
    if-nez v3, :cond_c

    iget-object v10, v9, Lok/h$a;->h:Lak/a;

    invoke-interface {v10}, Lak/a;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    if-nez v10, :cond_b

    iget-object v10, v9, Lok/h$a;->i:Lak/q;

    iget-object v11, v9, Lok/h$a;->j:Lkotlinx/coroutines/flow/f;

    iput-object v15, v9, Lok/h$a;->f:Ljava/lang/Object;

    iput-object v8, v9, Lok/h$a;->a:Ljava/lang/Object;

    iput-object v2, v9, Lok/h$a;->b:Ljava/lang/Object;

    iput v3, v9, Lok/h$a;->c:I

    iput v7, v9, Lok/h$a;->d:I

    iput v5, v9, Lok/h$a;->e:I

    invoke-interface {v10, v11, v15, v9}, Lak/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_a

    return-object v1

    :cond_a
    move v13, v3

    move v3, v7

    move-object v7, v8

    move-object v8, v9

    move-object v14, v15

    goto :goto_1

    :cond_b
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xe

    const/16 v18, 0x0

    move-object v11, v15

    move-object v12, v10

    move-object v5, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    invoke-static/range {v11 .. v17}, Lqj/f;->d([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    iget-object v11, v9, Lok/h$a;->i:Lak/q;

    iget-object v12, v9, Lok/h$a;->j:Lkotlinx/coroutines/flow/f;

    iput-object v5, v9, Lok/h$a;->f:Ljava/lang/Object;

    iput-object v8, v9, Lok/h$a;->a:Ljava/lang/Object;

    iput-object v2, v9, Lok/h$a;->b:Ljava/lang/Object;

    iput v3, v9, Lok/h$a;->c:I

    iput v7, v9, Lok/h$a;->d:I

    iput v4, v9, Lok/h$a;->e:I

    invoke-interface {v11, v12, v10, v9}, Lak/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_d

    return-object v1

    :goto_3
    const/4 v5, 0x2

    goto/16 :goto_1

    :cond_c
    move-object v5, v15

    :cond_d
    move v13, v3

    move-object v14, v5

    move v3, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_3
.end method
