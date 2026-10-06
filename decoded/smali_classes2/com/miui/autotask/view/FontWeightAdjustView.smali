.class public Lcom/miui/autotask/view/FontWeightAdjustView;
.super Landroid/widget/SeekBar;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/autotask/view/FontWeightAdjustView$b;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:Lcom/miui/autotask/view/FontWeightAdjustView$b;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/miui/powercenter/autotask/k;

.field final k:Z

.field private l:I

.field private final m:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lx4/z1;->r()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->k:Z

    const/16 p1, 0x32

    iput p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->l:I

    new-instance p1, Lcom/miui/autotask/view/FontWeightAdjustView$a;

    invoke-direct {p1, p0}, Lcom/miui/autotask/view/FontWeightAdjustView$a;-><init>(Lcom/miui/autotask/view/FontWeightAdjustView;)V

    iput-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->m:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/miui/autotask/view/FontWeightAdjustView;->f(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/miui/autotask/view/FontWeightAdjustView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->l:I

    return p1
.end method

.method static synthetic b(Lcom/miui/autotask/view/FontWeightAdjustView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->a:F

    return p1
.end method

.method static synthetic c(Lcom/miui/autotask/view/FontWeightAdjustView;)F
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/view/FontWeightAdjustView;->getPointX()F

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/miui/autotask/view/FontWeightAdjustView;)Lcom/miui/autotask/view/FontWeightAdjustView$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->f:Lcom/miui/autotask/view/FontWeightAdjustView$b;

    return-object p0
.end method

.method private e(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->j:Lcom/miui/powercenter/autotask/k;

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/k;->c()V

    :cond_1
    return-void
.end method

.method private f(Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0602dc

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->g:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0602e0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->i:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0602de

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->h:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071d5a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->d:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071dc7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->e:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->c:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->c:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->c:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/autotask/k;->a(Landroid/content/Context;)Lcom/miui/powercenter/autotask/k;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->j:Lcom/miui/powercenter/autotask/k;

    iget-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->m:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-boolean p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->k:Z

    if-nez p1, :cond_0

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private getPointX()F
    .locals 4

    iget v0, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->l:I

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->e:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->e:F

    sub-float/2addr v2, v3

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    cmpl-float v3, v0, v2

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    invoke-direct {p0}, Lcom/miui/autotask/view/FontWeightAdjustView;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v1, v0, v1

    :cond_4
    return v1
.end method

.method private h()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private i(F)I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->e:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    const/4 p1, 0x0

    iput v1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->a:F

    goto :goto_0

    :cond_0
    int-to-float v2, v0

    sub-float v3, v2, v1

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->a:F

    const/16 p1, 0x64

    goto :goto_0

    :cond_1
    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x41e80000    # 29.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    const/16 p1, 0x32

    iput v0, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->a:F

    goto :goto_0

    :cond_2
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p1

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->a:F

    move p1, v0

    :goto_0
    invoke-direct {p0}, Lcom/miui/autotask/view/FontWeightAdjustView;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    rsub-int/lit8 p1, p1, 0x64

    :cond_3
    return p1
.end method


# virtual methods
.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->l:I

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public getFontWeightChangeListener()Lcom/miui/autotask/view/FontWeightAdjustView$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->f:Lcom/miui/autotask/view/FontWeightAdjustView$b;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->l:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->b:F

    iget v2, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->d:F

    iget-object v3, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->a:F

    iget v1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->b:F

    iget v2, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->e:F

    iget-object v3, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->h:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->a:F

    iget v1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->b:F

    iget v2, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->d:F

    iget-object v3, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/SeekBar;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/miui/autotask/view/FontWeightAdjustView;->getPointX()F

    move-result p1

    iput p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->a:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->b:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->k:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120314

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/autotask/view/FontWeightAdjustView;->e(I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/autotask/view/FontWeightAdjustView;->i(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_4
    return v1
.end method

.method public setFontWeightChangeListener(Lcom/miui/autotask/view/FontWeightAdjustView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/view/FontWeightAdjustView;->f:Lcom/miui/autotask/view/FontWeightAdjustView$b;

    return-void
.end method
