.class Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/widget/storage/StorageColumnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/BitmapDrawable;

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Point;

.field private e:Landroid/graphics/Rect;

.field private f:F

.field private g:J

.field private h:J

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:Landroid/view/animation/DecelerateInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->m:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    const v2, 0x7f080feb

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->a:Landroid/graphics/drawable/BitmapDrawable;

    const v0, 0x7f071b98

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->b:I

    const v0, 0x7f071b97

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->c:I

    const v0, 0x7f071b99

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    new-instance v0, Landroid/graphics/Point;

    iget v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->c:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p3, v2

    add-int/2addr p3, p1

    invoke-direct {v0, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->d:Landroid/graphics/Point;

    iput v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->f:F

    iput v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->i:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->j:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->k:I

    const/16 p1, 0xff

    iput p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->l:I

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->g:J

    const-wide/16 p1, 0x7d0

    iput-wide p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->h:J

    iget p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->b:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iget p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->c:I

    int-to-float p3, p3

    mul-float/2addr v1, p3

    div-float/2addr v1, p2

    float-to-int p2, v1

    new-instance p3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->d:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    sub-int v2, v1, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v3, v0, p2

    add-int/2addr v1, p1

    add-int/2addr v0, p2

    invoke-direct {p3, v2, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->e:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public b(J)V
    .locals 5

    iget-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->g:J

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    long-to-float p2, v0

    iget-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->h:J

    long-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->m:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p2, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    iget p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->k:I

    int-to-float v0, p2

    iget v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->l:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int p2, v0

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    iget p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->i:F

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->j:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    iget p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->b:I

    int-to-float p1, p1

    mul-float/2addr p1, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->c:I

    int-to-float v1, v1

    mul-float/2addr p2, v1

    div-float/2addr p2, v0

    float-to-int p2, p2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->d:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    sub-int v3, v2, p1

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v4, v1, p2

    add-int/2addr v2, p1

    add-int/2addr v1, p2

    invoke-direct {v0, v3, v4, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->e:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$d;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method
