.class public Lcom/miui/powercenter/mainui/MainBatteryView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/mainui/MainBatteryView$o;
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/graphics/LinearGradient;

.field private m:Landroid/widget/Button;

.field private n:I

.field private o:I

.field private p:Lcom/miui/powercenter/mainui/MainBatteryView$o;

.field private q:Landroid/animation/ValueAnimator;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:I

.field private v:F

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/mainui/MainBatteryView$o;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Random;

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->a:I

    const/16 p2, 0x64

    iput p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->u:I

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->x:Ljava/util/Random;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->f:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->f:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->g:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->g:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07170a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->c:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071709

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->b:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701cd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->d:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071e1a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->e:F

    iget p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->c:F

    iput p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->v:F

    invoke-static {}, La8/k2;->A()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->y:Z

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/mainui/MainBatteryView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/miui/powercenter/mainui/MainBatteryView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->u:I

    return p1
.end method

.method static synthetic c(Lcom/miui/powercenter/mainui/MainBatteryView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->y:Z

    return p0
.end method

.method static synthetic d(Lcom/miui/powercenter/mainui/MainBatteryView;)F
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->c:F

    return p0
.end method

.method static synthetic e(Lcom/miui/powercenter/mainui/MainBatteryView;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->a:I

    return p0
.end method

.method static synthetic f(Lcom/miui/powercenter/mainui/MainBatteryView;)F
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->d:F

    return p0
.end method

.method static synthetic g(Lcom/miui/powercenter/mainui/MainBatteryView;)Landroid/graphics/LinearGradient;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->l:Landroid/graphics/LinearGradient;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/powercenter/mainui/MainBatteryView;Landroid/graphics/LinearGradient;)Landroid/graphics/LinearGradient;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->l:Landroid/graphics/LinearGradient;

    return-object p1
.end method

.method static synthetic i(Lcom/miui/powercenter/mainui/MainBatteryView;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->o:I

    return p0
.end method

.method static synthetic j(Lcom/miui/powercenter/mainui/MainBatteryView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->o:I

    return p1
.end method

.method static synthetic k(Lcom/miui/powercenter/mainui/MainBatteryView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->g:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic l(Lcom/miui/powercenter/mainui/MainBatteryView;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->m:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic m(Lcom/miui/powercenter/mainui/MainBatteryView;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->n:I

    return p0
.end method

.method static synthetic n(Lcom/miui/powercenter/mainui/MainBatteryView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->n:I

    return p1
.end method

.method static synthetic o(Lcom/miui/powercenter/mainui/MainBatteryView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->f:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic p(Lcom/miui/powercenter/mainui/MainBatteryView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->h:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic q(Lcom/miui/powercenter/mainui/MainBatteryView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->v:F

    return p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    iput-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->p:Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-virtual {v1}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->d()Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->resume()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    iput-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->p:Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-virtual {v1}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->d()Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->a:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v0

    int-to-float v6, v1

    const/4 v7, 0x0

    const/16 v8, 0x1f

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->c:F

    iget v3, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->b:F

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->e:F

    iget-object v3, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-boolean v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->y:Z

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->v:F

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->c:F

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->c:F

    iget v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->v:F

    sub-float/2addr v1, v2

    :goto_1
    move v8, v1

    const/4 v7, 0x0

    iget v9, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->b:F

    iget-object v10, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->g:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->a:I

    int-to-float v2, v1

    iget v3, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->c:F

    mul-float/2addr v2, v3

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v2, v5

    iget v6, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->d:F

    sub-float/2addr v2, v6

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_5

    const/16 v2, 0x14

    if-lt v1, v2, :cond_5

    iget-boolean v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->j:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->i:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->k:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->t:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->y:Z

    int-to-float v7, v1

    mul-float/2addr v7, v3

    div-float/2addr v7, v5

    if-eqz v2, :cond_3

    sub-float/2addr v7, v6

    sub-float v6, v3, v7

    goto :goto_2

    :cond_3
    sub-float v6, v7, v6

    :goto_2
    move v8, v6

    int-to-float v1, v1

    mul-float/2addr v1, v3

    div-float/2addr v1, v5

    if-eqz v2, :cond_4

    sub-float/2addr v3, v1

    move v10, v3

    goto :goto_3

    :cond_4
    move v10, v1

    :goto_3
    const/4 v9, 0x0

    iget v11, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->b:F

    iget-object v12, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->h:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->r:Z

    if-nez v1, :cond_8

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-static {v2}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->a(Lcom/miui/powercenter/mainui/MainBatteryView$o;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_6

    goto/16 :goto_5

    :cond_6
    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-virtual {v2}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->e()Landroid/graphics/Paint;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-static {v2}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->b(Lcom/miui/powercenter/mainui/MainBatteryView$o;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_7

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-static {v3}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->b(Lcom/miui/powercenter/mainui/MainBatteryView$o;)F

    move-result v3

    iget-object v5, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-static {v5}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->c(Lcom/miui/powercenter/mainui/MainBatteryView$o;)F

    move-result v5

    iget-object v6, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-static {v6}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->b(Lcom/miui/powercenter/mainui/MainBatteryView$o;)F

    move-result v6

    iget-object v7, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-static {v7}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->a(Lcom/miui/powercenter/mainui/MainBatteryView$o;)F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-static {v7}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->c(Lcom/miui/powercenter/mainui/MainBatteryView$o;)F

    move-result v7

    iget-object v8, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-static {v8}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->a(Lcom/miui/powercenter/mainui/MainBatteryView$o;)F

    move-result v8

    add-float/2addr v7, v8

    invoke-direct {v2, v3, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-static {v3}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->a(Lcom/miui/powercenter/mainui/MainBatteryView$o;)F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget-object v6, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-static {v6}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->a(Lcom/miui/powercenter/mainui/MainBatteryView$o;)F

    move-result v6

    div-float/2addr v6, v5

    iget-object v5, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-virtual {v5}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->e()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v6, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->b:F

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->c:F

    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    iput-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->p:Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-virtual {v1}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->d()Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->q:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    :cond_3
    return-void
.end method

.method public s()V
    .locals 14

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->a:I

    const/16 v2, 0x14

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->j:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->i:Z

    if-nez v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v5, 0x2

    const/16 v6, 0xa

    if-ge v0, v6, :cond_2

    move v0, v4

    :goto_0
    if-ge v0, v6, :cond_1

    new-instance v7, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-direct {v7, p0}, Lcom/miui/powercenter/mainui/MainBatteryView$o;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V

    iget-object v8, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->x:Ljava/util/Random;

    invoke-virtual {v8}, Ljava/util/Random;->nextFloat()F

    move-result v8

    iget v9, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->b:F

    const/high16 v10, 0x41a00000    # 20.0f

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->x:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v9, v10

    const/high16 v10, 0x40e00000    # 7.0f

    add-float/2addr v9, v10

    iget-object v10, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->x:Ljava/util/Random;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->x:Ljava/util/Random;

    invoke-virtual {v11, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "FFFFFF"

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v7, v8}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->k(F)V

    invoke-virtual {v7, v11}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->h(Landroid/graphics/Paint;)V

    invoke-virtual {v7, v9}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->i(F)V

    invoke-virtual {p0, v7}, Lcom/miui/powercenter/mainui/MainBatteryView;->t(Lcom/miui/powercenter/mainui/MainBatteryView$o;)V

    iget-object v8, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [I

    const-string v6, "#3FD268"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v4

    const-string v7, "#4CF076"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    aput v7, v0, v3

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v5, 0xdac

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->q:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->q:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/powercenter/mainui/MainBatteryView$e;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/mainui/MainBatteryView$e;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_5

    move v0, v4

    :goto_2
    iget-object v6, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    iget-object v6, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->x:Ljava/util/Random;

    const/16 v7, 0x7d0

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iget-object v7, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    iput-object v7, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->p:Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-virtual {v7}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->d()Landroid/animation/ValueAnimator;

    move-result-object v7

    new-array v8, v5, [F

    iget-object v9, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->p:Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-virtual {v9}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->f()F

    move-result v9

    neg-float v9, v9

    aput v9, v8, v4

    iget v9, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->a:I

    int-to-float v9, v9

    iget v10, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->c:F

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    iget-object v10, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->p:Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-virtual {v10}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->f()F

    move-result v10

    sub-float/2addr v9, v10

    aput v9, v8, v3

    invoke-virtual {v7, v8}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-boolean v8, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->r:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->p:Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-virtual {v8}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->f()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {v8, v9}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->j(F)V

    invoke-virtual {v7, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    int-to-long v8, v6

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->r:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    iput-boolean v4, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->r:Z

    :cond_6
    iget v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->a:I

    if-lt v0, v2, :cond_7

    iget-boolean v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->j:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->i:Z

    if-eqz v0, :cond_b

    :cond_7
    move v0, v4

    :goto_4
    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/mainui/MainBatteryView$o;

    invoke-virtual {v1}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->d()Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_8
    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->q:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    iput-boolean v3, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->r:Z

    :cond_b
    return-void
.end method

.method public setButtonStatus(Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->m:Landroid/widget/Button;

    return-void
.end method

.method public setChargingStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->j:Z

    iget p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->a:I

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/mainui/MainBatteryView;->setCurrentValue(I)V

    return-void
.end method

.method public setCurrentValue(I)V
    .locals 8

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->a:I

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->m:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const v1, 0x7f12124a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->n:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->g:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->g:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->g:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->o:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->g:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->h:Landroid/graphics/Paint;

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->h:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->h:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->o:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_4
    iget-boolean v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->k:Z

    const-wide/16 v2, 0x12c

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->o:I

    const-string v6, "#3B9BFF"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    if-eq v0, v7, :cond_8

    new-array v0, v4, [I

    iget v7, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->o:I

    aput v7, v0, v5

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v6, Lvm/g;

    invoke-direct {v6}, Lvm/g;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/miui/powercenter/mainui/MainBatteryView$f;

    invoke-direct {v6, p0}, Lcom/miui/powercenter/mainui/MainBatteryView$f;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-array v0, v4, [I

    iget v6, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->n:I

    aput v6, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060be0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v2, Lvm/g;

    invoke-direct {v2}, Lvm/g;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/miui/powercenter/mainui/MainBatteryView$g;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/mainui/MainBatteryView$g;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V

    :goto_0
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->i:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->o:I

    const-string v6, "#FFB21D"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    if-eq v0, v7, :cond_8

    new-array v0, v4, [I

    iget v7, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->o:I

    aput v7, v0, v5

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v6, Lvm/g;

    invoke-direct {v6}, Lvm/g;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/miui/powercenter/mainui/MainBatteryView$h;

    invoke-direct {v6, p0}, Lcom/miui/powercenter/mainui/MainBatteryView$h;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-array v0, v4, [I

    iget v6, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->n:I

    aput v6, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060be1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v2, Lvm/g;

    invoke-direct {v2}, Lvm/g;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/miui/powercenter/mainui/MainBatteryView$i;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/mainui/MainBatteryView$i;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x14

    if-ge p1, v0, :cond_7

    iget v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->o:I

    const-string v6, "#FF5E56"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    if-eq v0, v7, :cond_8

    new-array v0, v4, [I

    iget v7, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->o:I

    aput v7, v0, v5

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v6, Lvm/g;

    invoke-direct {v6}, Lvm/g;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v6, Lcom/miui/powercenter/mainui/MainBatteryView$j;

    invoke-direct {v6, p0}, Lcom/miui/powercenter/mainui/MainBatteryView$j;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-array v0, v4, [I

    iget v6, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->n:I

    aput v6, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060bdf

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Lvm/g;

    invoke-direct {v2}, Lvm/g;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v2, Lcom/miui/powercenter/mainui/MainBatteryView$k;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/mainui/MainBatteryView$k;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->o:I

    const-string v6, "#36D167"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    if-eq v0, v7, :cond_8

    new-array v0, v4, [I

    iget v7, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->o:I

    aput v7, v0, v5

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v6, Lvm/g;

    invoke-direct {v6}, Lvm/g;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Landroid/animation/ArgbEvaluator;

    invoke-direct {v6}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v6, Lcom/miui/powercenter/mainui/MainBatteryView$l;

    invoke-direct {v6, p0}, Lcom/miui/powercenter/mainui/MainBatteryView$l;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V

    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    new-array v0, v4, [I

    iget v6, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->n:I

    aput v6, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060bde

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    aput v6, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    new-instance v2, Lvm/g;

    invoke-direct {v2}, Lvm/g;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/miui/powercenter/mainui/MainBatteryView$m;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/mainui/MainBatteryView$m;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V

    goto/16 :goto_0

    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/miui/powercenter/mainui/MainBatteryView;->s()V

    iget-boolean v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->s:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v0, :cond_9

    new-array v0, v4, [F

    iget v3, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->c:F

    aput v3, v0, v5

    rsub-int/lit8 v6, p1, 0x64

    int-to-float v6, v6

    mul-float/2addr v6, v3

    div-float/2addr v6, v2

    aput v6, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v3, Lcom/miui/powercenter/mainui/MainBatteryView$n;

    invoke-direct {v3, p0}, Lcom/miui/powercenter/mainui/MainBatteryView$n;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/miui/powercenter/mainui/MainBatteryView$a;

    invoke-direct {v3, p0, p1}, Lcom/miui/powercenter/mainui/MainBatteryView$a;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;I)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->s:Z

    :cond_9
    iget v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->u:I

    if-eq v0, p1, :cond_a

    iget-boolean v3, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->t:Z

    if-eqz v3, :cond_a

    new-array v3, v4, [F

    rsub-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    iget v4, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->c:F

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    aput v0, v3, v5

    rsub-int/lit8 v0, p1, 0x64

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    aput v0, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v1, Lcom/miui/powercenter/mainui/MainBatteryView$b;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/mainui/MainBatteryView$b;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/miui/powercenter/mainui/MainBatteryView$c;

    invoke-direct {v1, p0, p1}, Lcom/miui/powercenter/mainui/MainBatteryView$c;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;I)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_a
    return-void
.end method

.method public setPerformanceModeStatus(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->k:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->k:Z

    iget p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->a:I

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/mainui/MainBatteryView;->setCurrentValue(I)V

    :cond_0
    return-void
.end method

.method public setSaveModeStatus(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->i:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->i:Z

    iget p1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->a:I

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/mainui/MainBatteryView;->setCurrentValue(I)V

    :cond_0
    return-void
.end method

.method public t(Lcom/miui/powercenter/mainui/MainBatteryView$o;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->x:Ljava/util/Random;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->x:Ljava/util/Random;

    const/16 v2, 0x5dc

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p1}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->f()F

    move-result v3

    neg-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->a:I

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/powercenter/mainui/MainBatteryView;->c:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->f()F

    move-result v4

    sub-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v1, Lcom/miui/powercenter/mainui/MainBatteryView$d;

    invoke-direct {v1, p0, p1}, Lcom/miui/powercenter/mainui/MainBatteryView$d;-><init>(Lcom/miui/powercenter/mainui/MainBatteryView;Lcom/miui/powercenter/mainui/MainBatteryView$o;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {p1, v0}, Lcom/miui/powercenter/mainui/MainBatteryView$o;->g(Landroid/animation/ValueAnimator;)V

    return-void
.end method
