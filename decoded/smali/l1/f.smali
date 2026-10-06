.class public Ll1/f;
.super Ll1/a;
.source "SourceFile"


# instance fields
.field private final x:Lf1/d;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/d;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Ll1/a;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/d;)V

    new-instance v0, Lk1/n;

    invoke-virtual {p2}, Ll1/d;->l()Ljava/util/List;

    move-result-object p2

    const-string v1, "__container"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lk1/n;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    new-instance p2, Lf1/d;

    invoke-direct {p2, p1, p0, v0}, Lf1/d;-><init>(Lcom/airbnb/lottie/LottieDrawable;Ll1/a;Lk1/n;)V

    iput-object p2, p0, Ll1/f;->x:Lf1/d;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lf1/d;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected E(Li1/e;ILjava/util/List;Li1/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li1/e;",
            "I",
            "Ljava/util/List<",
            "Li1/e;",
            ">;",
            "Li1/e;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Ll1/f;->x:Lf1/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lf1/d;->h(Li1/e;ILjava/util/List;Li1/e;)V

    return-void
.end method

.method public e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Ll1/a;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Ll1/f;->x:Lf1/d;

    iget-object v0, p0, Ll1/a;->m:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v0, p3}, Lf1/d;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method u(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ll1/f;->x:Lf1/d;

    invoke-virtual {v0, p1, p2, p3}, Lf1/d;->g(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
