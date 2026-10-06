.class public Lcom/miui/securityscan/ui/main/WaveTextView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/graphics/Paint;

.field private c:F

.field private d:F

.field private e:F

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/animation/AnimatorSet;

.field private h:F

.field private i:I

.field private j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/ui/main/WaveTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/WaveTextView;->e()V

    return-void
.end method

.method static synthetic a(Lcom/miui/securityscan/ui/main/WaveTextView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->c:F

    return p1
.end method

.method static synthetic b(Lcom/miui/securityscan/ui/main/WaveTextView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->d:F

    return p1
.end method

.method static synthetic c(Lcom/miui/securityscan/ui/main/WaveTextView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->e:F

    return p1
.end method

.method private d(IJJ)V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4, p5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p2, Lcom/miui/securityscan/ui/main/WaveTextView$a;

    invoke-direct {p2, p0, p1}, Lcom/miui/securityscan/ui/main/WaveTextView$a;-><init>(Lcom/miui/securityscan/ui/main/WaveTextView;I)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        -0x3f600000    # -5.0f
        0x0
        0x40a00000    # 5.0f
        0x0
    .end array-data
.end method

.method private e()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    const v2, 0x7f060c51

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071899

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v1, 0x7f071e8f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/t;->k(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x370

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07189a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->i:I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->f:Ljava/util/List;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->g:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public f()V
    .locals 12

    const/4 v1, 0x0

    const-wide/16 v2, 0x2bc

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/ui/main/WaveTextView;->d(IJJ)V

    const/4 v7, 0x1

    const-wide/16 v8, 0x2bc

    const-wide/16 v10, 0x46

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/miui/securityscan/ui/main/WaveTextView;->d(IJJ)V

    const/4 v1, 0x2

    const-wide/16 v4, 0x8c

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/ui/main/WaveTextView;->d(IJJ)V

    const/4 v7, 0x0

    const-wide/16 v10, 0x410

    invoke-direct/range {v6 .. v11}, Lcom/miui/securityscan/ui/main/WaveTextView;->d(IJJ)V

    const/4 v1, 0x1

    const-wide/16 v4, 0x456

    invoke-direct/range {v0 .. v5}, Lcom/miui/securityscan/ui/main/WaveTextView;->d(IJJ)V

    const/4 v7, 0x2

    const-wide/16 v10, 0x4e2

    invoke-direct/range {v6 .. v11}, Lcom/miui/securityscan/ui/main/WaveTextView;->d(IJJ)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->g:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->g:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->g:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->h:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->j:F

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v2, v4, v2

    div-float/2addr v2, v1

    add-float/2addr v3, v2

    sub-float/2addr v3, v4

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->a:Ljava/lang/String;

    const-string v2, "NEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    const-string v2, "N"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v4, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    const-string v5, "E"

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v1, v0

    add-float/2addr v4, v1

    iget v6, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->c:F

    add-float/2addr v6, v3

    iget v7, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->d:F

    add-float/2addr v7, v3

    iget v8, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->e:F

    add-float/2addr v3, v8

    iget-object v8, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v6, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v1, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    const-string v1, "W"

    invoke-virtual {p1, v1, v4, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->j:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071898

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->j:F

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr v0, p1

    iget p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->i:I

    int-to-float v1, p1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->h:F

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->h:F

    :goto_0
    iget p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->h:F

    float-to-int p1, p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method public setText(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/WaveTextView;->a:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
