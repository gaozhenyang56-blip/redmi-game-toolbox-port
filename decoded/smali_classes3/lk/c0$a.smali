.class final Llk/c0$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llk/c0;->a(Ltj/g;Ltj/g;Z)Ltj/g;
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

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Ltj/g;",
        "result",
        "Ltj/g$b;",
        "element",
        "a",
        "(Ltj/g;Ltj/g$b;)Ltj/g;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final a:Llk/c0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llk/c0$a;

    invoke-direct {v0}, Llk/c0$a;-><init>()V

    sput-object v0, Llk/c0$a;->a:Llk/c0$a;

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
    .locals 1
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

    instance-of v0, p2, Llk/b0;

    if-eqz v0, :cond_0

    check-cast p2, Llk/b0;

    invoke-interface {p2}, Llk/b0;->s()Llk/b0;

    move-result-object p2

    invoke-interface {p1, p2}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1, p2}, Ltj/g;->g(Ltj/g;)Ltj/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ltj/g;

    check-cast p2, Ltj/g$b;

    invoke-virtual {p0, p1, p2}, Llk/c0$a;->a(Ltj/g;Ltj/g$b;)Ltj/g;

    move-result-object p1

    return-object p1
.end method
