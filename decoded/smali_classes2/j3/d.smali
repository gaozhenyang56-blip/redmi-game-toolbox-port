.class public Lj3/d;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/d$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:Lj3/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    sget-object v0, Lj3/d$a;->a:Lj3/d$a;

    iput-object v0, p0, Lj3/d;->i:Lj3/d$a;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07008d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lj3/d;->b:I

    const v0, 0x7f060073

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lj3/d;->c:I

    const v0, 0x7f06007d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lj3/d;->e:I

    const v0, 0x7f06007c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lj3/d;->d:I

    const v0, 0x7f06009d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lj3/d;->f:I

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lj3/d;->h:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lj3/d;->g:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lj3/d;->c:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lj3/d;->a:I

    return-void
.end method

.method public d(Lj3/d$a;)V
    .locals 0

    iput-object p1, p0, Lj3/d;->i:Lj3/d$a;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v6, p0, Lj3/d;->i:Lj3/d$a;

    sget-object v7, Lj3/d$a;->a:Lj3/d$a;

    if-ne v6, v7, :cond_1

    iget v6, p0, Lj3/d;->g:I

    if-nez v6, :cond_0

    iget-object v6, p0, Lj3/d;->h:Landroid/graphics/Paint;

    iget v7, p0, Lj3/d;->c:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, p0, Lj3/d;->b:I

    int-to-float v7, v6

    int-to-float v6, v6

    iget-object v8, p0, Lj3/d;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v7, v6, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lj3/d;->h:Landroid/graphics/Paint;

    iget v6, p0, Lj3/d;->f:I

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/RectF;

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v6, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lj3/d;->h:Landroid/graphics/Paint;

    iget v1, p0, Lj3/d;->c:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lj3/d;->h:Landroid/graphics/Paint;

    iget v1, p0, Lj3/d;->d:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget v0, p0, Lj3/d;->b:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget-object v6, p0, Lj3/d;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lj3/d;->i:Lj3/d$a;

    sget-object v1, Lj3/d$a;->b:Lj3/d$a;

    if-ne v0, v1, :cond_2

    iget v0, p0, Lj3/d;->a:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    mul-float/2addr v0, v3

    invoke-direct {v1, v5, v5, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lj3/d;->h:Landroid/graphics/Paint;

    iget v2, p0, Lj3/d;->e:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lj3/d;->b:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lj3/d;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
