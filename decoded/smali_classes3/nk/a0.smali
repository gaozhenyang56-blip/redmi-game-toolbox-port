.class public Lnk/a0;
.super Lnk/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lnk/y;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0012\u001a\u00028\u0000\u0012\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0013\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u0008\u0010\u0008\u001a\u00020\u0007H\u0016J\u0014\u0010\u000b\u001a\u00020\u00072\n\u0010\n\u001a\u0006\u0012\u0002\u0008\u00030\tH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016R\u001a\u0010\u0012\u001a\u00028\u00008\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00138\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0019"
    }
    d2 = {
        "Lnk/a0;",
        "E",
        "Lnk/y;",
        "Lkotlinx/coroutines/internal/o$b;",
        "otherOp",
        "Lkotlinx/coroutines/internal/b0;",
        "C",
        "Loj/t;",
        "z",
        "Lnk/m;",
        "closed",
        "B",
        "",
        "toString",
        "d",
        "Ljava/lang/Object;",
        "A",
        "()Ljava/lang/Object;",
        "pollResult",
        "Llk/l;",
        "e",
        "Llk/l;",
        "cont",
        "<init>",
        "(Ljava/lang/Object;Llk/l;)V",
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
.field private final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final e:Llk/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llk/l<",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Llk/l;)V
    .locals 0
    .param p2    # Llk/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Llk/l<",
            "-",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lnk/y;-><init>()V

    iput-object p1, p0, Lnk/a0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lnk/a0;->e:Llk/l;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lnk/a0;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public B(Lnk/m;)V
    .locals 2
    .param p1    # Lnk/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnk/m<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lnk/a0;->e:Llk/l;

    sget-object v1, Loj/m;->b:Loj/m$a;

    invoke-virtual {p1}, Lnk/m;->H()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public C(Lkotlinx/coroutines/internal/o$b;)Lkotlinx/coroutines/internal/b0;
    .locals 2
    .param p1    # Lkotlinx/coroutines/internal/o$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p1, p0, Lnk/a0;->e:Llk/l;

    sget-object v0, Loj/t;->a:Loj/t;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Llk/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    sget-object p1, Llk/n;->a:Lkotlinx/coroutines/internal/b0;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Llk/m0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Llk/m0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnk/a0;->A()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()V
    .locals 2

    iget-object v0, p0, Lnk/a0;->e:Llk/l;

    sget-object v1, Llk/n;->a:Lkotlinx/coroutines/internal/b0;

    invoke-interface {v0, v1}, Llk/l;->x(Ljava/lang/Object;)V

    return-void
.end method
