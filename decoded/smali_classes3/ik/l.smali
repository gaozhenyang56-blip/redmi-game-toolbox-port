.class public final Lik/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lik/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lik/e<",
        "TR;>;"
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

.field private final b:Lak/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/l<",
            "TT;TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lik/e;Lak/l;)V
    .locals 1
    .param p1    # Lik/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lak/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lik/e<",
            "+TT;>;",
            "Lak/l<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lik/l;->a:Lik/e;

    iput-object p2, p0, Lik/l;->b:Lak/l;

    return-void
.end method

.method public static final synthetic a(Lik/l;)Lik/e;
    .locals 0

    iget-object p0, p0, Lik/l;->a:Lik/e;

    return-object p0
.end method

.method public static final synthetic b(Lik/l;)Lak/l;
    .locals 0

    iget-object p0, p0, Lik/l;->b:Lak/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lik/l$a;

    invoke-direct {v0, p0}, Lik/l$a;-><init>(Lik/l;)V

    return-object v0
.end method
