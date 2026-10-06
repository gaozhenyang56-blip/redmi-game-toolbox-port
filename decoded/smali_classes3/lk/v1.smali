.class public Llk/v1;
.super Llk/a2;
.source "SourceFile"

# interfaces
.implements Llk/u;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0011\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0003R\u001a\u0010\t\u001a\u00020\u00038\u0010X\u0090\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u000b\u001a\u00020\u00038PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Llk/v1;",
        "Llk/a2;",
        "Llk/u;",
        "",
        "L0",
        "b",
        "Z",
        "b0",
        "()Z",
        "handlesException",
        "c0",
        "onCancelComplete",
        "Llk/s1;",
        "parent",
        "<init>",
        "(Llk/s1;)V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation

.annotation build Lkotlin/PublishedApi;
.end annotation


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Llk/s1;)V
    .locals 1
    .param p1    # Llk/s1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Llk/a2;-><init>(Z)V

    invoke-virtual {p0, p1}, Llk/a2;->i0(Llk/s1;)V

    invoke-direct {p0}, Llk/v1;->L0()Z

    move-result p1

    iput-boolean p1, p0, Llk/v1;->b:Z

    return-void
.end method

.method private final L0()Z
    .locals 4

    invoke-virtual {p0}, Llk/a2;->e0()Llk/r;

    move-result-object v0

    instance-of v1, v0, Llk/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Llk/s;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Llk/z1;->A()Llk/a2;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Llk/a2;->b0()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {v0}, Llk/a2;->e0()Llk/r;

    move-result-object v0

    instance-of v3, v0, Llk/s;

    if-eqz v3, :cond_3

    check-cast v0, Llk/s;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Llk/z1;->A()Llk/a2;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method public b0()Z
    .locals 1

    iget-boolean v0, p0, Llk/v1;->b:Z

    return v0
.end method

.method public c0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
