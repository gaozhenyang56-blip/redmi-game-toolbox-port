.class public final Llk/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\"\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u001b\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a!\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0086@\u00f8\u0001\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0004\u001a\u0019\u0010\u0008\u001a\u00020\u0000*\u00020\u0005H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\t\"\u0018\u0010\u000e\u001a\u00020\u000b*\u00020\n8@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u000f"
    }
    d2 = {
        "",
        "timeMillis",
        "Loj/t;",
        "a",
        "(JLtj/d;)Ljava/lang/Object;",
        "Lkk/a;",
        "duration",
        "b",
        "d",
        "(J)J",
        "Ltj/g;",
        "Llk/p0;",
        "c",
        "(Ltj/g;)Llk/p0;",
        "delay",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# direct methods
.method public static final a(JLtj/d;)Ljava/lang/Object;
    .locals 3
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    sget-object p0, Loj/t;->a:Loj/t;

    return-object p0

    :cond_0
    new-instance v0, Llk/m;

    invoke-static {p2}, Luj/b;->b(Ltj/d;)Ltj/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Llk/m;-><init>(Ltj/d;I)V

    invoke-virtual {v0}, Llk/m;->A()V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    invoke-interface {v0}, Ltj/d;->getContext()Ltj/g;

    move-result-object v1

    invoke-static {v1}, Llk/q0;->c(Ltj/g;)Llk/p0;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0}, Llk/p0;->p(JLlk/l;)V

    :cond_1
    invoke-virtual {v0}, Llk/m;->w()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/g;->c(Ltj/d;)V

    :cond_2
    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Loj/t;->a:Loj/t;

    return-object p0
.end method

.method public static final b(JLtj/d;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltj/d<",
            "-",
            "Loj/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Llk/q0;->d(J)J

    move-result-wide p0

    invoke-static {p0, p1, p2}, Llk/q0;->a(JLtj/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Loj/t;->a:Loj/t;

    return-object p0
.end method

.method public static final c(Ltj/g;)Llk/p0;
    .locals 1
    .param p0    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Ltj/e;->e0:Ltj/e$b;

    invoke-interface {p0, v0}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object p0

    instance-of v0, p0, Llk/p0;

    if-eqz v0, :cond_0

    check-cast p0, Llk/p0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Llk/o0;->a()Llk/p0;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final d(J)J
    .locals 2

    sget-object v0, Lkk/a;->b:Lkk/a$a;

    invoke-virtual {v0}, Lkk/a$a;->a()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkk/a;->d(JJ)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lkk/a;->k(J)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    invoke-static {p0, p1, v0, v1}, Lgk/g;->b(JJ)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method
