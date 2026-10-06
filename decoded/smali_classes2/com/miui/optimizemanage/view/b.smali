.class public Lcom/miui/optimizemanage/view/b;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/ui/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/view/b$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private g:F

.field private h:F

.field private i:Lcom/miui/optimizemanage/view/b$c;

.field private j:F

.field private k:F

.field private l:Lcom/miui/common/ui/a$c;

.field private m:Landroid/animation/AnimatorSet;

.field private n:Z

.field private o:Z

.field private p:Landroid/animation/ObjectAnimator;

.field private q:Landroid/animation/ObjectAnimator;

.field private r:Landroid/animation/ObjectAnimator;

.field private s:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/optimizemanage/view/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/optimizemanage/view/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/optimizemanage/view/b;->e:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/optimizemanage/view/b;->f:Landroid/graphics/Paint;

    sget-object p1, Lcom/miui/optimizemanage/view/b$c;->a:Lcom/miui/optimizemanage/view/b$c;

    iput-object p1, p0, Lcom/miui/optimizemanage/view/b;->i:Lcom/miui/optimizemanage/view/b$c;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/view/b;->n:Z

    iput-boolean p1, p0, Lcom/miui/optimizemanage/view/b;->o:Z

    invoke-direct {p0}, Lcom/miui/optimizemanage/view/b;->i()V

    return-void
.end method

