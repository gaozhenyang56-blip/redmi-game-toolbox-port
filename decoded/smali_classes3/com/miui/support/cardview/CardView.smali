.class public Lcom/miui/support/cardview/CardView;
.super Landroidx/cardview/widget/CardView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lsg/a;->a:I

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/support/cardview/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CustomViewStyleable"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/support/cardview/CardView;->d:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/support/cardview/CardView;->e:Landroid/graphics/Path;

    sget-object v0, Lsg/b;->z:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lsg/b;->D:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eq p3, v0, :cond_1

    sget-object v0, Lsg/b;->T:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lsg/b;->U:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1, v2, p3}, Lcom/miui/support/cardview/CardView;->c(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    sget p1, Lsg/b;->C:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/support/cardview/CardView;->c:Z

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p3}, Lcom/miui/support/cardview/CardView;->setSmoothCornerEnable(Z)V

    :cond_2
    sget p1, Lsg/b;->B:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/support/cardview/CardView;->setStrokeWidth(I)V

    sget p1, Lsg/b;->A:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/support/cardview/CardView;->setStrokeColor(I)V

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->d()V

    return-void
.end method

.method private a()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/support/cardview/CardView;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b()Z
    .locals 1

    invoke-static {}, Lgl/a;->G()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lgl/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_1
    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    :try_start_2
    new-array p1, v1, [Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    return-void

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    goto :goto_1

    :catch_5
    move-exception p1

    goto :goto_1

    :catch_6
    move-exception p1

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_7
    new-instance p1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {p1, p2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->getOriginalBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lmiuix/smooth/b;

    invoke-direct {v1}, Lmiuix/smooth/b;-><init>()V

    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->setChildDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result v0

    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    invoke-virtual {p0}, Lcom/miui/support/cardview/CardView;->getStrokeWidth()I

    move-result v0

    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->setStrokeWidth(I)V

    invoke-virtual {p0}, Lcom/miui/support/cardview/CardView;->getStrokeColor()I

    move-result v0

    invoke-virtual {v1, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->setStrokeColor(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getOriginalBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lmiuix/smooth/b;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/smooth/b;

    invoke-virtual {v0}, Lmiuix/smooth/SmoothContainerDrawable2;->getChildDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private setSmoothCornerEnable(Z)V
    .locals 6

    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setSmoothCornerEnabled"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {v0, p0, v1, v3, v2}, Lgm/a;->m(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmoothCornerEnabled failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiX.CardView"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/miui/support/cardview/CardView;->b:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/support/cardview/CardView;->a:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/miui/support/cardview/CardView;->d:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result v2

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->getRadius()F

    move-result v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/miui/support/cardview/CardView;->e:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->d()V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget v0, p0, Lcom/miui/support/cardview/CardView;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/support/cardview/CardView;->b:I

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->d()V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    iget v0, p0, Lcom/miui/support/cardview/CardView;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/support/cardview/CardView;->a:I

    invoke-direct {p0}, Lcom/miui/support/cardview/CardView;->d()V

    :cond_0
    return-void
.end method
