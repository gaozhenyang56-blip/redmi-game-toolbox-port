.class final Lf4/b$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf4/b;->d(Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ZZ)V
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.miui.combinepermission.grantpermission.PermissionViewModel$loadAppPermissionsDetail$1"
    f = "PermissionViewModel.kt"
    i = {}
    l = {
        0x1f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lf4/b;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic i:Z

.field final synthetic j:Z


# direct methods
.method constructor <init>(Lf4/b;Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ZZLtj/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4/b;",
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
            "Lf4/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lf4/b$a;->b:Lf4/b;

    iput-object p2, p0, Lf4/b$a;->c:Landroid/content/Context;

    iput p3, p0, Lf4/b$a;->d:I

    iput-object p4, p0, Lf4/b$a;->e:Ljava/lang/String;

    iput-object p5, p0, Lf4/b$a;->f:Ljava/util/LinkedHashMap;

    iput-object p6, p0, Lf4/b$a;->g:Ljava/util/LinkedHashMap;

    iput-object p7, p0, Lf4/b$a;->h:Ljava/util/LinkedHashMap;

    iput-boolean p8, p0, Lf4/b$a;->i:Z

    iput-boolean p9, p0, Lf4/b$a;->j:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILtj/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ltj/d;)Ltj/d;
    .locals 11
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

    new-instance p1, Lf4/b$a;

    iget-object v1, p0, Lf4/b$a;->b:Lf4/b;

    iget-object v2, p0, Lf4/b$a;->c:Landroid/content/Context;

    iget v3, p0, Lf4/b$a;->d:I

    iget-object v4, p0, Lf4/b$a;->e:Ljava/lang/String;

    iget-object v5, p0, Lf4/b$a;->f:Ljava/util/LinkedHashMap;

    iget-object v6, p0, Lf4/b$a;->g:Ljava/util/LinkedHashMap;

    iget-object v7, p0, Lf4/b$a;->h:Ljava/util/LinkedHashMap;

    iget-boolean v8, p0, Lf4/b$a;->i:Z

    iget-boolean v9, p0, Lf4/b$a;->j:Z

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lf4/b$a;-><init>(Lf4/b;Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ZZLtj/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Llk/i0;

    check-cast p2, Ltj/d;

    invoke-virtual {p0, p1, p2}, Lf4/b$a;->invoke(Llk/i0;Ltj/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lf4/b$a;->create(Ljava/lang/Object;Ltj/d;)Ltj/d;

    move-result-object p1

    check-cast p1, Lf4/b$a;

    sget-object p2, Loj/t;->a:Loj/t;

    invoke-virtual {p1, p2}, Lf4/b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lf4/b$a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Loj/n;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lf4/b$a;->b:Lf4/b;

    iget-object p1, p0, Lf4/b$a;->c:Landroid/content/Context;

    iget v3, p0, Lf4/b$a;->d:I

    iget-object v4, p0, Lf4/b$a;->e:Ljava/lang/String;

    iget-object v5, p0, Lf4/b$a;->f:Ljava/util/LinkedHashMap;

    iget-object v6, p0, Lf4/b$a;->g:Ljava/util/LinkedHashMap;

    iget-object v7, p0, Lf4/b$a;->h:Ljava/util/LinkedHashMap;

    iget-boolean v8, p0, Lf4/b$a;->i:Z

    iget-boolean v9, p0, Lf4/b$a;->j:Z

    iput v2, p0, Lf4/b$a;->a:I

    move-object v2, p1

    move-object v10, p0

    invoke-static/range {v1 .. v10}, Lf4/b;->b(Lf4/b;Landroid/content/Context;ILjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;ZZLtj/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
