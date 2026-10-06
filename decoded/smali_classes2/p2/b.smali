.class public final Lp2/b;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp2/b$b;
    }
.end annotation


# static fields
.field public static final d:Lp2/b$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final b:Lkotlinx/coroutines/flow/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/s<",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/model/e;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lkotlinx/coroutines/flow/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/a0<",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/model/e;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp2/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp2/b$b;-><init>(Lbk/g;)V

    sput-object v0, Lp2/b;->d:Lp2/b$b;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 6
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "application"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/c0;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/s;

    move-result-object p1

    iput-object p1, p0, Lp2/b;->b:Lkotlinx/coroutines/flow/s;

    invoke-static {p1}, Lkotlinx/coroutines/flow/g;->b(Lkotlinx/coroutines/flow/s;)Lkotlinx/coroutines/flow/a0;

    move-result-object p1

    iput-object p1, p0, Lp2/b;->c:Lkotlinx/coroutines/flow/a0;

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v0

    new-instance v3, Lp2/b$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lp2/b$a;-><init>(Lp2/b;Ltj/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public static final synthetic b(Lp2/b;)Lkotlinx/coroutines/flow/s;
    .locals 0

    iget-object p0, p0, Lp2/b;->b:Lkotlinx/coroutines/flow/s;

    return-object p0
.end method


# virtual methods
.method public final c()Lkotlinx/coroutines/flow/a0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/a0<",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/model/e;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lp2/b;->c:Lkotlinx/coroutines/flow/a0;

    return-object v0
.end method

.method public final d(Ltj/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/antivirus/model/e;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    new-instance v1, Lp2/b$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lp2/b$c;-><init>(Lp2/b;Ltj/d;)V

    invoke-static {v0, v1, p1}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/miui/antivirus/model/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "monitoredApps"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lp2/b;->b:Lkotlinx/coroutines/flow/s;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/s;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Lcom/miui/antivirus/model/e;)V
    .locals 7
    .param p1    # Lcom/miui/antivirus/model/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "app"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/s0;->a(Landroidx/lifecycle/r0;)Llk/i0;

    move-result-object v1

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v2

    new-instance v4, Lp2/b$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lp2/b$d;-><init>(Lp2/b;Lcom/miui/antivirus/model/e;Ltj/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method
