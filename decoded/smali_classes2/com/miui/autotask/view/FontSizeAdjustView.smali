.class public Lcom/miui/autotask/view/FontSizeAdjustView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/autotask/view/FontSizeAdjustView$b;,
        Lcom/miui/autotask/view/FontSizeAdjustView$a;,
        Lcom/miui/autotask/view/FontSizeAdjustView$c;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private e:F

.field private f:Landroid/graphics/Paint;

.field private g:F

.field private h:F

.field private i:Lcom/miui/autotask/view/FontSizeAdjustView$a;

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/miui/powercenter/autotask/k;

.field private n:Landroidx/customview/widget/a;

.field private o:[Ljava/lang/String;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final q:Z

.field private r:Lcom/miui/autotask/view/FontSizeAdjustView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x6

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->a:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->c:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->d:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->p:Ljava/util/List;

    invoke-static {}, Lx4/z1;->r()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->q:Z

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/miui/autotask/view/FontSizeAdjustView;->j(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/miui/autotask/view/FontSizeAdjustView;)I
    .locals 0

    iget p0, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->a:I

    return p0
.end method

.method static synthetic b(Lcom/miui/autotask/view/FontSizeAdjustView;)I
    .locals 0

    iget p0, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    return p0
.end method

.method static synthetic c(Lcom/miui/autotask/view/FontSizeAdjustView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    return p1
.end method

.method static synthetic d(Lcom/miui/autotask/view/FontSizeAdjustView;)Lcom/miui/autotask/view/FontSizeAdjustView$a;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->i:Lcom/miui/autotask/view/FontSizeAdjustView$a;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/autotask/view/FontSizeAdjustView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/view/FontSizeAdjustView;->k()Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/miui/autotask/view/FontSizeAdjustView;)Lcom/miui/powercenter/autotask/k;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->m:Lcom/miui/powercenter/autotask/k;

    return-object p0
.end method

.method static synthetic g(Lcom/miui/autotask/view/FontSizeAdjustView;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->o:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/autotask/view/FontSizeAdjustView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->p:Ljava/util/List;

    return-object p0
.end method

.method private i(I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->m:Lcom/miui/powercenter/autotask/k;

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/k;->c()V

    return-void
.end method

.method private j(Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0602dc

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->j:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0602df

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->l:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0602de

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->k:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071d5a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->g:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f071dc7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->h:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->f:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->f:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->f:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/powercenter/autotask/k;->a(Landroid/content/Context;)Lcom/miui/powercenter/autotask/k;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->m:Lcom/miui/powercenter/autotask/k;

    new-instance p1, Lcom/miui/autotask/view/FontSizeAdjustView$b;

    invoke-direct {p1, p0, p0}, Lcom/miui/autotask/view/FontSizeAdjustView$b;-><init>(Lcom/miui/autotask/view/FontSizeAdjustView;Landroid/view/View;)V

    iput-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->n:Landroidx/customview/widget/a;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->p0(Landroid/view/View;Landroidx/core/view/a;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03000c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->o:[Ljava/lang/String;

    iget-boolean p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->q:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private k()Z
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


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->n:Landroidx/customview/widget/a;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    return v0
.end method

.method public getCurrentText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->o:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->a:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->j:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->e:F

    iget v3, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->h:F

    iget-object v4, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->k:I

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->f:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->l:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget v2, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->e:F

    iget v3, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->g:F

    iget-object v4, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->e:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->a:I

    add-int/lit8 p2, p2, -0x1

    div-int/2addr p1, p2

    int-to-float p1, p1

    iget-object p2, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p2, 0x0

    :goto_0
    iget p3, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->a:I

    if-ge p2, p3, :cond_0

    iget-object p3, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->d:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    int-to-float p5, p2

    mul-float/2addr p5, p1

    add-float/2addr p4, p5

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->p:Ljava/util/List;

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/high16 v2, 0x4f000000

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->a:I

    if-ge v3, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v6, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->d:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v6, v5, v2

    if-gez v6, :cond_2

    move v4, v3

    move v2, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    if-eq v4, v2, :cond_6

    iput v4, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    iget-object v2, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->i:Lcom/miui/autotask/view/FontSizeAdjustView$a;

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/miui/autotask/view/FontSizeAdjustView;->k()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->a:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    :goto_1
    invoke-interface {v2, v3}, Lcom/miui/autotask/view/FontSizeAdjustView$a;->a(I)V

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/autotask/view/FontSizeAdjustView;->i(I)V

    :cond_6
    if-ne v1, v0, :cond_9

    iget-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->r:Lcom/miui/autotask/view/FontSizeAdjustView$c;

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/miui/autotask/view/FontSizeAdjustView;->k()Z

    move-result p1

    const/4 v0, 0x5

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->a:I

    sub-int/2addr p1, v1

    add-int/lit8 v0, p1, -0x5

    :cond_7
    iget p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    if-ne p1, v0, :cond_8

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->c:I

    iget-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->r:Lcom/miui/autotask/view/FontSizeAdjustView$c;

    invoke-interface {p1}, Lcom/miui/autotask/view/FontSizeAdjustView$c;->b()V

    :cond_8
    iget p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->c:I

    if-ne p1, v0, :cond_9

    iget p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->c:I

    iget-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->r:Lcom/miui/autotask/view/FontSizeAdjustView$c;

    invoke-interface {p1}, Lcom/miui/autotask/view/FontSizeAdjustView$c;->a()V

    :cond_9
    :goto_2
    return v1
.end method

.method public setCurrentPointIndex(I)V
    .locals 1

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    invoke-direct {p0}, Lcom/miui/autotask/view/FontSizeAdjustView;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->a:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->b:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFontSizeChangeListener(Lcom/miui/autotask/view/FontSizeAdjustView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->i:Lcom/miui/autotask/view/FontSizeAdjustView$a;

    return-void
.end method

.method public setLastCurrentPointIndex(I)V
    .locals 1

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->c:I

    invoke-direct {p0}, Lcom/miui/autotask/view/FontSizeAdjustView;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->a:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->c:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPointCount(I)V
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->a:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f03000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->o:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRecommendListener(Lcom/miui/autotask/view/FontSizeAdjustView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/view/FontSizeAdjustView;->r:Lcom/miui/autotask/view/FontSizeAdjustView$c;

    return-void
.end method
