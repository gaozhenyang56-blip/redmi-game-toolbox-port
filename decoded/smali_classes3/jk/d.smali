.class final Ljk/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lik/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lik/e<",
        "Lgk/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:I

.field private final c:I

.field private final d:Lak/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lak/p<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Loj/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILak/p;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lak/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lak/p<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Loj/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljk/d;->a:Ljava/lang/CharSequence;

    iput p2, p0, Ljk/d;->b:I

    iput p3, p0, Ljk/d;->c:I

    iput-object p4, p0, Ljk/d;->d:Lak/p;

    return-void
.end method

.method public static final synthetic a(Ljk/d;)Lak/p;
    .locals 0

    iget-object p0, p0, Ljk/d;->d:Lak/p;

    return-object p0
.end method

.method public static final synthetic b(Ljk/d;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Ljk/d;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic c(Ljk/d;)I
    .locals 0

    iget p0, p0, Ljk/d;->c:I

    return p0
.end method

.method public static final synthetic d(Ljk/d;)I
    .locals 0

    iget p0, p0, Ljk/d;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lgk/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljk/d$a;

    invoke-direct {v0, p0}, Ljk/d$a;-><init>(Ljk/d;)V

    return-object v0
.end method
