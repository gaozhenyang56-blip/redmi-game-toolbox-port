.class public Lvh/b$a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvh/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected final a:F

.field protected final b:I

.field protected final c:Landroid/graphics/RectF;

.field protected final d:Landroid/graphics/RectF;

.field protected final e:Landroid/graphics/BitmapShader;

.field protected final f:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lvh/b$a;->c:Landroid/graphics/RectF;

    int-to-float p2, p2

    iput p2, p0, Lvh/b$a;->a:F

    iput p3, p0, Lvh/b$a;->b:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lvh/b$a;->e:Landroid/graphics/BitmapShader;

    if-le p2, v0, :cond_0

    sub-int p1, p2, v0

    div-int/lit8 p1, p1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    add-int v3, p3, p1

    int-to-float v3, v3

    int-to-float v4, p3

    sub-int/2addr p2, p3

    sub-int/2addr p2, p1

    int-to-float p1, p2

    sub-int/2addr v0, p3

    int-to-float p2, v0

    invoke-direct {v2, v3, v4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    :cond_0
    sub-int p1, v0, p2

    div-int/lit8 p1, p1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, p3

    add-int v4, p3, p1

    int-to-float v4, v4

    sub-int/2addr p2, p3

    int-to-float p2, p2

    sub-int/2addr v0, p3

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-direct {v2, v3, v4, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    iput-object v2, p0, Lvh/b$a;->d:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lvh/b$a;->f:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lvh/b$a;->c:Landroid/graphics/RectF;

    iget v1, p0, Lvh/b$a;->a:F

    iget-object v2, p0, Lvh/b$a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lvh/b$a;->c:Landroid/graphics/RectF;

    iget v1, p0, Lvh/b$a;->b:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lvh/b$a;->b:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v4, p0, Lvh/b$a;->b:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v0, p0, Lvh/b$a;->d:Landroid/graphics/RectF;

    iget-object v1, p0, Lvh/b$a;->c:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lvh/b$a;->e:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, p1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lvh/b$a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lvh/b$a;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
