.class public final Lik/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lik/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lik/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lik/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik/e<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Z

.field private final c:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lik/e;ZLak/l;)V
    .locals 1
    .param p1    # Lik/e;
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
            "Lik/e<",
            "+TT;>;Z",
            "Lak/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lik/c;->a:Lik/e;

    iput-boolean p2, p0, Lik/c;->b:Z

    iput-object p3, p0, Lik/c;->c:Lak/l;

    return-void
.end method

.method public static final synthetic a(Lik/c;)Lak/l;
    .locals 0

    iget-object p0, p0, Lik/c;->c:Lak/l;

    return-object p0
.end method

.method public static final synthetic b(Lik/c;)Z
    .locals 0

    iget-boolean p0, p0, Lik/c;->b:Z

    return p0
.end method

.method public static final synthetic c(Lik/c;)Lik/e;
    .locals 0

    iget-object p0, p0, Lik/c;->a:Lik/e;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lik/c$a;

    invoke-direct {v0, p0}, Lik/c$a;-><init>(Lik/c;)V

    return-object v0
.end method
