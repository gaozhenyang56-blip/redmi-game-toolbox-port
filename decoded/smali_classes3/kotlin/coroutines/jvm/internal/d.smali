.class public abstract Lkotlin/coroutines/jvm/internal/d;
.super Lkotlin/coroutines/jvm/internal/a;
.source "SourceFile"


# annotations
.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContinuationImpl.kt\nkotlin/coroutines/jvm/internal/ContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,168:1\n1#2:169\n*E\n"
    }
.end annotation


# instance fields
.field private final _context:Ltj/g;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transient intercepted:Ltj/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltj/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltj/d;)V
    .locals 1
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ltj/d;->getContext()Ltj/g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lkotlin/coroutines/jvm/internal/d;-><init>(Ltj/d;Ltj/g;)V

    return-void
.end method

.method public constructor <init>(Ltj/d;Ltj/g;)V
    .locals 0
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ltj/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/a;-><init>(Ltj/d;)V

    iput-object p2, p0, Lkotlin/coroutines/jvm/internal/d;->_context:Ltj/g;

    return-void
.end method


# virtual methods
.method public getContext()Ltj/g;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->_context:Ltj/g;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final intercepted()Ltj/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltj/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->intercepted:Ltj/d;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/d;->getContext()Ltj/g;

    move-result-object v0

    sget-object v1, Ltj/e;->e0:Ltj/e$b;

    invoke-interface {v0, v1}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v0

    check-cast v0, Ltj/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ltj/e;->H(Ltj/d;)Ltj/d;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    :cond_1
    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->intercepted:Ltj/d;

    :cond_2
    return-object v0
.end method

.method protected releaseIntercepted()V
    .locals 3

    iget-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->intercepted:Ltj/d;

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    invoke-virtual {p0}, Lkotlin/coroutines/jvm/internal/d;->getContext()Ltj/g;

    move-result-object v1

    sget-object v2, Ltj/e;->e0:Ltj/e$b;

    invoke-interface {v1, v2}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast v1, Ltj/e;

    invoke-interface {v1, v0}, Ltj/e;->F(Ltj/d;)V

    :cond_0
    sget-object v0, Lkotlin/coroutines/jvm/internal/c;->a:Lkotlin/coroutines/jvm/internal/c;

    iput-object v0, p0, Lkotlin/coroutines/jvm/internal/d;->intercepted:Ltj/d;

    return-void
.end method
