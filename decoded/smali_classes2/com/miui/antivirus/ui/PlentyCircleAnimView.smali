.class public Lcom/miui/antivirus/ui/PlentyCircleAnimView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/miui/antivirus/ui/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/ui/PlentyCircleAnimView$c;,
        Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;,
        Lcom/miui/antivirus/ui/PlentyCircleAnimView$d;,
        Lcom/miui/antivirus/ui/PlentyCircleAnimView$b;
    }
.end annotation


# static fields
.field private static final o:[F

.field private static final p:[F

.field private static final q:[F

.field private static final r:[I

.field private static final s:[I


# instance fields
.field private final a:[F

.field private b:Landroid/animation/AnimatorSet;

.field private c:Landroid/animation/AnimatorSet;

.field private d:I

.field private final e:[F

.field private final f:[F

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private final m:Landroid/graphics/Paint;

.field private final n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->o:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->p:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->q:[F

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->r:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->s:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
        0x3cf5c28f    # 0.03f
        0x3ca3d70a    # 0.02f
        0x3d23d70a    # 0.04f
        0x3d851eb8    # 0.065f
        0x3d75c28f    # 0.06f
        0x3ca3d70a    # 0.02f
        0x3d23d70a    # 0.04f
        0x3ca3d70a    # 0.02f
        0x3d23d70a    # 0.04f
        0x3d851eb8    # 0.065f
        0x3d851eb8    # 0.065f
        0x3d75c28f    # 0.06f
        0x3d23d70a    # 0.04f
        0x3d23d70a    # 0.04f
    .end array-data

    :array_1
    .array-data 4
        0x437f0000    # 255.0f
        0x437f0000    # 255.0f
        0x437f0000    # 255.0f
        0x42fe0000    # 127.0f
        0x437a0000    # 250.0f
        0x42fe0000    # 127.0f
        0x42fe0000    # 127.0f
        0x42fe0000    # 127.0f
        0x42fe0000    # 127.0f
        0x437f0000    # 255.0f
        0x437f0000    # 255.0f
        0x437f0000    # 255.0f
        0x437f0000    # 255.0f
        0x437f0000    # 255.0f
        0x437f0000    # 255.0f
        0x437f0000    # 255.0f
    .end array-data

    :array_2
    .array-data 4
        0x42200000    # 40.0f
        0x42f00000    # 120.0f
        0x43340000    # 180.0f
        0x43570000    # 215.0f
        0x43870000    # 270.0f
        0x43110000    # 145.0f
        0x0
        0x41200000    # 10.0f
        0x425c0000    # 55.0f
        0x42be0000    # 95.0f
        0x42c80000    # 100.0f
        0x433e0000    # 190.0f
        0x435c0000    # 220.0f
        0x43700000    # 240.0f
        0x43960000    # 300.0f
        0x439d8000    # 315.0f
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x5
        0x8
        0x9
        0xf
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x3
        0x4
        0x6
        0x7
        0xa
        0xb
        0xc
        0xd
        0xe
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x10

    new-array p2, p1, [F

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->d:I

    const/16 p2, 0x8

    new-array p3, p2, [F

    iput-object p3, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->e:[F

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f:[F

    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->m:Landroid/graphics/Paint;

    new-array p1, p1, [Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iput-object p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060c59

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060c58

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->h:I

    return-void

    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
        0x41700000    # 15.0f
        0x41000000    # 8.0f
        0x41a00000    # 20.0f
        0x42200000    # 40.0f
        0x41f00000    # 30.0f
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
        0x42200000    # 40.0f
        0x42200000    # 40.0f
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
        0x41a00000    # 20.0f
    .end array-data
.end method

.method static synthetic a(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)[F
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->e:[F

    return-object p0
.end method

.method static synthetic b(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)[F
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    return-object p0
.end method

.method static synthetic d()[F
    .locals 1

    sget-object v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->p:[F

    return-object v0
.end method

.method static synthetic e(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)[F
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f:[F

    return-object p0
.end method

.method private f(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private g(D)D
    .locals 2

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    return-wide p1
.end method

.method private h()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/miui/antivirus/ui/PlentyCircleAnimView$b;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$b;-><init>(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/miui/antivirus/ui/PlentyCircleAnimView$c;

    iget-object v2, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->e:[F

    invoke-direct {v1, v2}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$c;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private i()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/miui/antivirus/ui/PlentyCircleAnimView$d;

    invoke-direct {v1, p0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$d;-><init>(Lcom/miui/antivirus/ui/PlentyCircleAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/miui/antivirus/ui/PlentyCircleAnimView$c;

    iget-object v2, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f:[F

    invoke-direct {v1, v2}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$c;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private j()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    array-length v4, v3

    if-ge v1, v4, :cond_0

    iget v4, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    sget-object v5, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->o:[F

    aget v5, v5, v1

    mul-float/2addr v4, v5

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    float-to-double v3, v3

    sget-object v5, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->q:[F

    aget v6, v5, v2

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v3, v6

    double-to-float v3, v3

    add-float v7, v1, v3

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    float-to-double v3, v3

    aget v6, v5, v2

    float-to-double v8, v6

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v3, v8

    double-to-float v3, v3

    add-float v8, v1, v3

    iget-object v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v3, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v4, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v4, v2

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    const/16 v11, 0xff

    const/4 v12, 0x0

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v3, v1, v2

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    float-to-double v2, v2

    const/4 v4, 0x1

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float v7, v1, v2

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    float-to-double v2, v2

    aget v6, v5, v4

    float-to-double v8, v6

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-float v2, v2

    add-float v8, v1, v2

    iget-object v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v2, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v3, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v2, v1, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    float-to-double v2, v2

    const/4 v4, 0x2

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float v7, v1, v2

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    float-to-double v2, v2

    aget v6, v5, v4

    float-to-double v8, v6

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-float v2, v2

    add-float v8, v1, v2

    iget-object v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v2, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v3, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->h:I

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v2, v1, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    float-to-double v2, v2

    const/4 v4, 0x3

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float v7, v1, v2

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    float-to-double v2, v2

    aget v6, v5, v4

    float-to-double v8, v6

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-float v2, v2

    add-float v8, v1, v2

    iget-object v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v2, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v3, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    const/16 v11, 0x7f

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v2, v1, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    float-to-double v2, v2

    const/4 v4, 0x4

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float v7, v1, v2

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    float-to-double v2, v2

    aget v6, v5, v4

    float-to-double v8, v6

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-float v2, v2

    add-float v8, v1, v2

    iget-object v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v2, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v3, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    const/16 v11, 0xfa

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v2, v1, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    float-to-double v2, v2

    const/4 v4, 0x5

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    float-to-double v6, v3

    aget v3, v5, v4

    float-to-double v8, v3

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v13, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v6, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v14, v6, v4

    iget v15, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    const/16 v16, 0x7f

    new-instance v17, Landroid/graphics/RadialGradient;

    iget-object v6, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v6, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->h:I

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v6, v17

    move v7, v1

    move v8, v2

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    move-object v6, v13

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v13, v3, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    const/4 v4, 0x6

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v6, v3

    aget v3, v5, v4

    float-to-double v8, v3

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v13, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v6, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v14, v6, v4

    iget v15, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    new-instance v17, Landroid/graphics/RadialGradient;

    iget-object v6, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v6, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v6, v17

    move v7, v1

    move v8, v2

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    move-object v6, v13

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v13, v3, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    const/4 v4, 0x7

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float v7, v1, v2

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    aget v6, v5, v4

    float-to-double v8, v6

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-float v2, v2

    add-float v8, v1, v2

    iget-object v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v2, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v3, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    const/16 v11, 0x7f

    const/4 v12, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v2, v1, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    const/16 v4, 0x8

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float v7, v1, v2

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    aget v6, v5, v4

    float-to-double v8, v6

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-float v2, v2

    add-float v8, v1, v2

    iget-object v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v2, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v3, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->h:I

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v2, v1, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    const/16 v4, 0x9

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float v7, v1, v2

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    aget v6, v5, v4

    float-to-double v8, v6

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-float v2, v2

    add-float v8, v1, v2

    iget-object v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v2, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v3, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->h:I

    const/16 v11, 0xff

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v2, v1, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    const/16 v4, 0xa

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float v7, v1, v2

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    aget v6, v5, v4

    float-to-double v8, v6

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-float v2, v2

    add-float v8, v1, v2

    iget-object v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v2, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v3, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v2, v1, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    const/16 v4, 0xb

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v6, v3

    aget v3, v5, v4

    float-to-double v8, v3

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v13, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v6, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v14, v6, v4

    iget v15, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    const/16 v16, 0xff

    new-instance v17, Landroid/graphics/RadialGradient;

    iget-object v6, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v6, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v6, v17

    move v7, v1

    move v8, v2

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    move-object v6, v13

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v13, v3, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    const/16 v4, 0xc

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v6, v3

    aget v3, v5, v4

    float-to-double v8, v3

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v13, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v6, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v14, v6, v4

    iget v15, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    new-instance v17, Landroid/graphics/RadialGradient;

    iget-object v6, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v6, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v6, v17

    move v7, v1

    move v8, v2

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    move-object v6, v13

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v13, v3, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    const/16 v4, 0xd

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v6, v3

    aget v3, v5, v4

    float-to-double v8, v3

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v3, v6

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v13, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v6, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v14, v6, v4

    iget v15, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    new-instance v17, Landroid/graphics/RadialGradient;

    iget-object v6, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v6, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v6, v17

    move v7, v1

    move v8, v2

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    move-object v6, v13

    move v9, v14

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v12, v17

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v13, v3, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    const/16 v4, 0xe

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float v7, v1, v2

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    aget v6, v5, v4

    float-to-double v8, v6

    invoke-direct {v0, v8, v9}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    double-to-float v2, v2

    add-float v8, v1, v2

    iget-object v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v2, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v3, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    const/16 v11, 0xff

    const/4 v12, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v2, v1, v4

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    const/16 v4, 0xf

    aget v6, v5, v4

    float-to-double v6, v6

    invoke-direct {v0, v6, v7}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->f(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-float v2, v2

    add-float v7, v1, v2

    iget v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget v2, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    float-to-double v2, v2

    aget v5, v5, v4

    float-to-double v5, v5

    invoke-direct {v0, v5, v6}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g(D)D

    move-result-wide v5

    mul-double/2addr v2, v5

    double-to-float v2, v2

    add-float v8, v1, v2

    iget-object v1, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    new-instance v2, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    iget-object v3, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v3, v4

    iget v10, v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->h:I

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;-><init>(FFFIILandroid/graphics/Shader;)V

    aput-object v2, v1, v4

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x226

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->stopAnimAndRelease()V

    return-void
.end method

.method public getScale()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->b:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->b:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->c:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->c:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->stopAnimAndRelease()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->m:Landroid/graphics/Paint;

    iget v5, v3, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->d:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v4, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->m:Landroid/graphics/Paint;

    iget-object v5, v3, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->f:Landroid/graphics/Shader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v4, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->m:Landroid/graphics/Paint;

    iget v5, v3, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->e:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v4, v3, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->a:F

    iget v5, v3, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->b:F

    iget v3, v3, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->c:F

    iget-object v6, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j:F

    iget p3, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float/2addr p1, p2

    const/high16 p2, 0x40400000    # 3.0f

    div-float/2addr p1, p2

    const p2, 0x3ccccccd    # 0.025f

    mul-float/2addr p2, p1

    sub-float p2, p1, p2

    iput p2, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k:F

    const p2, 0x3ca3d70a    # 0.02f

    mul-float/2addr p2, p1

    add-float/2addr p1, p2

    iput p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->l:F

    iget-object p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->m:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-direct {p0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->j()V

    return-void
.end method

.method public scale(F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setDarkColor(I)V
    .locals 13

    iput p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->h:I

    sget-object v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->r:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    iget-object v4, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    aget-object v4, v4, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iput p1, v4, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->d:I

    iget-object v5, v4, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->f:Landroid/graphics/Shader;

    if-eqz v5, :cond_1

    new-instance v5, Landroid/graphics/RadialGradient;

    iget-object v6, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    aget-object v6, v6, v3

    iget v7, v6, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->a:F

    iget v8, v6, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->b:F

    iget-object v6, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v6, v3

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v5

    move v10, p1

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v5, v4, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->f:Landroid/graphics/Shader;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLightColor(I)V
    .locals 13

    iput p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->g:I

    sget-object v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->s:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    iget-object v4, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    aget-object v4, v4, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iput p1, v4, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->d:I

    iget-object v5, v4, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->f:Landroid/graphics/Shader;

    if-eqz v5, :cond_1

    new-instance v5, Landroid/graphics/RadialGradient;

    iget-object v6, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->n:[Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;

    aget-object v6, v6, v3

    iget v7, v6, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->a:F

    iget v8, v6, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->b:F

    iget-object v6, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->a:[F

    aget v9, v6, v3

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v5

    move v10, p1

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v5, v4, Lcom/miui/antivirus/ui/PlentyCircleAnimView$e;->f:Landroid/graphics/Shader;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLoopingStop(Z)V
    .locals 0

    return-void
.end method

.method public setType(I)V
    .locals 12

    iget v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->d:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->d:I

    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->c:Landroid/animation/AnimatorSet;

    iget p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->d:I

    const v0, 0x7f060c5a

    const v1, 0x7f060c58

    const-string v2, "darkColor"

    const v3, 0x7f060c5b

    const v4, 0x7f060c59

    const-string v5, "lightColor"

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-nez p1, :cond_0

    new-array p1, v10, [I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, p1, v9

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, p1, v8

    invoke-static {p0, v5, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-array v3, v10, [I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v3, v9

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v3, v8

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->c:Landroid/animation/AnimatorSet;

    new-array v2, v10, [Landroid/animation/Animator;

    aput-object p1, v2, v9

    aput-object v0, v2, v8

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    :cond_0
    new-array p1, v10, [I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    aput v4, p1, v9

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, p1, v8

    invoke-static {p0, v5, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-array v3, v10, [I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    aput v1, v3, v9

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    aput v0, v3, v8

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->c:Landroid/animation/AnimatorSet;

    new-array v2, v10, [Landroid/animation/Animator;

    aput-object p1, v2, v9

    aput-object v0, v2, v8

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method public startAnim()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->b:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->h()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->i()Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->b:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public stopAnimAndRelease()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->k()V

    return-void
.end method

.method public updateSecurityStatus(Lw2/r;)V
    .locals 1

    sget-object v0, Lcom/miui/antivirus/ui/PlentyCircleAnimView$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/antivirus/ui/PlentyCircleAnimView;->setType(I)V

    :goto_0
    return-void
.end method
