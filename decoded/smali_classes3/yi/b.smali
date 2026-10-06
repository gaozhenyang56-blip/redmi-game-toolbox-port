.class public Lyi/b;
.super Lyi/d;
.source "SourceFile"


# instance fields
.field private e:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lyi/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyi/b;->e:Ljava/lang/Double;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 10

    invoke-super {p0, p1}, Lyi/d;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lyi/b;->e:Ljava/lang/Double;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyi/b;->i()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lyi/b;->e:Ljava/lang/Double;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object p1, p0, Lyi/d;->d:Lxi/a;

    iget-object p1, p1, Lxi/a;->b:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-object p1, p0, Lyi/d;->d:Lxi/a;

    iget-object p1, p1, Lxi/a;->a:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    iget-object p1, p0, Lyi/d;->d:Lxi/a;

    iget-object p1, p1, Lxi/a;->b:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Lyi/b;->h(D)D

    move-result-wide v4

    iget-object p1, p0, Lyi/d;->d:Lxi/a;

    iget-object p1, p1, Lxi/a;->a:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Lyi/b;->h(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    iget-object p1, p0, Lyi/d;->d:Lxi/a;

    iget-object p1, p1, Lxi/a;->a:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Lyi/b;->h(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    const-wide v4, 0x3fdfffffffe48320L    # 0.4999999999

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iget-object p1, p0, Lyi/b;->e:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    sub-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public h(D)D
    .locals 8

    iget-object v0, p0, Lyi/b;->e:Ljava/lang/Double;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    cmpg-double p1, p1, v3

    if-gez p1, :cond_0

    move-wide v1, v3

    :cond_0
    return-wide v1

    :cond_1
    cmpg-double v3, p1, v3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    if-gez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    mul-double/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_2
    neg-double p1, p1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    div-double/2addr p1, v6

    invoke-static {p1, p2}, Ljava/lang/Math;->exp(D)D

    move-result-wide p1

    mul-double/2addr p1, v4

    sub-double/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public i()Ljava/lang/Double;
    .locals 11

    iget-object v0, p0, Lxi/c;->b:Ljava/lang/Float;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lxi/c;->a:Ljava/lang/Float;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-object v1, p0, Lxi/c;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lyi/d;->d:Lxi/a;

    iget-object v2, v2, Lxi/a;->b:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lyi/d;->d:Lxi/a;

    iget-object v4, v4, Lxi/a;->a:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double v5, v2, v4

    iget-object v2, p0, Lyi/a;->c:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-instance v10, Lyi/b$a;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v9

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lyi/b$a;-><init>(Lyi/b;Ljava/lang/Double;DLjava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sub-double/2addr v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v10, v0}, Lyi/b$a;->b(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    sub-double/2addr v6, v8

    cmpl-double v2, v2, v6

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    add-double/2addr v6, v8

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v10, v3}, Lyi/b$a;->b(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_1

    move-object v0, v3

    :cond_1
    invoke-virtual {v10, v3}, Lyi/b$a;->b(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double/2addr v1, v6

    div-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Epsilon and Delta must be set before calling _find_scale()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j(Ljava/lang/Float;)Ljava/lang/Float;
    .locals 10

    invoke-super {p0, p1}, Lyi/d;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lyi/b;->e:Ljava/lang/Double;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lyi/b;->i()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lyi/b;->e:Ljava/lang/Double;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    iget-object p1, p0, Lyi/d;->d:Lxi/a;

    iget-object p1, p1, Lxi/a;->b:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iget-object p1, p0, Lyi/d;->d:Lxi/a;

    iget-object p1, p1, Lxi/a;->a:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    float-to-double v2, p1

    iget-object p1, p0, Lyi/d;->d:Lxi/a;

    iget-object p1, p1, Lxi/a;->b:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Lyi/b;->h(D)D

    move-result-wide v4

    iget-object p1, p0, Lyi/d;->d:Lxi/a;

    iget-object p1, p1, Lxi/a;->a:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Lyi/b;->h(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    iget-object p1, p0, Lyi/d;->d:Lxi/a;

    iget-object p1, p1, Lxi/a;->a:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Lyi/b;->h(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    const-wide v4, 0x3fdfffffffe48320L    # 0.4999999999

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    iget-object p1, p0, Lyi/b;->e:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v2, v8

    sub-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
