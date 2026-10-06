.class final Llk/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltj/g$b;
.implements Ltj/g$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltj/g$b;",
        "Ltj/g$c<",
        "Llk/v2;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c2\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00000\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0008"
    }
    d2 = {
        "Llk/v2;",
        "Ltj/g$b;",
        "Ltj/g$c;",
        "getKey",
        "()Ltj/g$c;",
        "key",
        "<init>",
        "()V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final a:Llk/v2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llk/v2;

    invoke-direct {v0}, Llk/v2;-><init>()V

    sput-object v0, Llk/v2;->a:Llk/v2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ltj/g$c;)Ltj/g$b;
    .locals 0
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

    invoke-static {p0, p1}, Ltj/g$b$a;->b(Ltj/g$b;Ltj/g$c;)Ltj/g$b;

    move-result-object p1

    return-object p1
.end method

.method public g(Ltj/g;)Ltj/g;
    .locals 0
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Ltj/g$b$a;->d(Ltj/g$b;Ltj/g;)Ltj/g;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ltj/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltj/g$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public l(Ltj/g$c;)Ltj/g;
    .locals 0
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

    invoke-static {p0, p1}, Ltj/g$b$a;->c(Ltj/g$b;Ltj/g$c;)Ltj/g;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/Object;Lak/p;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2}, Ltj/g$b$a;->a(Ltj/g$b;Ljava/lang/Object;Lak/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
