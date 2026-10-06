.class public Lmiuix/androidbasewidget/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:J

.field private c:D

.field private d:D

.field private e:Lmiuix/androidbasewidget/widget/d;

.field private f:D

.field private g:D

.field private h:D

.field private i:D

.field private j:D

.field private k:D

.field private l:I

.field private m:Z

.field private n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/e;->m:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/e;->m:Z

    return-void
.end method

.method public b()Z
    .locals 12

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/e;->e:Lmiuix/androidbasewidget/widget/d;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/e;->m:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/e;->n:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/e;->m:Z

    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/e;->h:D

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/e;->d:D

    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/e;->f:D

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/e;->c:D

    return v1

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/e;->b:J

    iget-wide v4, p0, Lmiuix/androidbasewidget/widget/e;->a:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    const v2, 0x3c83126f    # 0.016f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    iget-wide v3, p0, Lmiuix/androidbasewidget/widget/e;->b:J

    iput-wide v3, p0, Lmiuix/androidbasewidget/widget/e;->a:J

    iget v0, p0, Lmiuix/androidbasewidget/widget/e;->l:I

    const/4 v3, 0x2

    iget-object v4, p0, Lmiuix/androidbasewidget/widget/e;->e:Lmiuix/androidbasewidget/widget/d;

    iget-wide v5, p0, Lmiuix/androidbasewidget/widget/e;->k:D

    if-ne v0, v3, :cond_4

    iget-wide v8, p0, Lmiuix/androidbasewidget/widget/e;->h:D

    iget-wide v10, p0, Lmiuix/androidbasewidget/widget/e;->i:D

    move v7, v2

    invoke-virtual/range {v4 .. v11}, Lmiuix/androidbasewidget/widget/d;->a(DFDD)D

    move-result-wide v3

    iget-wide v5, p0, Lmiuix/androidbasewidget/widget/e;->i:D

    float-to-double v7, v2

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iput-wide v5, p0, Lmiuix/androidbasewidget/widget/e;->d:D

    iput-wide v3, p0, Lmiuix/androidbasewidget/widget/e;->k:D

    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/e;->h:D

    invoke-virtual {p0, v5, v6, v2, v3}, Lmiuix/androidbasewidget/widget/e;->g(DD)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/e;->d:D

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/e;->i:D

    goto :goto_2

    :cond_4
    iget-wide v8, p0, Lmiuix/androidbasewidget/widget/e;->f:D

    iget-wide v10, p0, Lmiuix/androidbasewidget/widget/e;->g:D

    move v7, v2

    invoke-virtual/range {v4 .. v11}, Lmiuix/androidbasewidget/widget/d;->a(DFDD)D

    move-result-wide v3

    iget-wide v5, p0, Lmiuix/androidbasewidget/widget/e;->g:D

    float-to-double v7, v2

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iput-wide v5, p0, Lmiuix/androidbasewidget/widget/e;->c:D

    iput-wide v3, p0, Lmiuix/androidbasewidget/widget/e;->k:D

    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/e;->f:D

    invoke-virtual {p0, v5, v6, v2, v3}, Lmiuix/androidbasewidget/widget/e;->g(DD)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    iput-boolean v1, p0, Lmiuix/androidbasewidget/widget/e;->n:Z

    goto :goto_2

    :cond_5
    iget-wide v2, p0, Lmiuix/androidbasewidget/widget/e;->c:D

    iput-wide v2, p0, Lmiuix/androidbasewidget/widget/e;->g:D

    :goto_2
    return v1

    :cond_6
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .locals 2

    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/e;->c:D

    double-to-int v0, v0

    return v0
.end method

.method public final d()I
    .locals 2

    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/e;->d:D

    double-to-int v0, v0

    return v0
.end method

.method public final e()I
    .locals 2

    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/e;->f:D

    double-to-int v0, v0

    return v0
.end method

.method public final f()I
    .locals 2

    iget-wide v0, p0, Lmiuix/androidbasewidget/widget/e;->g:D

    double-to-int v0, v0

    return v0
.end method

.method public g(DD)Z
    .locals 0

    sub-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/e;->m:Z

    return v0
.end method

.method public i(I)V
    .locals 2

    int-to-double v0, p1

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/e;->f:D

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/e;->m:Z

    return-void
.end method

.method public j(FFFFF)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/e;->m:Z

    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/e;->n:Z

    float-to-double v0, p1

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/e;->g:D

    float-to-double v0, p2

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/e;->f:D

    float-to-double v0, p3

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/e;->i:D

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/e;->j:D

    double-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/e;->d:D

    float-to-double v0, p4

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/e;->h:D

    float-to-double v0, p5

    iput-wide v0, p0, Lmiuix/androidbasewidget/widget/e;->k:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x40b3880000000000L    # 5000.0

    cmpg-double p5, v0, v2

    const v0, 0x3eb33333    # 0.35f

    const v1, 0x3f666666    # 0.9f

    if-gtz p5, :cond_0

    new-instance p5, Lmiuix/androidbasewidget/widget/d;

    invoke-direct {p5, v1, v0}, Lmiuix/androidbasewidget/widget/d;-><init>(FF)V

    goto :goto_0

    :cond_0
    new-instance p5, Lmiuix/androidbasewidget/widget/d;

    invoke-direct {p5, v1, v0}, Lmiuix/androidbasewidget/widget/d;-><init>(FF)V

    :goto_0
    iput-object p5, p0, Lmiuix/androidbasewidget/widget/e;->e:Lmiuix/androidbasewidget/widget/d;

    sub-float/2addr p4, p3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    :goto_1
    iput p1, p0, Lmiuix/androidbasewidget/widget/e;->l:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/androidbasewidget/widget/e;->a:J

    return-void
.end method
