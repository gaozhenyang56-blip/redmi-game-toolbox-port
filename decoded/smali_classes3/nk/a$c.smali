.class final Lnk/a$c;
.super Lnk/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lnk/a$b<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0002\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00010\u0002B=\u0012\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\r\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u001c\u0010\u000c\u001a\u0018\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00060\u0004j\u0008\u0012\u0004\u0012\u00028\u0001`\t\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J%\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00028\u0001H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R*\u0010\u000c\u001a\u0018\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00060\u0004j\u0008\u0012\u0004\u0012\u00028\u0001`\t8\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lnk/a$c;",
        "E",
        "Lnk/a$b;",
        "value",
        "Lkotlin/Function1;",
        "",
        "Loj/t;",
        "A",
        "(Ljava/lang/Object;)Lak/l;",
        "Lkotlinx/coroutines/internal/OnUndeliveredElement;",
        "f",
        "Lak/l;",
        "onUndeliveredElement",
        "Llk/l;",
        "",
        "cont",
        "",
        "receiveMode",
        "<init>",
        "(Llk/l;ILak/l;)V",
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
.field public final f:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "TE;",
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
.method public constructor <init>(Llk/l;ILak/l;)V
    .locals 0
    .param p1    # Llk/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/l<",
            "Ljava/lang/Object;",
            ">;I",
            "Lak/l<",
            "-TE;",
            "Loj/t;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lnk/a$b;-><init>(Llk/l;I)V

    iput-object p3, p0, Lnk/a$c;->f:Lak/l;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Object;)Lak/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lak/l<",
            "Ljava/lang/Throwable;",
            "Loj/t;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lnk/a$c;->f:Lak/l;

    iget-object v1, p0, Lnk/a$b;->d:Llk/l;

    invoke-interface {v1}, Ltj/d;->getContext()Ltj/g;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lkotlinx/coroutines/internal/v;->a(Lak/l;Ljava/lang/Object;Ltj/g;)Lak/l;

    move-result-object p1

    return-object p1
.end method
