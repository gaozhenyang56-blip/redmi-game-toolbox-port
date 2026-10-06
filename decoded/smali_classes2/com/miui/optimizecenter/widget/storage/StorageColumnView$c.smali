.class Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/widget/storage/StorageColumnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/Rect;

.field private g:Lcom/miui/optimizecenter/widget/storage/a;

.field private h:J

.field private i:J

.field private j:Landroid/view/animation/DecelerateInterpolator;

.field private k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:J

.field private r:J

.field private s:J

.field private t:Z

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field final synthetic z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;


# direct methods
.method public constructor <init>(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;Lcom/miui/optimizecenter/widget/storage/a;Landroid/content/res/Resources;)V
    .locals 5

    iput-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->j:Landroid/view/animation/DecelerateInterpolator;

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->g:Lcom/miui/optimizecenter/widget/storage/a;

    iget v0, p2, Lcom/miui/optimizecenter/widget/storage/a;->a:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a:Landroid/graphics/drawable/Drawable;

    iget v0, p2, Lcom/miui/optimizecenter/widget/storage/a;->b:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->b:Landroid/graphics/drawable/Drawable;

    iget p2, p2, Lcom/miui/optimizecenter/widget/storage/a;->c:I

    invoke-virtual {p3, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->c:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p2

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->k:I

    invoke-static {p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p2

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->n:I

    invoke-static {p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p2

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->o:I

    invoke-static {p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p2

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->p:I

    const-wide/16 p2, 0x2bc

    iput-wide p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->h:J

    new-instance p2, Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->d(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p3

    invoke-static {p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, p3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d:Landroid/graphics/Rect;

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p3, v2

    iget-object v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    iget v4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->n:I

    add-int/2addr v2, v4

    invoke-direct {p2, v0, p3, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget p3, p3, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p1

    add-int/2addr p1, v2

    invoke-direct {p2, v0, v2, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->f:Landroid/graphics/Rect;

    iput v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->w:I

    const/16 p1, 0xff

    iput p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->x:I

    const/16 p1, 0x32

    iput p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->y:I

    return-void
.end method

.method static synthetic a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;)Lcom/miui/optimizecenter/widget/storage/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->g:Lcom/miui/optimizecenter/widget/storage/a;

    return-object p0
.end method

.method private d(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, p3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v1, p3, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v1

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {v1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->j(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->j(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Landroid/graphics/Paint;

    move-result-object p2

    iget-object v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->b(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Landroid/graphics/PorterDuffXfermode;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->j(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->a()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;->b()Landroid/graphics/Bitmap;

    move-result-object p2

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->j(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->j(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Landroid/graphics/Paint;

    move-result-object p2

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->j(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Landroid/graphics/Paint;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private n(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public c(Landroid/graphics/Canvas;ZZZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->b(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_1
    if-eqz p4, :cond_2

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->c:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->f:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->h(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->b:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->h(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->h(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    move-result-object p4

    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;)V

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->c:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->f:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->i(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->b:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->i(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;)V

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->a:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d:Landroid/graphics/Rect;

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->i(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$a;

    move-result-object p4

    goto :goto_1

    :goto_2
    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->o:I

    return v0
.end method

.method public g()Landroid/graphics/Point;
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->g(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public i(IIZ)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->f:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    const/4 v3, 0x1

    if-gt p1, v2, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-lt p1, v2, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-nez p1, :cond_2

    return v1

    :cond_2
    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d:Landroid/graphics/Rect;

    if-eqz p3, :cond_3

    iget p1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    if-lt p2, p1, :cond_4

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    if-gt p2, p1, :cond_4

    move v1, v3

    :cond_4
    return v1
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->t:Z

    return v0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->n:I

    iget v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->k:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()V
    .locals 4

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->w:I

    invoke-direct {p0, v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->n(I)V

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {v1}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->f:Landroid/graphics/Rect;

    iget v3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->v:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {v2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result v2

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->v()V

    return-void
.end method

.method public o(III)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;
    .locals 0

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->x:I

    iput p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->w:I

    iput p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->y:I

    return-object p0
.end method

.method public p(J)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;
    .locals 0

    iput-wide p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->q:J

    return-object p0
.end method

.method public q(J)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;
    .locals 0

    iput-wide p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->r:J

    return-object p0
.end method

.method public r(II)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;
    .locals 0

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->u:I

    iput p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->v:I

    return-object p0
.end method

.method public s(J)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;
    .locals 0

    iput-wide p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->s:J

    return-object p0
.end method

.method public t(IIII)V
    .locals 1

    iput p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->k:I

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->f:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p3

    iput p1, v0, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p4

    iput p1, p3, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d:Landroid/graphics/Rect;

    div-int/lit8 p4, p2, 0x2

    add-int/2addr p1, p4

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->v()V

    return-void
.end method

.method public u(I)Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;
    .locals 2

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->k:I

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x2bc

    iput-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->h:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->i:J

    iget v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->n:I

    iput v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->m:I

    iput p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->k:I

    if-ge v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->l:Z

    return-object p0
.end method

.method public w(JZ)V
    .locals 5

    iget-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->r:J

    iget-wide p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->s:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    long-to-float p1, v0

    iget p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->y:I

    int-to-float p2, p2

    div-float p2, p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, p2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p2

    :cond_1
    iget v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->w:I

    int-to-float v3, v2

    iget v4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->x:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, p2

    add-float/2addr v3, v2

    float-to-int p2, v3

    invoke-direct {p0, p2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->n(I)V

    iget-wide v2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->q:J

    long-to-float p2, v2

    div-float/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    if-eqz p3, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    goto :goto_0

    :cond_2
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p2, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p2, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    :goto_0
    iget p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->v:I

    int-to-float v0, p2

    iget v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->u:I

    sub-int/2addr v1, p2

    int-to-float p2, v1

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    float-to-int p1, v0

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iget-object v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {v0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->f:Landroid/graphics/Rect;

    iput p1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    iput p1, v1, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->e(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p3

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p3

    :goto_1
    sub-int/2addr p1, p3

    iput p1, p2, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    div-int/lit8 p3, v0, 0x2

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->v()V

    iget-wide p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->r:J

    iget-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->s:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->q:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->t:Z

    return-void
.end method

.method public x(IIJZ)V
    .locals 2

    iget-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->i:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->i:J

    const-wide/16 p3, 0x0

    cmp-long p3, v0, p3

    if-gez p3, :cond_0

    return-void

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    long-to-float p4, v0

    iget-wide v0, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->h:J

    long-to-float v0, v0

    div-float/2addr p4, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->j:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p4, p3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p3

    iget p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->m:I

    int-to-float v0, p4

    iget v1, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->k:I

    sub-int p4, v1, p4

    int-to-float p4, p4

    mul-float/2addr p4, p3

    add-float/2addr v0, p4

    float-to-int p3, v0

    iput p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->n:I

    iget-boolean p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->l:Z

    if-eqz p4, :cond_1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    goto :goto_0

    :cond_1
    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    :goto_0
    iput p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->n:I

    if-nez p5, :cond_2

    iget-boolean p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->l:Z

    if-nez p3, :cond_2

    iget p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->n:I

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->a(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    iput p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->n:I

    :cond_2
    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->f(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p4}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p4

    if-le p2, p4, :cond_3

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p3

    :cond_3
    div-int/lit8 p3, p3, 0x2

    iput p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->p:I

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p2

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->f(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iget p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->n:I

    add-int/2addr p3, p1

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->e(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    float-to-int p2, p2

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->f(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p3

    add-int/2addr p3, p2

    iget-object p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p2}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->c(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->z:Lcom/miui/optimizecenter/widget/storage/StorageColumnView;

    invoke-static {p3}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView;->f(Lcom/miui/optimizecenter/widget/storage/StorageColumnView;)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->o:I

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->f:Landroid/graphics/Rect;

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    iget p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->p:I

    sub-int/2addr p1, p4

    iput p1, p3, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->e:Landroid/graphics/Rect;

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    iget p4, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->n:I

    sub-int/2addr p1, p4

    iput p1, p3, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->d:Landroid/graphics/Rect;

    div-int/lit8 p4, p2, 0x2

    add-int/2addr p1, p4

    iput p1, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    iput p1, p3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/miui/optimizecenter/widget/storage/StorageColumnView$c;->v()V

    return-void
.end method
