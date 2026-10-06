.class public abstract Ltj/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltj/g$b;


# annotations
.annotation build Lkotlin/SinceKotlin;
    version = "1.3"
.end annotation


# instance fields
.field private final a:Ltj/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltj/g$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltj/g$c;)V
    .locals 1
    .param p1    # Ltj/g$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/g$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltj/a;->a:Ltj/g$c;

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltj/g$c<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Ltj/a;->a:Ltj/g$c;

    return-object v0
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
