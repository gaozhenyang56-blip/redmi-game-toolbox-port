.class public final Landroidx/lifecycle/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loj/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VM:",
        "Landroidx/lifecycle/r0;",
        ">",
        "Ljava/lang/Object;",
        "Loj/f<",
        "TVM;>;"
    }
.end annotation


# instance fields
.field private final a:Lhk/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhk/b<",
            "TVM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lak/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/a<",
            "Landroidx/lifecycle/x0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lak/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/a<",
            "Landroidx/lifecycle/u0$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lak/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/a<",
            "Lp0/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Landroidx/lifecycle/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhk/b;Lak/a;Lak/a;)V
    .locals 8
    .param p1    # Lhk/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhk/b<",
            "TVM;>;",
            "Lak/a<",
            "+",
            "Landroidx/lifecycle/x0;",
            ">;",
            "Lak/a<",
            "+",
            "Landroidx/lifecycle/u0$b;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "viewModelClass"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeProducer"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryProducer"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Landroidx/lifecycle/t0;-><init>(Lhk/b;Lak/a;Lak/a;Lak/a;ILbk/g;)V

    return-void
.end method

.method public constructor <init>(Lhk/b;Lak/a;Lak/a;Lak/a;)V
    .locals 1
    .param p1    # Lhk/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lak/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhk/b<",
            "TVM;>;",
            "Lak/a<",
            "+",
            "Landroidx/lifecycle/x0;",
            ">;",
            "Lak/a<",
            "+",
            "Landroidx/lifecycle/u0$b;",
            ">;",
            "Lak/a<",
            "+",
            "Lp0/a;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "viewModelClass"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storeProducer"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factoryProducer"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasProducer"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/t0;->a:Lhk/b;

    iput-object p2, p0, Landroidx/lifecycle/t0;->b:Lak/a;

    iput-object p3, p0, Landroidx/lifecycle/t0;->c:Lak/a;

    iput-object p4, p0, Landroidx/lifecycle/t0;->d:Lak/a;

    return-void
.end method

.method public synthetic constructor <init>(Lhk/b;Lak/a;Lak/a;Lak/a;ILbk/g;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    sget-object p4, Landroidx/lifecycle/t0$a;->a:Landroidx/lifecycle/t0$a;

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/lifecycle/t0;-><init>(Lhk/b;Lak/a;Lak/a;Lak/a;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/r0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Landroidx/lifecycle/t0;->e:Landroidx/lifecycle/r0;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/t0;->c:Lak/a;

    invoke-interface {v0}, Lak/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/u0$b;

    iget-object v1, p0, Landroidx/lifecycle/t0;->b:Lak/a;

    invoke-interface {v1}, Lak/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/x0;

    new-instance v2, Landroidx/lifecycle/u0;

    iget-object v3, p0, Landroidx/lifecycle/t0;->d:Lak/a;

    invoke-interface {v3}, Lak/a;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp0/a;

    invoke-direct {v2, v1, v0, v3}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/u0$b;Lp0/a;)V

    iget-object v0, p0, Landroidx/lifecycle/t0;->a:Lhk/b;

    invoke-static {v0}, Lzj/a;->a(Lhk/b;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/t0;->e:Landroidx/lifecycle/r0;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/lifecycle/t0;->a()Landroidx/lifecycle/r0;

    move-result-object v0

    return-object v0
.end method
