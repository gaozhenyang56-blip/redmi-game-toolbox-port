.class Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/widget/storage/StorageColumnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->c:J

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->g:Landroid/view/animation/DecelerateInterpolator;

    iput-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->a:Landroid/graphics/Bitmap;

    const/16 p1, 0xff

    iput p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->f:I

    iput p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->d:I

    iput p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->f:I

    return v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Z
    .locals 4

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->d:I

    iget v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->e:I

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->b:J

    iget-wide v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(Z)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xff

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->d:I

    iput v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->e:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->d:I

    iput v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->e:I

    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->b:J

    return-void
.end method

.method public e(J)Z
    .locals 6

    iget-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->b:J

    iget-wide v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->c:J

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-lez v4, :cond_0

    return v5

    :cond_0
    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->b:J

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-gez p1, :cond_1

    return v5

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    long-to-float p2, v0

    long-to-float v0, v2

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->g:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p2, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    iget p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->d:I

    int-to-float v0, p2

    iget v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->e:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->f:I

    const/4 p1, 0x1

    return p1
.end method
