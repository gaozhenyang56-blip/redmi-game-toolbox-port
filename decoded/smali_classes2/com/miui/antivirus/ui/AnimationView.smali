.class public Lcom/miui/antivirus/ui/AnimationView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/ui/AnimationView$b;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:I

.field private f:Lcom/miui/antivirus/ui/AnimationView$b;


# direct methods
.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/antivirus/ui/AnimationView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/antivirus/ui/AnimationView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AnimationView;->b:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/antivirus/ui/AnimationView;->d:F

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/antivirus/ui/AnimationView;->c:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/antivirus/ui/AnimationView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/antivirus/ui/AnimationView;->e:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/AnimationView;->a:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/miui/antivirus/ui/AnimationView;->d:F

    iget-object v2, p0, Lcom/miui/antivirus/ui/AnimationView;->c:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method public getHighLightAlpha()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/ui/AnimationView;->e:I

    return v0
.end method

.method public getHighLightViewTop()F
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/ui/AnimationView;->d:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    sget-object v0, Lcom/miui/antivirus/ui/AnimationView$a;->a:[I

    iget-object v1, p0, Lcom/miui/antivirus/ui/AnimationView;->f:Lcom/miui/antivirus/ui/AnimationView$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/AnimationView;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/antivirus/ui/AnimationView;->b(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public setHighLightAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/ui/AnimationView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHighLightViewTop(F)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/ui/AnimationView;->d:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
