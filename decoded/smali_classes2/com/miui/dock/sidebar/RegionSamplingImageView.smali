.class public Lcom/miui/dock/sidebar/RegionSamplingImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private final a:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

.field private final b:Landroid/graphics/Rect;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->b:Landroid/graphics/Rect;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_0

    new-instance p1, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    new-instance p2, Lcom/miui/dock/sidebar/RegionSamplingImageView$a;

    invoke-direct {p2, p0}, Lcom/miui/dock/sidebar/RegionSamplingImageView$a;-><init>(Lcom/miui/dock/sidebar/RegionSamplingImageView;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$c;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->a:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    return-void
.end method

.method static synthetic a(Lcom/miui/dock/sidebar/RegionSamplingImageView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/miui/dock/sidebar/RegionSamplingImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/miui/dock/sidebar/RegionSamplingImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->i()V

    return-void
.end method

.method static synthetic d(Lcom/miui/dock/sidebar/RegionSamplingImageView;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->b:Landroid/graphics/Rect;

    return-object p0
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lx4/p0;->d()Lx4/p0;

    move-result-object p1

    invoke-virtual {p1}, Lx4/p0;->g()Z

    move-result p1

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->c:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sidebar touch action down, isHandleTouch = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->c:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegionSamplingImageView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->c:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, La8/k2;->y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1211e5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1211e6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-boolean p1, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->c:Z

    return p1
.end method

.method private i()V
    .locals 12

    iget-object v0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    aget v7, v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v1, v3, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSamplingRect view samplingBounds: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "RegionSamplingImageView"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v6, v3, Lcom/miui/dock/sidebar/c;

    if-eqz v6, :cond_0

    check-cast v3, Lcom/miui/dock/sidebar/c;

    invoke-virtual {v3}, Lcom/miui/dock/sidebar/c;->i()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v3}, Lcom/miui/dock/sidebar/c;->i()Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->top:F

    div-float/2addr v8, v7

    float-to-int v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3}, Lcom/miui/dock/sidebar/c;->i()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v9, v10

    div-float/2addr v9, v7

    float-to-int v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v3}, Lcom/miui/dock/sidebar/c;->i()Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v11

    div-float/2addr v10, v7

    float-to-int v7, v10

    aget v10, v0, v2

    int-to-float v10, v10

    invoke-virtual {v3}, Lcom/miui/dock/sidebar/c;->i()Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v11

    int-to-float v6, v6

    sub-float/2addr v10, v6

    float-to-int v6, v10

    aget v10, v0, v4

    int-to-float v10, v10

    invoke-virtual {v3}, Lcom/miui/dock/sidebar/c;->i()Landroid/graphics/RectF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v11

    int-to-float v8, v8

    sub-float/2addr v10, v8

    float-to-int v8, v10

    aget v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v3}, Lcom/miui/dock/sidebar/c;->i()Landroid/graphics/RectF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v10

    int-to-float v9, v9

    add-float/2addr v2, v9

    float-to-int v2, v2

    aget v0, v0, v4

    int-to-float v0, v0

    invoke-virtual {v3}, Lcom/miui/dock/sidebar/c;->i()Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v3

    int-to-float v3, v7

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v6, v8, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSamplingRect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/dock/sidebar/RegionSamplingImageView;->e(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public f()V
    .locals 2

    const-string v0, "RegionSamplingImageView"

    const-string v1, "startRegionSampling"

    invoke-static {v0, v1}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->a:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/k2;->B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->a:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->i(Z)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->a:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    iget-object v1, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->j(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    const-string v0, "RegionSamplingImageView"

    const-string v1, "stopRegionSampling"

    invoke-static {v0, v1}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->a:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->k()V

    iget-object v0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->a:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->i(Z)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "RegionSamplingImageView"

    const-string v1, "updateRegionSampling"

    invoke-static {v0, v1}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/dock/sidebar/RegionSamplingImageView;->a:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->p()V

    :cond_0
    return-void
.end method
