.class final Ltj/g$a$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltj/g$a;->a(Ltj/g;Ltj/g;)Ltj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/p<",
        "Ltj/g;",
        "Ltj/g$b;",
        "Ltj/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ltj/g$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltj/g$a$a;

    invoke-direct {v0}, Ltj/g$a$a;-><init>()V

    sput-object v0, Ltj/g$a$a;->a:Ltj/g$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ltj/g;Ltj/g$b;)Ltj/g;
    .locals 3
    .param p1    # Ltj/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/g$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "acc"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ltj/g$b;->getKey()Ltj/g$c;

    move-result-object v0

    invoke-interface {p1, v0}, Ltj/g;->l(Ltj/g$c;)Ltj/g;

    move-result-object p1

    sget-object v0, Ltj/h;->a:Ltj/h;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Ltj/e;->e0:Ltj/e$b;

    invoke-interface {p1, v1}, Ltj/g;->d(Ltj/g$c;)Ltj/g$b;

    move-result-object v2

    check-cast v2, Ltj/e;

    if-nez v2, :cond_1

    new-instance v0, Ltj/c;

    invoke-direct {v0, p1, p2}, Ltj/c;-><init>(Ltj/g;Ltj/g$b;)V

    :goto_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1}, Ltj/g;->l(Ltj/g$c;)Ltj/g;

    move-result-object p1

    if-ne p1, v0, :cond_2

    new-instance p1, Ltj/c;

    invoke-direct {p1, p2, v2}, Ltj/c;-><init>(Ltj/g;Ltj/g$b;)V

    move-object p2, p1

    goto :goto_1

    :cond_2
    new-instance v0, Ltj/c;

    new-instance v1, Ltj/c;

    invoke-direct {v1, p1, p2}, Ltj/c;-><init>(Ltj/g;Ltj/g$b;)V

    invoke-direct {v0, v1, v2}, Ltj/c;-><init>(Ltj/g;Ltj/g$b;)V

    goto :goto_0

    :goto_1
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ltj/g;

    check-cast p2, Ltj/g$b;

    invoke-virtual {p0, p1, p2}, Ltj/g$a$a;->a(Ltj/g;Ltj/g$b;)Ltj/g;

    move-result-object p1

    return-object p1
.end method
