.class public Lcom/miui/gamebooster/widget/LightningTextView;
.super Lcom/miui/gamebooster/videobox/view/MarqueeTextView;
.source "SourceFile"


# static fields
.field private static final h:[I

.field private static final i:[I

.field private static final j:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private a:Landroid/graphics/LinearGradient;

.field private b:Landroid/animation/ValueAnimator;

.field private c:Landroid/graphics/Matrix;

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:F

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [I

    const-string v2, "#FF4646"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    const-string v3, "#FFB79A"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aput v5, v1, v6

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x2

    aput v3, v1, v5

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    sput-object v1, Lcom/miui/gamebooster/widget/LightningTextView;->h:[I

    new-array v0, v0, [I

    const-string v1, "#47C0FF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v4

    const-string v2, "#9AFEFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v6

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v5

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/miui/gamebooster/widget/LightningTextView;->i:[I

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/miui/gamebooster/widget/LightningTextView;->j:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/widget/LightningTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/videobox/view/MarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/gamebooster/widget/LightningTextView;->e:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/miui/gamebooster/widget/LightningTextView;->f:F

    iput-boolean p1, p0, Lcom/miui/gamebooster/widget/LightningTextView;->g:Z

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/LightningTextView;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/widget/LightningTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/widget/LightningTextView;->d(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private b()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/widget/LightningTextView;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/widget/LightningTextView;->c:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/miui/gamebooster/widget/LightningTextView;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/widget/LightningTextView;->b:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/miui/gamebooster/widget/LightningTextView;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/gamebooster/widget/b;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/widget/b;-><init>(Lcom/miui/gamebooster/widget/LightningTextView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic d(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/LightningTextView;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/widget/LightningTextView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/widget/LightningTextView;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/LightningTextView;->c:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/miui/gamebooster/widget/LightningTextView;->f:F

    const/high16 v1, 0x40a00000    # 5.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/gamebooster/widget/LightningTextView;->f:F

    iget-object v1, p0, Lcom/miui/gamebooster/widget/LightningTextView;->c:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v0, p0, Lcom/miui/gamebooster/widget/LightningTextView;->a:Landroid/graphics/LinearGradient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/widget/LightningTextView;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/widget/LightningTextView;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/gamebooster/widget/LightningTextView;->a:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/gamebooster/widget/LightningTextView;->d:Landroid/graphics/Paint;

    sget-object v1, Lcom/miui/gamebooster/widget/LightningTextView;->j:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/LightningTextView;->d:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/LightningTextView;->e:I

    return-void
.end method
