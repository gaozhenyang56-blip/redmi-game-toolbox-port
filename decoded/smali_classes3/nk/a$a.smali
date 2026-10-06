.class final Lnk/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnk/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnk/h<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00010\u0002B\u0015\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000c\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0012\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002J\u0013\u0010\u0007\u001a\u00020\u0005H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0013\u0010\t\u001a\u00020\u0005H\u0096B\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u0010\u0010\n\u001a\u00028\u0001H\u0096\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\rR$\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\u0012\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0015"
    }
    d2 = {
        "Lnk/a$a;",
        "E",
        "Lnk/h;",
        "",
        "result",
        "",
        "b",
        "c",
        "(Ltj/d;)Ljava/lang/Object;",
        "a",
        "next",
        "()Ljava/lang/Object;",
        "Lnk/a;",
        "Lnk/a;",
        "channel",
        "Ljava/lang/Object;",
        "getResult",
        "d",
        "(Ljava/lang/Object;)V",
        "<init>",
        "(Lnk/a;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lnk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnk/a<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnk/a;)V
    .locals 0
    .param p1    # Lnk/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk/a<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnk/a$a;->a:Lnk/a;

    sget-object p1, Lnk/b;->d:Lkotlinx/coroutines/internal/b0;

    iput-object p1, p0, Lnk/a$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private final b(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnk/m;

    if-eqz v0, :cond_1

    check-cast p1, Lnk/m;

    iget-object v0, p1, Lnk/m;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lnk/m;->G()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/a0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private final c(Ltj/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Luj/b;->b(Ltj/d;)Ltj/d;

    move-result-object v0

    invoke-static {v0}, Llk/o;->b(Ltj/d;)Llk/m;

    move-result-object v0

    new-instance v1, Lnk/a$d;

    invoke-direct {v1, p0, v0}, Lnk/a$d;-><init>(Lnk/a$a;Llk/l;)V

    :cond_0
    iget-object v2, p0, Lnk/a$a;->a:Lnk/a;

    invoke-static {v2, v1}, Lnk/a;->E(Lnk/a;Lnk/u;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnk/a$a;->a:Lnk/a;

    invoke-static {v2, v0, v1}, Lnk/a;->F(Lnk/a;Llk/l;Lnk/u;)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lnk/a$a;->a:Lnk/a;

    invoke-virtual {v2}, Lnk/a;->Q()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnk/a$a;->d(Ljava/lang/Object;)V

    instance-of v3, v2, Lnk/m;

    if-eqz v3, :cond_3

    check-cast v2, Lnk/m;

    iget-object v1, v2, Lnk/m;->d:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    sget-object v1, Loj/m;->b:Loj/m$a;

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v1, Loj/m;->b:Loj/m$a;

    invoke-virtual {v2}, Lnk/m;->G()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget-object v3, Lnk/b;->d:Lkotlinx/coroutines/internal/b0;

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v3, p0, Lnk/a$a;->a:Lnk/a;

    iget-object v3, v3, Lnk/c;->a:Lak/l;

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ltj/d;->getContext()Ltj/g;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lkotlinx/coroutines/internal/v;->a(Lak/l;Ljava/lang/Object;Ltj/g;)Lak/l;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0, v1, v2}, Llk/l;->v(Ljava/lang/Object;Lak/l;)V

    :goto_2
    invoke-virtual {v0}, Llk/m;->w()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/g;->c(Ltj/d;)V

    :cond_5
    return-object v0
.end method


# virtual methods
.method public a(Ltj/d;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lnk/a$a;->b:Ljava/lang/Object;

    sget-object v1, Lnk/b;->d:Lkotlinx/coroutines/internal/b0;

    if-eq v0, v1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lnk/a$a;->b(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lnk/a$a;->a:Lnk/a;

    invoke-virtual {v0}, Lnk/a;->Q()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lnk/a$a;->b:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lnk/a$a;->c(Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lnk/a$a;->b:Ljava/lang/Object;

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lnk/a$a;->b:Ljava/lang/Object;

    instance-of v1, v0, Lnk/m;

    if-nez v1, :cond_1

    sget-object v1, Lnk/b;->d:Lkotlinx/coroutines/internal/b0;

    if-eq v0, v1, :cond_0

    iput-object v1, p0, Lnk/a$a;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'hasNext\' should be called prior to \'next\' invocation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Lnk/m;

    invoke-virtual {v0}, Lnk/m;->G()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/a0;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method
