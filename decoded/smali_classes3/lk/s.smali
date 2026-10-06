.class public final Llk/s;
.super Llk/u1;
.source "SourceFile"

# interfaces
.implements Llk/r;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0013\u0010\u0006\u001a\u00020\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0016R\u0014\u0010\u000c\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Llk/s;",
        "Llk/u1;",
        "Llk/r;",
        "",
        "cause",
        "Loj/t;",
        "z",
        "",
        "d",
        "Llk/t;",
        "e",
        "Llk/t;",
        "childJob",
        "Llk/s1;",
        "getParent",
        "()Llk/s1;",
        "parent",
        "<init>",
        "(Llk/t;)V",
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
.field public final e:Llk/t;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llk/t;)V
    .locals 0
    .param p1    # Llk/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Llk/u1;-><init>()V

    iput-object p1, p0, Llk/s;->e:Llk/t;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Llk/z1;->A()Llk/a2;

    move-result-object v0

    invoke-virtual {v0, p1}, Llk/a2;->S(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public getParent()Llk/s1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Llk/z1;->A()Llk/a2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Llk/s;->z(Ljava/lang/Throwable;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Llk/s;->e:Llk/t;

    invoke-virtual {p0}, Llk/z1;->A()Llk/a2;

    move-result-object v0

    invoke-interface {p1, v0}, Llk/t;->n(Llk/h2;)V

    return-void
.end method
