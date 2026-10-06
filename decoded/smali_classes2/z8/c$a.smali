.class Lz8/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzh/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lz8/c;


# direct methods
.method constructor <init>(Lz8/c;)V
    .locals 0

    iput-object p1, p0, Lz8/c$a;->a:Lz8/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lz8/c$a;->a:Lz8/c;

    invoke-static {v3}, Lz8/c;->h(Lz8/c;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v3

    invoke-direct {v5, v3, v3, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string v6, "#33FFFFFF"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lz8/c$a;->a:Lz8/c;

    invoke-static {v6}, Lz8/c;->h(Lz8/c;)F

    move-result v6

    div-float/2addr v6, v4

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lz8/c$a;->a:Lz8/c;

    invoke-static {v4}, Lz8/c;->i(Lz8/c;)F

    move-result v4

    iget-object v6, p0, Lz8/c$a;->a:Lz8/c;

    invoke-static {v6}, Lz8/c;->i(Lz8/c;)F

    move-result v6

    invoke-virtual {v3, v5, v4, v6, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/RectF;

    iget-object v4, p0, Lz8/c$a;->a:Lz8/c;

    invoke-static {v4}, Lz8/c;->h(Lz8/c;)F

    move-result v4

    iget-object v5, p0, Lz8/c$a;->a:Lz8/c;

    invoke-static {v5}, Lz8/c;->h(Lz8/c;)F

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lz8/c$a;->a:Lz8/c;

    invoke-static {v7}, Lz8/c;->h(Lz8/c;)F

    move-result v7

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lz8/c$a;->a:Lz8/c;

    invoke-static {v8}, Lz8/c;->h(Lz8/c;)F

    move-result v8

    sub-float/2addr v7, v8

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, p1, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lz8/c$a;->a:Lz8/c;

    invoke-static {p1}, Lz8/c;->i(Lz8/c;)F

    move-result p1

    iget-object v2, p0, Lz8/c$a;->a:Lz8/c;

    invoke-static {v2}, Lz8/c;->i(Lz8/c;)F

    move-result v2

    invoke-virtual {v3, v1, p1, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object v0
.end method
