.class public final Lt3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lt3/e<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt3/g<",
            "TT;TR;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lt3/g<",
            "TT;TR;>;>;TT;ITR;)V"
        }
    .end annotation

    const-string v0, "handleList"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/f;->a:Ljava/util/List;

    iput-object p2, p0, Lt3/f;->b:Ljava/lang/Object;

    iput p3, p0, Lt3/f;->c:I

    iput-object p4, p0, Lt3/f;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lt3/f;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    iget v0, p0, Lt3/f;->c:I

    iget-object v1, p0, Lt3/f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lt3/f;->c:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lt3/f;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt3/g;

    new-instance v1, Lt3/f;

    iget-object v2, p0, Lt3/f;->a:Ljava/util/List;

    iget v3, p0, Lt3/f;->c:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lt3/f;->d:Ljava/lang/Object;

    invoke-direct {v1, v2, p1, v3, v4}, Lt3/f;-><init>(Ljava/util/List;Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lt3/g;->a(Lt3/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lt3/f;->d:Ljava/lang/Object;

    return-object p1
.end method