.method static synthetic b(Lcom/miui/optimizemanage/view/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/view/b;->n:Z

    return p0
.end method

.method static synthetic c(Lcom/miui/optimizemanage/view/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizemanage/view/b;->n:Z

    return p1
.end method

.method static synthetic d(Lcom/miui/optimizemanage/view/b;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/view/b;->q:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/optimizemanage/view/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/optimizemanage/view/b;->o:Z

    return p0
.end method

.method static synthetic f(Lcom/miui/optimizemanage/view/b;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/view/b;->p:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/optimizemanage/view/b;)Lcom/miui/common/ui/a$c;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/view/b;->l:Lcom/miui/common/ui/a$c;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/optimizemanage/view/b;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/view/b;->r:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->e:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071a9f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060d29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/view/b;->c:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060d2c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/view/b;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060d2b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/optimizemanage/view/b;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizemanage/view/b;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizemanage/view/b;->o:Z

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->m:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/optimizemanage/view/b;->m:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/b;->a()V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->p:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->q:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->r:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->r:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/optimizemanage/view/b;->n:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/miui/optimizemanage/view/b;->h:F

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->f:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/optimizemanage/view/b;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/miui/optimizemanage/view/b;->d:Landroid/graphics/RectF;

    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/optimizemanage/view/b;->f:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/miui/optimizemanage/view/b;->s:F

    iget v1, p0, Lcom/miui/optimizemanage/view/b;->j:F

    iget v2, p0, Lcom/miui/optimizemanage/view/b;->k:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, p0, Lcom/miui/optimizemanage/view/b;->d:Landroid/graphics/RectF;

    iget v5, p0, Lcom/miui/optimizemanage/view/b;->g:F

    iget v6, p0, Lcom/miui/optimizemanage/view/b;->h:F

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/miui/optimizemanage/view/b;->e:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float v3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float p3, v3, p1

    iput p3, p0, Lcom/miui/optimizemanage/view/b;->j:F

    int-to-float v4, p2

    div-float p2, v4, p1

    iput p2, p0, Lcom/miui/optimizemanage/view/b;->k:F

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    const/high16 p1, 0x40400000    # 3.0f

    div-float/2addr p2, p1

    new-instance p1, Landroid/graphics/RectF;

    iget p3, p0, Lcom/miui/optimizemanage/view/b;->j:F

    sub-float p4, p3, p2

    iget v0, p0, Lcom/miui/optimizemanage/view/b;->k:F

    sub-float v1, v0, p2

    add-float/2addr p3, p2

    add-float/2addr v0, p2

    invoke-direct {p1, p4, v1, p3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/miui/optimizemanage/view/b;->d:Landroid/graphics/RectF;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/optimizemanage/view/b;->g:F

    iput p1, p0, Lcom/miui/optimizemanage/view/b;->h:F

    new-instance p1, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/miui/optimizemanage/view/b;->a:I

    iget v6, p0, Lcom/miui/optimizemanage/view/b;->b:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iget-object p2, p0, Lcom/miui/optimizemanage/view/b;->e:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/optimizemanage/view/b;->a()V

    return-void
.end method

.method public setAnimProgress(F)V
    .locals 1

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    sget-object p1, Lcom/miui/optimizemanage/view/b$c;->a:Lcom/miui/optimizemanage/view/b$c;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/optimizemanage/view/b$c;->b:Lcom/miui/optimizemanage/view/b$c;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/view/b;->setType(Lcom/miui/optimizemanage/view/b$c;)V

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/optimizemanage/view/b;->c:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGradientEndColor(I)V
    .locals 8

    iput p1, p0, Lcom/miui/optimizemanage/view/b;->b:I

    new-instance p1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/miui/optimizemanage/view/b;->a:I

    iget v6, p0, Lcom/miui/optimizemanage/view/b;->b:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setGradientStartColor(I)V
    .locals 8

    iput p1, p0, Lcom/miui/optimizemanage/view/b;->a:I

    new-instance p1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/miui/optimizemanage/view/b;->a:I

    iget v6, p0, Lcom/miui/optimizemanage/view/b;->b:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setInnerArcSweepAngle(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/miui/optimizemanage/view/b;->g:F

    const/high16 v0, 0x43b40000    # 360.0f

    add-float/2addr p1, v0

    :goto_0
    neg-float p1, p1

    iput p1, p0, Lcom/miui/optimizemanage/view/b;->h:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOnAnimOverListener(Lcom/miui/common/ui/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/view/b;->l:Lcom/miui/common/ui/a$c;

    return-void
.end method

.method public setRotateAngle(F)V
    .locals 0

    neg-float p1, p1

    iput p1, p0, Lcom/miui/optimizemanage/view/b;->s:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setType(Lcom/miui/optimizemanage/view/b$c;)V
    .locals 12

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->i:Lcom/miui/optimizemanage/view/b$c;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/miui/optimizemanage/view/b;->i:Lcom/miui/optimizemanage/view/b$c;

    sget-object v0, Lcom/miui/optimizemanage/view/b$c;->a:Lcom/miui/optimizemanage/view/b$c;

    const v1, 0x7f060d2a

    const v2, 0x7f060d29

    const v3, 0x7f060d2d

    const v4, 0x7f060d2b

    const v5, 0x7f060d2e

    const v6, 0x7f060d2c

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move v10, v2

    move v2, v1

    move v1, v10

    move v11, v4

    move v4, v3

    move v3, v11

    :goto_0
    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v7, 0x0

    aput p1, v6, v7

    const/4 p1, 0x1

    aput v0, v6, p1

    const-string v0, "gradientStartColor"

    invoke-static {p0, v0, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v8, 0x3e8

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-array v6, v5, [I

    aput v3, v6, v7

    aput v4, v6, p1

    const-string v3, "gradientEndColor"

    invoke-static {p0, v3, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/ArgbEvaluator;

    invoke-direct {v4}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-array v4, v5, [I

    aput v1, v4, v7

    aput v2, v4, p1

    const-string v1, "borderColor"

    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/miui/optimizemanage/view/b;->m:Landroid/animation/AnimatorSet;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v3, v4, p1

    aput-object v1, v4, v5

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/view/b;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method public startAnim()V
    .locals 7

    iget-boolean v0, p0, Lcom/miui/optimizemanage/view/b;->n:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizemanage/view/b;->n:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/optimizemanage/view/b;->o:Z

    iget-object v1, p0, Lcom/miui/optimizemanage/view/b;->q:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/optimizemanage/view/b;->q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/miui/optimizemanage/view/b;->r:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/optimizemanage/view/b;->r:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v1, p0, Lcom/miui/optimizemanage/view/b;->p:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/optimizemanage/view/b;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_2
    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "innerArcSweepAngle"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/optimizemanage/view/b;->q:Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/optimizemanage/view/b;->r:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/miui/optimizemanage/view/b;->r:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/miui/optimizemanage/view/b$a;

    invoke-direct {v3, p0}, Lcom/miui/optimizemanage/view/b$a;-><init>(Lcom/miui/optimizemanage/view/b;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/miui/optimizemanage/view/b;->q:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/miui/optimizemanage/view/b$b;

    invoke-direct {v3, p0}, Lcom/miui/optimizemanage/view/b$b;-><init>(Lcom/miui/optimizemanage/view/b;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/miui/optimizemanage/view/b;->q:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    const-string v2, "rotateAngle"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x708

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/optimizemanage/view/b;->p:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/miui/optimizemanage/view/b;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->p:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/b;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x3c4c0000    # -360.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method
