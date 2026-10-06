.class public Lnl/c;
.super Lnl/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnl/a;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnl/b;-><init>(Landroid/content/Context;Lnl/a;Z)V

    return-void
.end method


# virtual methods
.method protected e(FLnl/a;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lnl/b;->e(FLnl/a;)V

    iget-object p1, p0, Lnl/b;->k:Landroid/graphics/Paint;

    iget p2, p0, Lnl/b;->g:F

    iget v0, p0, Lnl/b;->e:F

    iget v1, p0, Lnl/b;->f:F

    iget v2, p0, Lnl/b;->l:I

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method
