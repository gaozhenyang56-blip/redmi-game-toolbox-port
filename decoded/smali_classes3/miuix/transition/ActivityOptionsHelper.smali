.class public Lmiuix/transition/ActivityOptionsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/transition/ActivityOptionsHelper$b;,
        Lmiuix/transition/ActivityOptionsHelper$a;,
        Lmiuix/transition/ActivityOptionsHelper$c;
    }
.end annotation


# static fields
.field public static final ANIM_LAUNCH_ACTIVITY_FROM_ROUNDED_VIEW:I = 0x66

.field public static final ANIM_LAUNCH_ACTIVITY_WITH_SCALED_THUMB:I = 0x67

.field private static final TAG:Ljava/lang/String; = "ActivityOptionsHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    mul-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumDrawingCacheSize()I

    move-result v4

    int-to-long v4, v4

    const-string v6, "too large to create a bitmap!"

    const-string v7, "ActivityOptionsHelper"

    const/4 v8, 0x0

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/view/View;->computeScroll()V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object v8, v0

    :catch_1
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v8
.end method

.method public static isSupportMiuiClipAnimation()Z
    .locals 1

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper$a;->a()Z

    move-result v0

    return v0
.end method

.method public static isSupportMiuiRoundAnimation()Z
    .locals 1

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper$b;->a()Z

    move-result v0

    return v0
.end method

.method public static isSupportScaleUpDown()Z
    .locals 1

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper$c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper$c;->b()Z

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

.method public static isSupportScaleUpDown(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x66

    if-ne p0, v1, :cond_0

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper$c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x67

    if-ne p0, v1, :cond_1

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper$c;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static makeMiuiClipAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;FFIFZ)Landroid/app/ActivityOptions;
    .locals 1

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper;->isSupportMiuiClipAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static/range {p0 .. p6}, Lmiuix/transition/a;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;FFIFZ)Landroid/app/ActivityOptions;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static makeMiuiRoundAnimation(FFIF)Landroid/app/ActivityOptions;
    .locals 1

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper;->isSupportMiuiRoundAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lmiuix/transition/a;->b(FFIF)Landroid/app/ActivityOptions;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static makeScaleUpAnim(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/app/ActivityOptions;
    .locals 1

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper;->isSupportScaleUpDown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper$c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static/range {p0 .. p12}, Lmiuix/transition/a;->d(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static/range {p0 .. p11}, Lmiuix/transition/a;->c(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public static makeScaleUpAnim(Landroid/view/View;Landroid/graphics/Rect;III)Landroid/app/ActivityOptions;
    .locals 11

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper;->isSupportScaleUpDown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x66

    if-eq p4, v0, :cond_1

    const/16 v1, 0x67

    if-eq p4, v1, :cond_1

    move v10, v0

    goto :goto_0

    :cond_1
    move v10, p4

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v2 .. v10}, Lmiuix/transition/ActivityOptionsHelper;->makeScaleUpAnim(Landroid/view/View;Landroid/graphics/Rect;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method private static makeScaleUpAnim(Landroid/view/View;Landroid/graphics/Rect;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/app/ActivityOptions;
    .locals 19

    move-object/from16 v0, p1

    invoke-static/range {p0 .. p0}, Lmiuix/transition/ActivityOptionsHelper;->captureSnapshot(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v1, 0x2

    new-array v1, v1, [I

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v3, v1, v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int v8, v3, v4

    const/4 v3, 0x1

    aget v1, v1, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int v9, v1, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScaleX()F

    move-result v12

    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    move-object/from16 v6, p0

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move/from16 v18, p8

    invoke-static/range {v6 .. v18}, Lmiuix/transition/ActivityOptionsHelper;->makeScaleUpAnim(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeScaleUpAnimationFromRoundedView(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/ActivityOptions;
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v12, 0x66

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-static/range {v0 .. v12}, Lmiuix/transition/ActivityOptionsHelper;->makeScaleUpAnim(Landroid/view/View;Landroid/graphics/Bitmap;IIIIFLandroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public static makeScaleUpAnimationFromRoundedView(Landroid/view/View;Landroid/graphics/Rect;II)Landroid/app/ActivityOptions;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lmiuix/transition/ActivityOptionsHelper;->isSupportScaleUpDown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x66

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v8}, Lmiuix/transition/ActivityOptionsHelper;->makeScaleUpAnim(Landroid/view/View;Landroid/graphics/Rect;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;I)Landroid/app/ActivityOptions;

    move-result-object p0

    :goto_0
    return-object p0
.end method
