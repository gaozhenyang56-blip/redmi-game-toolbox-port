.class public final Lcom/miui/electricrisk/AiGuardSceneService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x21
.end annotation


# instance fields
.field private final a:Llk/i0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Llk/w0;->a()Llk/d0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Llk/n2;->b(Llk/s1;ILjava/lang/Object;)Llk/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltj/a;->g(Ltj/g;)Ltj/g;

    move-result-object v0

    invoke-static {v0}, Llk/j0;->a(Ltj/g;)Llk/i0;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/electricrisk/AiGuardSceneService;->a:Llk/i0;

    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    iput v0, p0, Lcom/miui/electricrisk/AiGuardSceneService;->b:I

    return-void
.end method

.method public static final synthetic a(Lcom/miui/electricrisk/AiGuardSceneService;)Lkotlinx/coroutines/flow/e;
    .locals 0

    invoke-direct {p0}, Lcom/miui/electricrisk/AiGuardSceneService;->g()Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/miui/electricrisk/AiGuardSceneService;I)Landroid/content/Intent;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/AiGuardSceneService;->h(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/miui/electricrisk/AiGuardSceneService;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/AiGuardSceneService;->j(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lcom/miui/electricrisk/AiGuardSceneService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/electricrisk/AiGuardSceneService;->l()Z

    move-result p0

    return p0
.end method

.method public static final synthetic e(Lcom/miui/electricrisk/AiGuardSceneService;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/electricrisk/AiGuardSceneService;->n()V

    return-void
.end method

.method public static final synthetic f(Lcom/miui/electricrisk/AiGuardSceneService;Ljava/util/concurrent/atomic/AtomicReference;)Lkotlinx/coroutines/flow/e;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/electricrisk/AiGuardSceneService;->s(Ljava/util/concurrent/atomic/AtomicReference;)Lkotlinx/coroutines/flow/e;

    move-result-object p0

    return-object p0
.end method

.method private final g()Lkotlinx/coroutines/flow/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/e<",
            "Loj/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/miui/electricrisk/AiGuardSceneService$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/miui/electricrisk/AiGuardSceneService$a;-><init>(Landroid/telephony/TelephonyManager;Lcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/g;->c(Lak/p;)Lkotlinx/coroutines/flow/e;

    move-result-object v0

    invoke-static {}, Llk/w0;->c()Llk/d2;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/g;->m(Lkotlinx/coroutines/flow/e;Ltj/g;)Lkotlinx/coroutines/flow/e;

    move-result-object v0

    return-object v0
.end method

.method private final h(I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/miui/electricrisk/f;->b()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "COMMAND"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Intent()\n        .setCom\u2026Extra(\"COMMAND\", command)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final j(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/electricrisk/AiGuardSceneService;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/electricrisk/AiGuardSceneService;->k(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final l()Z
    .locals 2

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    iget v1, p0, Lcom/miui/electricrisk/AiGuardSceneService;->b:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final m(Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/flow/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlinx/coroutines/flow/e<",
            "Loj/l<",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/miui/electricrisk/AiGuardSceneService$monitorActivities$1;-><init>(Ljava/util/List;Ljava/util/List;Lcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->c(Lak/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    invoke-static {}, Llk/w0;->c()Llk/d2;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/g;->m(Lkotlinx/coroutines/flow/e;Ltj/g;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    return-object p1
.end method

.method private final n()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/miui/electricrisk/f;->b()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private final o()V
    .locals 14

    invoke-static {p0}, Lcom/miui/electricrisk/AiGuardUtils;->getCapabilities(Landroid/content/Context;)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Lbk/w;

    invoke-direct {v1}, Lbk/w;-><init>()V

    const/4 v3, -0x1

    iput v3, v1, Lbk/w;->a:I

    iget-object v8, p0, Lcom/miui/electricrisk/AiGuardSceneService;->a:Llk/i0;

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Lcom/miui/electricrisk/AiGuardSceneService$b;

    invoke-direct {v11, p0, v0, v1, v2}, Lcom/miui/electricrisk/AiGuardSceneService$b;-><init>(Lcom/miui/electricrisk/AiGuardSceneService;ILbk/w;Ltj/d;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    :cond_0
    new-instance v1, Lcom/miui/electricrisk/AiGuardSceneService$c;

    invoke-direct {v1, v2}, Lcom/miui/electricrisk/AiGuardSceneService$c;-><init>(Ltj/d;)V

    new-instance v3, Lcom/miui/electricrisk/AiGuardSceneService$d;

    invoke-direct {v3, v0, p0, v2}, Lcom/miui/electricrisk/AiGuardSceneService$d;-><init>(ILcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V

    new-instance v4, Lcom/miui/electricrisk/AiGuardSceneService$e;

    invoke-direct {v4, p0, v2}, Lcom/miui/electricrisk/AiGuardSceneService$e;-><init>(Lcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V

    new-instance v5, Lcom/miui/electricrisk/AiGuardSceneService$f;

    invoke-direct {v5, p0, v2}, Lcom/miui/electricrisk/AiGuardSceneService$f;-><init>(Lcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    invoke-static/range {v0 .. v7}, Lcom/miui/electricrisk/AiGuardSceneService;->q(Lcom/miui/electricrisk/AiGuardSceneService;Lak/p;Lak/p;Lak/p;Lak/l;Lak/l;ILjava/lang/Object;)V

    const-string v0, "AiGuardDaemon"

    const-string v1, "Daemon Started."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final p(Lak/p;Lak/p;Lak/p;Lak/l;Lak/l;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/p<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lak/p<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lak/p<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lak/l<",
            "-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lak/l<",
            "-",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    invoke-direct/range {p0 .. p0}, Lcom/miui/electricrisk/AiGuardSceneService;->r()Lkotlinx/coroutines/flow/e;

    move-result-object v8

    invoke-static {}, Lcom/miui/electricrisk/f;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/miui/electricrisk/f;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/miui/electricrisk/AiGuardSceneService;->m(Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/flow/e;

    move-result-object v10

    new-instance v18, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v19, Lbk/y;

    invoke-direct/range {v19 .. v19}, Lbk/y;-><init>()V

    new-instance v20, Lbk/v;

    invoke-direct/range {v20 .. v20}, Lbk/v;-><init>()V

    iget-object v7, v6, Lcom/miui/electricrisk/AiGuardSceneService;->a:Llk/i0;

    new-instance v9, Lcom/miui/electricrisk/AiGuardSceneService$h;

    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/electricrisk/AiGuardSceneService$h;-><init>(Lcom/miui/electricrisk/AiGuardSceneService;Ljava/util/concurrent/atomic/AtomicReference;Lbk/v;Lak/l;Ltj/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    move-object v0, v7

    move-object v3, v9

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    iget-object v0, v6, Lcom/miui/electricrisk/AiGuardSceneService;->a:Llk/i0;

    new-instance v1, Lcom/miui/electricrisk/AiGuardSceneService$i;

    const/16 v17, 0x0

    move-object v9, v1

    move-object/from16 v11, v19

    move-object/from16 v12, p5

    move-object/from16 v13, v20

    move-object/from16 v14, v18

    move-object/from16 v15, p3

    move-object/from16 v16, p2

    invoke-direct/range {v9 .. v17}, Lcom/miui/electricrisk/AiGuardSceneService$i;-><init>(Lkotlinx/coroutines/flow/e;Lbk/y;Lak/l;Lbk/v;Ljava/util/concurrent/atomic/AtomicReference;Lak/p;Lak/p;Ltj/d;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object v11, v0

    move-object v14, v1

    invoke-static/range {v11 .. v16}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    iget-object v0, v6, Lcom/miui/electricrisk/AiGuardSceneService;->a:Llk/i0;

    new-instance v24, Lcom/miui/electricrisk/AiGuardSceneService$j;

    const/4 v14, 0x0

    move-object/from16 v7, v24

    move-object/from16 v9, p1

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, p2

    invoke-direct/range {v7 .. v14}, Lcom/miui/electricrisk/AiGuardSceneService$j;-><init>(Lkotlinx/coroutines/flow/e;Lak/p;Ljava/util/concurrent/atomic/AtomicReference;Lbk/y;Lbk/v;Lak/p;Ltj/d;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v26}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method static synthetic q(Lcom/miui/electricrisk/AiGuardSceneService;Lak/p;Lak/p;Lak/p;Lak/l;Lak/l;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    new-instance p5, Lcom/miui/electricrisk/AiGuardSceneService$g;

    const/4 p6, 0x0

    invoke-direct {p5, p6}, Lcom/miui/electricrisk/AiGuardSceneService$g;-><init>(Ltj/d;)V

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/miui/electricrisk/AiGuardSceneService;->p(Lak/p;Lak/p;Lak/p;Lak/l;Lak/l;)V

    return-void
.end method

.method private final r()Lkotlinx/coroutines/flow/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/miui/electricrisk/AiGuardSceneService$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/electricrisk/AiGuardSceneService$k;-><init>(Lcom/miui/electricrisk/AiGuardSceneService;Ltj/d;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/g;->c(Lak/p;)Lkotlinx/coroutines/flow/e;

    move-result-object v0

    invoke-static {}, Llk/w0;->c()Llk/d2;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/g;->m(Lkotlinx/coroutines/flow/e;Ltj/g;)Lkotlinx/coroutines/flow/e;

    move-result-object v0

    return-object v0
.end method

.method private final s(Ljava/util/concurrent/atomic/AtomicReference;)Lkotlinx/coroutines/flow/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlinx/coroutines/flow/e<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v1, Lcom/miui/electricrisk/AiGuardSceneService$l;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/miui/electricrisk/AiGuardSceneService$l;-><init>(Landroid/media/AudioManager;Lcom/miui/electricrisk/AiGuardSceneService;Ljava/util/concurrent/atomic/AtomicReference;Ltj/d;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/g;->c(Lak/p;)Lkotlinx/coroutines/flow/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p1, "writer"

    invoke-static {p2, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Capabilities: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/electricrisk/AiGuardUtils;->getCapabilities(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Function Switch ON: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/electricrisk/AiGuardUtils;->isAiGuardEnabled(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CloudSettings: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/electricrisk/AiGuardCloudController;->loadCachedCloudData(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "data1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const-string v4, "replace(data1,\' \',\'\') LIKE ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-static {p1, v1}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v0

    :cond_0
    :try_start_1
    sget-object v0, Loj/t;->a:Loj/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1, v1}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    const-string p1, "AiGuardDaemon"

    const-string v0, "isInContacts: false"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/yellowpage/YellowPageUtils;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isYellowPageRecognized: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AiGuardDaemon"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/miui/electricrisk/AiGuardSceneService;->o()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/miui/electricrisk/AiGuardSceneService;->a:Llk/i0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Llk/j0;->d(Llk/i0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    const-string v0, "AiGuardDaemon"

    const-string v1, "Daemon stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
