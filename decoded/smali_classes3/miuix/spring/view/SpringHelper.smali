.class public abstract Lmiuix/spring/view/SpringHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/spring/view/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/spring/view/SpringHelper$c;
    }
.end annotation


# instance fields
.field private a:Lmiuix/spring/view/SpringHelper$c;

.field private b:Lmiuix/spring/view/SpringHelper$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiuix/spring/view/SpringHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiuix/spring/view/SpringHelper$a;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    iput-object v0, p0, Lmiuix/spring/view/SpringHelper;->a:Lmiuix/spring/view/SpringHelper$c;

    new-instance v0, Lmiuix/spring/view/SpringHelper$b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiuix/spring/view/SpringHelper$b;-><init>(Lmiuix/spring/view/SpringHelper;I)V

    iput-object v0, p0, Lmiuix/spring/view/SpringHelper;->b:Lmiuix/spring/view/SpringHelper$c;

    return-void
.end method


# virtual methods
.method protected abstract b()Z
.end method

.method protected abstract c()Z
.end method

.method protected abstract d(II[I[II)Z
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected abstract e(IIII[II[I)V
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected abstract f()I
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lmiuix/spring/view/SpringHelper;->a:Lmiuix/spring/view/SpringHelper$c;

    iget v0, v0, Lmiuix/spring/view/SpringHelper$c;->a:F

    float-to-int v0, v0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lmiuix/spring/view/SpringHelper;->b:Lmiuix/spring/view/SpringHelper$c;

    iget v0, v0, Lmiuix/spring/view/SpringHelper$c;->a:F

    float-to-int v0, v0

    return v0
.end method

.method protected abstract i()I
.end method

.method public j(II[I[II)Z
    .locals 11
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v6, p0

    const/4 v0, 0x2

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    invoke-virtual {p0}, Lmiuix/spring/view/SpringHelper;->m()Z

    move-result v1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    if-nez p5, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    new-array v0, v0, [I

    aput p1, v0, v9

    aput p2, v0, v8

    iget-object v2, v6, Lmiuix/spring/view/SpringHelper;->a:Lmiuix/spring/view/SpringHelper$c;

    invoke-virtual {v2, v0, v7, v1}, Lmiuix/spring/view/SpringHelper$c;->c([I[IZ)Z

    move-result v2

    iget-object v3, v6, Lmiuix/spring/view/SpringHelper;->b:Lmiuix/spring/view/SpringHelper$c;

    invoke-virtual {v3, v0, v7, v1}, Lmiuix/spring/view/SpringHelper$c;->c([I[IZ)Z

    move-result v1

    or-int/2addr v1, v2

    aget v2, v0, v9

    aget v0, v0, v8

    if-eqz v1, :cond_1

    iget-object v3, v6, Lmiuix/spring/view/SpringHelper;->a:Lmiuix/spring/view/SpringHelper$c;

    iget v3, v3, Lmiuix/spring/view/SpringHelper$c;->b:F

    iget-object v4, v6, Lmiuix/spring/view/SpringHelper;->b:Lmiuix/spring/view/SpringHelper$c;

    iget v4, v4, Lmiuix/spring/view/SpringHelper$c;->b:F

    invoke-interface {p0, v3, v4}, Lmiuix/spring/view/a;->a(FF)V

    :cond_1
    move v10, v1

    goto :goto_1

    :cond_2
    move v2, p1

    move v0, p2

    move v10, v9

    :goto_1
    if-eqz v10, :cond_3

    aget v1, v7, v9

    sub-int/2addr v2, v1

    aget v1, v7, v8

    sub-int/2addr v0, v1

    :cond_3
    move v1, v2

    move v2, v0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lmiuix/spring/view/SpringHelper;->d(II[I[II)Z

    move-result v0

    or-int/2addr v0, v10

    if-eqz p3, :cond_4

    aget v1, p3, v9

    aget v2, v7, v9

    add-int/2addr v1, v2

    aput v1, p3, v9

    aget v1, p3, v8

    aget v2, v7, v8

    add-int/2addr v1, v2

    aput v1, p3, v8

    :cond_4
    return v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public k(IIII[II[I)V
    .locals 8
    .param p5    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p7, :cond_0

    const/4 p7, 0x2

    new-array p7, p7, [I

    fill-array-data p7, :array_0

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lmiuix/spring/view/SpringHelper;->e(IIII[II[I)V

    const/4 p1, 0x0

    aget p1, p7, p1

    sub-int/2addr p3, p1

    const/4 p1, 0x1

    aget p1, p7, p1

    sub-int/2addr p4, p1

    if-nez p3, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    iget-object p1, p0, Lmiuix/spring/view/SpringHelper;->a:Lmiuix/spring/view/SpringHelper$c;

    invoke-virtual {p1, p3, p5, p6, p7}, Lmiuix/spring/view/SpringHelper$c;->d(I[II[I)Z

    move-result p1

    iget-object p2, p0, Lmiuix/spring/view/SpringHelper;->b:Lmiuix/spring/view/SpringHelper$c;

    invoke-virtual {p2, p4, p5, p6, p7}, Lmiuix/spring/view/SpringHelper$c;->d(I[II[I)Z

    move-result p2

    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    iget-object p1, p0, Lmiuix/spring/view/SpringHelper;->a:Lmiuix/spring/view/SpringHelper$c;

    iget p1, p1, Lmiuix/spring/view/SpringHelper$c;->b:F

    iget-object p2, p0, Lmiuix/spring/view/SpringHelper;->b:Lmiuix/spring/view/SpringHelper$c;

    iget p2, p2, Lmiuix/spring/view/SpringHelper$c;->b:F

    invoke-interface {p0, p1, p2}, Lmiuix/spring/view/a;->a(FF)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lmiuix/spring/view/SpringHelper;->b:Lmiuix/spring/view/SpringHelper$c;

    const/4 v1, 0x0

    iput v1, v0, Lmiuix/spring/view/SpringHelper$c;->a:F

    iput v1, v0, Lmiuix/spring/view/SpringHelper$c;->b:F

    iget-object v0, p0, Lmiuix/spring/view/SpringHelper;->a:Lmiuix/spring/view/SpringHelper$c;

    iput v1, v0, Lmiuix/spring/view/SpringHelper$c;->a:F

    iput v1, v0, Lmiuix/spring/view/SpringHelper$c;->b:F

    return-void
.end method

.method protected abstract m()Z
.end method

.method protected abstract vibrate()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
