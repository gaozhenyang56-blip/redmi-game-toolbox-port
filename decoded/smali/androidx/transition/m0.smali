.class Landroidx/transition/m0;
.super Landroidx/transition/l0;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/l0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)F
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroidx/transition/d0;->a(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public d(Landroid/view/View;IIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2, p3, p4, p5}, Landroidx/transition/i0;->a(Landroid/view/View;IIII)V

    return-void
.end method

.method public e(Landroid/view/View;F)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2}, Landroidx/transition/c0;->a(Landroid/view/View;F)V

    return-void
.end method

.method public f(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2}, Landroidx/transition/k0;->a(Landroid/view/View;I)V

    return-void
.end method

.method public g(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2}, Landroidx/transition/g0;->a(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public h(Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1, p2}, Landroidx/transition/f0;->a(Landroid/view/View;Landroid/graphics/Matrix;)V

    return-void
.end method
