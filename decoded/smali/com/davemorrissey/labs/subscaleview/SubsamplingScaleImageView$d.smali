.class Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Landroid/graphics/PointF;

.field private d:Landroid/graphics/PointF;

.field private e:Landroid/graphics/PointF;

.field private f:Landroid/graphics/PointF;

.field private g:Landroid/graphics/PointF;

.field private h:J

.field private i:Z

.field private j:I

.field private k:I

.field private l:J

.field private m:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->h:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->i:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->j:I

    iput v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->k:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->l:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->i:Z

    return p0
.end method

.method static synthetic b(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;
    .locals 0

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->m:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;

    return-object p0
.end method

.method static synthetic d(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;)Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;
    .locals 0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->m:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$g;

    return-object p1
.end method

.method static synthetic e(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->f:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic f(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->f:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic g(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)J
    .locals 2

    iget-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->l:J

    return-wide v0
.end method

.method static synthetic h(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;J)J
    .locals 0

    iput-wide p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->l:J

    return-wide p1
.end method

.method static synthetic i(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)J
    .locals 2

    iget-wide v0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->h:J

    return-wide v0
.end method

.method static synthetic j(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;J)J
    .locals 0

    iput-wide p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->h:J

    return-wide p1
.end method

.method static synthetic k(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)I
    .locals 0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->j:I

    return p0
.end method

.method static synthetic l(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;I)I
    .locals 0

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->j:I

    return p1
.end method

.method static synthetic m(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)F
    .locals 0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->a:F

    return p0
.end method

.method static synthetic n(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;F)F
    .locals 0

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->a:F

    return p1
.end method

.method static synthetic o(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)F
    .locals 0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->b:F

    return p0
.end method

.method static synthetic p(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;F)F
    .locals 0

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->b:F

    return p1
.end method

.method static synthetic q(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->g:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic r(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->g:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic s(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->d:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic t(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->d:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic u(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)I
    .locals 0

    iget p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->k:I

    return p0
.end method

.method static synthetic v(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;I)I
    .locals 0

    iput p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->k:I

    return p1
.end method

.method static synthetic w(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->c:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic x(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->c:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic y(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;)Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->e:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic z(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$d;->e:Landroid/graphics/PointF;

    return-object p1
.end method
