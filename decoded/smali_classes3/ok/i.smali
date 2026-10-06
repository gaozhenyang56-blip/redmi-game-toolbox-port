.class public final Lok/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltj/g;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0015\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J8\u0010\u0007\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00028\u00002\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00028\u00000\u0004H\u0096\u0001\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J*\u0010\u000c\u001a\u0004\u0018\u00018\u0000\"\u0008\u0008\u0000\u0010\t*\u00020\u00052\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0096\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u000e\u001a\u00020\u00012\n\u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\nH\u0096\u0001J\u0011\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0001H\u0096\u0003R\u0014\u0010\u0014\u001a\u00020\u00118\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0018"
    }
    d2 = {
        "Lok/i;",
        "Ltj/g;",
        "R",
        "initial",
        "Lkotlin/Function2;",
        "Ltj/g$b;",
        "operation",
        "o",
        "(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;",
        "E",
        "Ltj/g$c;",
        "key",
        "d",
        "(Ltj/g$c;)Ltj/g$b;",
        "l",
        "context",
        "g",
        "",
        "a",
        "Ljava/lang/Throwable;",
        "e",
        "originalContext",
        "<init>",
        "(Ljava/lang/Throwable;Ltj/g;)V",
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
.field public final a:Ljava/lang/Throwable;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final synthetic b:Ltj/g;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Ltj/g;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lok/i;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lok/i;->b:Ltj/g;

    return-void
.end method


# virtual methods
.method public d(Ltj/g$c;)Ltj/g$b;
    .locals 1
    .param p1    # Ltj/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ltj/g$b;",
            ">(",
            "Ltj/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lok/i;->b:Ltj/g;

    invoke-interface {v0, p1}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object p1

    return-object p1
.end method

.method public g(Ltj/g;)Ltj/g;
    .locals 1
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lok/i;->b:Ltj/g;

    invoke-interface {v0, p1}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object p1

    return-object p1
.end method

.method public l(Ltj/g$c;)Ltj/g;
    .locals 1
    .param p1    # Ltj/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/g$c<",
            "*>;)",
            "Ltj/g;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lok/i;->b:Ltj/g;

    invoke-interface {v0, p1}, Ltj/g;->l(Ltj/g$c;)Ltj/g;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lak/p<",
            "-TR;-",
            "Ltj/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lok/i;->b:Ltj/g;

    invoke-interface {v0, p1, p2}, Ltj/g;->o(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
