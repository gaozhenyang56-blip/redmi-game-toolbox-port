.class public Le5/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Landroid/graphics/Rect;

.field static b:Landroid/graphics/Rect;

.field static c:Landroid/graphics/Rect;

.field static d:Landroid/graphics/Rect;

.field static e:Landroid/graphics/Rect;

.field static f:Landroid/graphics/Rect;

.field static g:Landroid/graphics/Rect;

.field static h:Landroid/graphics/Rect;


# direct methods
.method private static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-virtual {v3, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v3, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {v1, p0, p1}, Le5/j;->f(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected static b(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/lit16 v3, v1, 0xc8

    add-int/lit16 v4, v2, 0xc8

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v7, 0x5a

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    sub-int/2addr v4, v2

    int-to-float v2, v4

    div-float/2addr v2, v3

    invoke-virtual {v7, p1, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-static {p0, v5}, Le5/j;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz p0, :cond_1

    const/16 p1, 0x320

    invoke-static {p0, p1, p1}, Le5/j;->f(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method protected static c(IF)F
    .locals 1

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method protected static d(IF)F
    .locals 1

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method static e(Landroid/content/Context;Ljava/lang/String;Landroid/view/WindowManager;Lcom/miui/gamebooster/windowmanager/newbox/e;)V
    .locals 6

    invoke-static {p0, p1}, La8/a0;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    sput-object p1, Le5/j;->a:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const v1, 0x3ecccccc    # 0.39999998f

    mul-float/2addr p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr v0, p1

    float-to-int p1, v0

    sget-object v0, Le5/j;->a:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    add-float/2addr v3, v0

    float-to-int v0, v3

    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Le5/j;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, p1

    sget-object v4, Le5/j;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    add-int/2addr v3, v0

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v1, Le5/j;->b:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-static {p2}, La8/k2;->m(Landroid/view/WindowManager;)I

    move-result v0

    invoke-static {p2}, La8/k2;->k(Landroid/view/WindowManager;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object p1, Le5/j;->c:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p3, p1}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v0, Landroid/graphics/Rect;

    aget v1, p1, v2

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    aget p1, p1, v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p1, p3

    invoke-direct {v0, v1, v4, v5, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Le5/j;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p3, Landroid/graphics/Rect;

    invoke-static {}, La8/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, La8/z;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f07037a

    goto :goto_0

    :cond_0
    const v0, 0x7f070379

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {p2}, La8/k2;->k(Landroid/view/WindowManager;)I

    move-result v1

    invoke-direct {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object p3, Le5/j;->e:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-static {p0}, La8/k2;->s(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, La8/z;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, La8/z;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f07037c

    goto :goto_1

    :cond_1
    const v1, 0x7f07037b

    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p0}, La8/k2;->s(Landroid/content/Context;)I

    move-result v1

    invoke-static {p2}, La8/k2;->k(Landroid/view/WindowManager;)I

    move-result v3

    invoke-direct {p3, v0, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object p3, Le5/j;->g:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-static {p0}, La8/k2;->s(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7f07037d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {p3, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object p3, Le5/j;->f:Landroid/graphics/Rect;

    new-instance p3, Landroid/graphics/Rect;

    invoke-static {p2}, La8/k2;->k(Landroid/view/WindowManager;)I

    move-result v0

    const v1, 0x7f070378

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sub-int/2addr v0, p1

    invoke-static {p0}, La8/k2;->s(Landroid/content/Context;)I

    move-result p0

    invoke-static {p2}, La8/k2;->k(Landroid/view/WindowManager;)I

    move-result p1

    invoke-direct {p3, v2, v0, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object p3, Le5/j;->h:Landroid/graphics/Rect;

    return-void
.end method

.method private static f(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method protected static g(Le5/i;Le5/n;Landroid/graphics/Rect;)V
    .locals 6

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Le5/j;->i(Le5/i;Le5/n;Landroid/graphics/Rect;FFI)V

    return-void
.end method

.method protected static h(Le5/i;Le5/n;Landroid/graphics/Rect;FF)V
    .locals 6

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Le5/j;->i(Le5/i;Le5/n;Landroid/graphics/Rect;FFI)V

    return-void
.end method

.method protected static i(Le5/i;Le5/n;Landroid/graphics/Rect;FFI)V
    .locals 6

    invoke-virtual {p1}, Le5/n;->getCurrentRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    sget v1, Lmiuix/view/i;->w:I

    sget v2, Lmiuix/view/i;->D:I

    invoke-static {p1, v1, v2}, Lmiuix/view/HapticCompat;->f(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    iget v4, p2, Landroid/graphics/Rect;->left:I

    int-to-double v4, v4

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-double v4, p2

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    new-array v1, v0, [Lmiuix/animation/base/AnimConfig;

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v4, Le5/j$a;

    invoke-direct {v4, p5, p0, p3, p4}, Le5/j$a;-><init>(ILe5/i;FF)V

    aput-object v4, v0, v2

    invoke-virtual {v3, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-interface {p1, p2, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method protected static j(Le5/i;Le5/n;Landroid/graphics/Rect;I)V
    .locals 6

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Le5/j;->i(Le5/i;Le5/n;Landroid/graphics/Rect;FFI)V

    return-void
.end method

.method protected static k(Le5/n;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Le5/j;->g(Le5/i;Le5/n;Landroid/graphics/Rect;)V

    return-void
.end method
