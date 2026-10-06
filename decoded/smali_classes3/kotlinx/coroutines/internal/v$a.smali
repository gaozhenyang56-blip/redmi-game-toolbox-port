.class final Lkotlinx/coroutines/internal/v$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/internal/v;->a(Lak/l;Ljava/lang/Object;Ltj/g;)Lak/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Ljava/lang/Throwable;",
        "Loj/t;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "E",
        "",
        "<anonymous parameter 0>",
        "Loj/t;",
        "invoke",
        "(Ljava/lang/Throwable;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "TE;",
            "Loj/t;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic c:Ltj/g;


# direct methods
.method constructor <init>(Lak/l;Ljava/lang/Object;Ltj/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lak/l<",
            "-TE;",
            "Loj/t;",
            ">;TE;",
            "Ltj/g;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/internal/v$a;->a:Lak/l;

    iput-object p2, p0, Lkotlinx/coroutines/internal/v$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lkotlinx/coroutines/internal/v$a;->c:Ltj/g;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/v$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object p1, p0, Lkotlinx/coroutines/internal/v$a;->a:Lak/l;

    iget-object v0, p0, Lkotlinx/coroutines/internal/v$a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/internal/v$a;->c:Ltj/g;

    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/internal/v;->b(Lak/l;Ljava/lang/Object;Ltj/g;)V

    return-void
.end method
