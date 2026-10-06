.class public Lcom/miui/blur/sdk/backdrop/a;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;


# instance fields
.field private final a:Lcom/miui/blur/sdk/backdrop/b;

.field private b:Ljava/lang/Object;

.field private final c:Landroid/graphics/Paint;

.field private final d:Lcom/miui/blur/sdk/backdrop/q;

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Ljava/lang/reflect/Method;

.field private k:Ljava/lang/reflect/Method;

.field private l:Ljava/lang/reflect/Method;

.field private m:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/blur/sdk/backdrop/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/a;->c:Landroid/graphics/Paint;

    new-instance p2, Lcom/miui/blur/sdk/backdrop/b;

    invoke-direct {p2, p0, p0}, Lcom/miui/blur/sdk/backdrop/b;-><init>(Landroid/view/View;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)V

    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/a;->a:Lcom/miui/blur/sdk/backdrop/b;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Lcom/miui/blur/sdk/backdrop/q;

    invoke-direct {p1}, Lcom/miui/blur/sdk/backdrop/q;-><init>()V

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/a;->d:Lcom/miui/blur/sdk/backdrop/q;

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    new-array p3, p2, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v2, "setBlurRadius"

    invoke-static {p1, v2, p3}, Lcom/miui/blur/sdk/backdrop/t;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/a;->j:Ljava/lang/reflect/Method;

    const-class p1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, p3, v1

    aput-object v2, p3, p2

    const/4 v3, 0x2

    aput-object v2, p3, v3

    const/4 v3, 0x3

    aput-object v2, p3, v3

    const-string v2, "setCornerRadius"

    invoke-static {p1, v2, p3}, Lcom/miui/blur/sdk/backdrop/t;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/a;->k:Ljava/lang/reflect/Method;

    const-class p1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    new-array p2, p2, [Ljava/lang/Class;

    aput-object v0, p2, v1

    const-string p3, "setAlpha"

    invoke-static {p1, p3, p2}, Lcom/miui/blur/sdk/backdrop/t;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/a;->l:Ljava/lang/reflect/Method;

    const-class p1, Landroid/view/ViewRootImpl;

    new-array p2, v1, [Ljava/lang/Class;

    const-string p3, "createBackgroundBlurDrawable"

    invoke-static {p1, p3, p2}, Lcom/miui/blur/sdk/backdrop/t;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/a;->m:Ljava/lang/reflect/Method;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/BlurManager;->b:Z

    return v0
.end method

.method public b(FFFF)V
    .locals 4

    iget v0, p0, Lcom/miui/blur/sdk/backdrop/a;->f:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/blur/sdk/backdrop/a;->g:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/blur/sdk/backdrop/a;->h:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/blur/sdk/backdrop/a;->i:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/miui/blur/sdk/backdrop/a;->f:F

    iput p2, p0, Lcom/miui/blur/sdk/backdrop/a;->g:F

    iput p3, p0, Lcom/miui/blur/sdk/backdrop/a;->h:F

    iput p4, p0, Lcom/miui/blur/sdk/backdrop/a;->i:F

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/a;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/a;->k:Ljava/lang/reflect/Method;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {v0, v1, v2}, Lcom/miui/blur/sdk/backdrop/t;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/a;->a:Lcom/miui/blur/sdk/backdrop/b;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/b;->h(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/a;->d:Lcom/miui/blur/sdk/backdrop/q;

    iget v1, p0, Lcom/miui/blur/sdk/backdrop/a;->f:F

    invoke-virtual {v0, p1, p0, v1}, Lcom/miui/blur/sdk/backdrop/q;->a(Landroid/graphics/Canvas;Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;F)V

    :cond_2
    return-void
.end method

.method public synthetic getBlurOutline(Landroid/graphics/Outline;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/blur/sdk/backdrop/u;->a(Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;Landroid/graphics/Outline;)V

    return-void
.end method

.method public synthetic getBlurStyle()Lcom/miui/blur/sdk/backdrop/r;
    .locals 1

    invoke-static {p0}, Lcom/miui/blur/sdk/backdrop/u;->b(Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;)Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getBlurStyleDayMode()Lcom/miui/blur/sdk/backdrop/r;
    .locals 1

    invoke-static {p0}, Lcom/miui/blur/sdk/backdrop/u;->c(Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;)Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getBlurStyleNightMode()Lcom/miui/blur/sdk/backdrop/r;
    .locals 1

    invoke-static {p0}, Lcom/miui/blur/sdk/backdrop/u;->d(Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;)Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getBlurViewRootImpl()Landroid/view/ViewRootImpl;
    .locals 1

    invoke-static {p0}, Lcom/miui/blur/sdk/backdrop/u;->e(Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;)Landroid/view/ViewRootImpl;

    move-result-object v0

    return-object v0
.end method

.method public getParentAlpha()F
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    :goto_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public synthetic getRequestedSamplingPeriodNs()I
    .locals 1

    invoke-static {p0}, Lcom/miui/blur/sdk/backdrop/c;->b(Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;)I

    move-result v0

    return v0
.end method

.method public synthetic getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    invoke-static {p0}, Lcom/miui/blur/sdk/backdrop/u;->f(Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/a;->a:Lcom/miui/blur/sdk/backdrop/b;

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/b;->f()V

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/a;->getBlurViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/a;->m:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/miui/blur/sdk/backdrop/t;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/a;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/a;->j:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/blur/sdk/backdrop/a;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v1, v4}, Lcom/miui/blur/sdk/backdrop/t;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/a;->k:Ljava/lang/reflect/Method;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/blur/sdk/backdrop/a;->f:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p0, Lcom/miui/blur/sdk/backdrop/a;->g:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    iget v6, p0, Lcom/miui/blur/sdk/backdrop/a;->h:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/miui/blur/sdk/backdrop/a;->i:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Lcom/miui/blur/sdk/backdrop/t;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/a;->getParentAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/a;->l:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/miui/blur/sdk/backdrop/t;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/a;->a:Lcom/miui/blur/sdk/backdrop/b;

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/b;->g()V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/a;->a:Lcom/miui/blur/sdk/backdrop/b;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/b;->i(Z)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/a;->a:Lcom/miui/blur/sdk/backdrop/b;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/b;->j(Z)V

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/a;->d:Lcom/miui/blur/sdk/backdrop/q;

    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/q;->e(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/a;->b:Ljava/lang/Object;

    instance-of p1, p1, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/blur/sdk/backdrop/a;->e:I

    invoke-virtual {p0, p1}, Lcom/miui/blur/sdk/backdrop/a;->setBlurRadius(I)V

    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/a;->b:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/blur/sdk/backdrop/a;->setBlurRadius(I)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    return-void
.end method

.method public setBlurRadius(I)V
    .locals 4

    iget v0, p0, Lcom/miui/blur/sdk/backdrop/a;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/blur/sdk/backdrop/a;->e:I

    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/a;->b:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/a;->j:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/blur/sdk/backdrop/t;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/miui/blur/sdk/backdrop/a;->b(FFFF)V

    return-void
.end method
