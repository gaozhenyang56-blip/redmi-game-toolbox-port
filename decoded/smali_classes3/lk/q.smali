.class public final Llk/q;
.super Llk/u1;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0013\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002R\u0018\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Llk/q;",
        "Llk/u1;",
        "",
        "cause",
        "Loj/t;",
        "z",
        "Llk/m;",
        "e",
        "Llk/m;",
        "child",
        "<init>",
        "(Llk/m;)V",
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
.field public final e:Llk/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llk/m<",
            "*>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llk/m;)V
    .locals 0
    .param p1    # Llk/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/m<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Llk/u1;-><init>()V

    iput-object p1, p0, Llk/q;->e:Llk/m;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Llk/q;->z(Ljava/lang/Throwable;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public z(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Llk/q;->e:Llk/m;

    invoke-virtual {p0}, Llk/z1;->A()Llk/a2;

    move-result-object v0

    invoke-virtual {p1, v0}, Llk/m;->u(Llk/s1;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Llk/m;->H(Ljava/lang/Throwable;)V

    return-void
.end method
