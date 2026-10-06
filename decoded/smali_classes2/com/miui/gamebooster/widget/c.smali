.class public Lcom/miui/gamebooster/widget/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field private static final h:I

.field private static final i:I


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Bitmap;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private final f:Landroid/graphics/RectF;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#383E4B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/gamebooster/widget/c;->h:I

    const-string v0, "#3E4457"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/miui/gamebooster/widget/c;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/c;->f:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/c;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071dfd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v6, v3

    sget v8, Lcom/miui/gamebooster/widget/c;->h:I

    sget v9, Lcom/miui/gamebooster/widget/c;->i:I

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f071da6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/widget/c;->a(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0806ee

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    if-nez p1, :cond_0

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/miui/gamebooster/widget/c;->c:Landroid/graphics/Bitmap;

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/gamebooster/widget/c;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gamebooster/widget/c;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/widget/c;->e:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/widget/c;->g:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/miui/gamebooster/widget/c;->g:I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/widget/c;->f:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/miui/gamebooster/widget/c;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/c;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/widget/c;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/gamebooster/widget/c;->e:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/gamebooster/widget/c;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/c;->f:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object p3, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    iget-object p4, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    sub-int/2addr p3, p4

    iget-object p4, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    iget-object v0, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    if-lez p1, :cond_0

    if-lez p3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    iget-object p3, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget-object p4, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    cmpl-float p1, p1, p2

    if-lt p3, p4, :cond_2

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-le p1, p2, :cond_4

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-le p1, p2, :cond_4

    goto :goto_1

    :cond_2
    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-le p1, p2, :cond_4

    :goto_0
    iget-object p1, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float v0, p1

    iget-object p1, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    mul-float v1, p1, p2

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p2, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-le p1, p2, :cond_4

    :goto_1
    iget-object p1, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float v1, p1

    iget-object p1, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/miui/gamebooster/widget/c;->d:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    mul-float v0, p1, p2

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v0

    float-to-int p1, p1

    iget-object p2, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object p3, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, v1

    float-to-int p3, p3

    iget-object p4, p0, Lcom/miui/gamebooster/widget/c;->a:Landroid/graphics/Rect;

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    :goto_3
    iget-object v0, p0, Lcom/miui/gamebooster/widget/c;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p3, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
