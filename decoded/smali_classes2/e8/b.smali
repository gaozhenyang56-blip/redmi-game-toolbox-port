.class public Le8/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f733333    # 0.95f

    iput v0, p0, Le8/b;->a:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Le8/b;->b:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Le8/b;->c:F

    iput v0, p0, Le8/b;->d:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Le8/b;->e:F

    invoke-direct {p0}, Le8/b;->c()V

    return-void
.end method

.method private c()V
    .locals 7

    iget v0, p0, Le8/b;->b:F

    float-to-double v0, v0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Le8/b;->e:F

    float-to-double v3, v2

    mul-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, p0, Le8/b;->f:F

    iget v1, p0, Le8/b;->a:F

    float-to-double v3, v1

    const-wide v5, 0x402921fb54442d18L    # 12.566370614359172

    mul-double/2addr v3, v5

    float-to-double v5, v2

    mul-double/2addr v3, v5

    iget v1, p0, Le8/b;->b:F

    float-to-double v5, v1

    div-double/2addr v3, v5

    double-to-float v1, v3

    iput v1, p0, Le8/b;->g:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    mul-float/2addr v1, v1

    sub-float/2addr v2, v1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Le8/b;->e:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    div-float/2addr v0, v3

    iput v0, p0, Le8/b;->h:F

    iget v3, p0, Le8/b;->g:F

    div-float/2addr v3, v2

    mul-float/2addr v3, v1

    neg-float v1, v3

    iput v1, p0, Le8/b;->i:F

    iget v2, p0, Le8/b;->c:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    sub-float/2addr v2, v1

    div-float/2addr v2, v0

    iput v2, p0, Le8/b;->j:F

    return-void
.end method


# virtual methods
.method public a(F)Le8/b;
    .locals 0

    iput p1, p0, Le8/b;->a:F

    invoke-direct {p0}, Le8/b;->c()V

    return-object p0
.end method

.method public b(F)Le8/b;
    .locals 0

    iput p1, p0, Le8/b;->b:F

    invoke-direct {p0}, Le8/b;->c()V

    return-object p0
.end method

.method public getInterpolation(F)F
    .locals 8

    iget v0, p0, Le8/b;->i:F

    mul-float/2addr v0, p1

    float-to-double v0, v0

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Le8/b;->d:F

    float-to-double v2, v2

    iget v4, p0, Le8/b;->h:F

    mul-float/2addr v4, p1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Le8/b;->j:F

    float-to-double v4, v4

    iget v6, p0, Le8/b;->h:F

    mul-float/2addr v6, p1

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method
