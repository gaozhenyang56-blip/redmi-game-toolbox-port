.class public final Lf4/b;
.super Landroidx/lifecycle/r0;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/lifecycle/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/c0<",
            "Ljava/util/List<",
            "Le4/a;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/r0;-><init>()V

    new-instance v0, Landroidx/lifecycle/c0;

    invoke-direct {v0}, Landroidx/lifecycle/c0;-><init>()V

    iput-object v0, p0, Lf4/b;->a:Landroidx/lifecycle/c0;

    return-void
.end method

.method public static final synthetic a(Lf4/b;)Landroidx/lifecycle/c0;
    .locals 0

    iget-object p0, p0, Lf4/b;->a:Landroidx/lifecycle/c0;

    return-object p0
.end method

.method public static final synthetic b(Lf4/b;Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ZZLtj/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p9}, Lf4/b;->e(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ZZLtj/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final e(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ZZLtj/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;ZZ",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    new-instance v12, Lf4/b$b;

    const/4 v11, 0x0

    move-object v1, v12

    move-object v2, p1

    move-object/from16 v3, p3

    move v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p7

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p5

    move-object v10, p0

    invoke-direct/range {v1 .. v11}, Lf4/b$b;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/util/LinkedHashMap;ZLjava/util/LinkedHashMap;ZLjava/util/LinkedHashMap;Lf4/b;Ltj/d;)V

    move-object/from16 v1, p9

    invoke-static {v0, v12, v1}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Loj/t;->a:Loj/t;

    return-object v0
.end method


# virtual methods
.method public final c()Landroidx/lifecycle/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/c0<",
            "Ljava/util/List<",
            "Le4/a;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lf4/b;->a:Landroidx/lifecycle/c0;

    return-object v0
.end method

.method public final d(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ZZ)V
    .locals 13
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/LinkedHashMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;ZZ)V"
        }
    .end annotation

    const-string v0, "context"

    move-object v3, p1

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionIDMap"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionIDDescMap"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionIDStateMap"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v0

    new-instance v12, Lf4/b$a;

    const/4 v11, 0x0

    move-object v1, v12

    move-object v2, p0

    move v4, p2

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v11}, Lf4/b$a;-><init>(Lf4/b;Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ZZLtj/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object p1, v0

    move-object p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v12

    move/from16 p5, v3

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method
