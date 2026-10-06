.class public Lr7/d;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr7/d$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Landroid/graphics/Bitmap;

.field private i:F

.field private j:F

.field private k:F

.field private l:Lr7/d$a;

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lr7/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lr7/d;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    iput p2, p0, Lr7/d;->d:I

    invoke-direct {p0, p1}, Lr7/d;->f(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lr7/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean p2, p0, Lr7/d;->f:Z

    invoke-direct {p0, p1}, Lr7/d;->f(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/graphics/Paint;)F
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p1

    return v0
.end method

.method private b(Ljava/lang/String;Landroid/graphics/Paint;)F
    .locals 0

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lr7/d;->l:Lr7/d$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lr7/d$a;->d(Lr7/d;)V

    :cond_0
    return-void
.end method

.method private d(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    int-to-double v2, v0

    iget v0, p0, Lr7/d;->b:I

    int-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-double v2, p1

    iget p1, p0, Lr7/d;->c:I

    int-to-double v4, p1

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int p1, v2

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lr7/d;->l:Lr7/d$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lr7/d$a;->i(Lr7/d;)V

    :cond_0
    return-void
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lr7/d;->l:Lr7/d$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lr7/d$a;->g(Lr7/d;)V

    :cond_0
    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lp7/c;->a()Lp7/c;

    move-result-object v0

    invoke-virtual {v0}, Lp7/c;->d()Z

    move-result v0

    iput-boolean v0, p0, Lr7/d;->m:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lr7/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071de4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lr7/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060e69

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lr7/d;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071da6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lr7/d;->k:F

    invoke-static {}, Lr7/d;->g()Z

    move-result v0

    iput-boolean v0, p0, Lr7/d;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-boolean v0, p0, Lr7/d;->f:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120ac3

    goto :goto_0

    :cond_0
    const v0, 0x7f120ac5

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lr7/d;->g:Ljava/lang/String;

    iget-object v0, p0, Lr7/d;->a:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lr7/d;->b(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result p1

    iput p1, p0, Lr7/d;->i:F

    iget-object p1, p0, Lr7/d;->a:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lr7/d;->a(Landroid/graphics/Paint;)F

    move-result p1

    goto :goto_2

    :cond_1
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lr7/d;->f:Z

    if-eqz v1, :cond_2

    const v1, 0x7f080719

    goto :goto_1

    :cond_2
    const v1, 0x7f08071a

    :goto_1
    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lr7/d;->h:Landroid/graphics/Bitmap;

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    iput v0, p0, Lr7/d;->i:F

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p1, p1

    :goto_2
    iput p1, p0, Lr7/d;->j:F

    :cond_3
    return-void
.end method

.method public static g()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "zh"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CN"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public getCenterPoint()Landroid/graphics/Point;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v1, v4

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public h(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lr7/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060e69

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lr7/d;->a:Landroid/graphics/Paint;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lr7/d;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lr7/d;->e:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr7/d;->g:Ljava/lang/String;

    iget v2, p0, Lr7/d;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lr7/d;->i:F

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v1, p0, Lr7/d;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lr7/d;->j:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lr7/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr7/d;->h:Landroid/graphics/Bitmap;

    iget v2, p0, Lr7/d;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lr7/d;->i:F

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    iget v1, p0, Lr7/d;->c:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lr7/d;->k:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lr7/d;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    iput p1, p0, Lr7/d;->b:I

    iput p2, p0, Lr7/d;->c:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lr7/d;->d:I

    if-eq v0, v2, :cond_3

    invoke-direct {p0, p1}, Lr7/d;->d(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lr7/d;->d:I

    if-eq v0, v2, :cond_3

    invoke-direct {p0, p1}, Lr7/d;->e(Landroid/view/MotionEvent;)V

    iput v2, p0, Lr7/d;->d:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lr7/d;->d:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lr7/d;->d:I

    invoke-direct {p0, p1}, Lr7/d;->c(Landroid/view/MotionEvent;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setActionEventListener(Lr7/d$a;)V
    .locals 0

    iput-object p1, p0, Lr7/d;->l:Lr7/d$a;

    return-void
.end method

.method public setTouchable(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x19

    goto :goto_0

    :cond_2
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x18

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method
