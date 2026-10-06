.class public Ljl/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(FIF)Lil/a;
    .locals 2

    invoke-static {}, Lil/a;->a()Lil/a;

    move-result-object v0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    add-float/2addr p0, p2

    int-to-float v1, p1

    div-float/2addr p0, v1

    sub-float/2addr p0, p2

    :goto_0
    iput p0, v0, Lil/a;->c:F

    iput p1, v0, Lil/a;->a:I

    iput p2, v0, Lil/a;->b:F

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Column count must be greater than 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
