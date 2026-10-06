.class public Lcom/miui/securityscan/shortcut/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(J)Landroid/os/Bundle;
    .locals 2

    const-wide/32 v0, 0x5f5e100

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "shortcut_status"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method private static b(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0702de

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object p0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float p0, v1, p0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p0, v2

    sub-float/2addr p0, v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p3, p0, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public static c(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/miui/securityscan/shortcut/a;->d(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, v1, p1, p2}, Lcom/miui/securityscan/shortcut/a;->b(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static e(J)I
    .locals 2
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/x;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lc4/j;->b()I

    move-result p0

    return p0

    :cond_0
    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const p0, 0x7f080960

    return p0

    :cond_1
    const-wide/32 v0, 0x1dcd6500

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    const p0, 0x7f080962

    return p0

    :cond_2
    const-wide/32 v0, 0x5f5e100

    cmp-long p0, p0, v0

    if-ltz p0, :cond_3

    const p0, 0x7f080961

    return p0

    :cond_3
    const p0, 0x7f080876

    return p0
.end method

.method public static f(Landroid/content/Context;J)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/x;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-wide v2, 0x24e160300L

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    const p1, 0x7f120c3b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, p1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v0, :cond_2

    long-to-float p1, p1

    const p2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr p1, p2

    const p2, 0x7f120c3a

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/32 v4, 0x5f5e100

    cmp-long v0, p1, v4

    if-ltz v0, :cond_3

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const p2, 0x7f120c3c

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static g(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.cleaner.INIT_CLEANER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.miui.cleaner"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-static {p0, v0}, Landroidx/core/content/g;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "CleanerShortcutHelper"

    const-string v1, "notifyInitCleaner: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static h(Landroid/content/Context;J)V
    .locals 3

    sget-object v0, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1, p2}, Lcom/miui/securityscan/shortcut/a;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/miui/securityscan/shortcut/a;->e(J)I

    move-result v2

    invoke-static {p0, v2, v1}, Lcom/miui/securityscan/shortcut/a;->c(Landroid/content/Context;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p0, v0}, Lcom/miui/securityscan/shortcut/b;->c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, p2}, Lcom/miui/securityscan/shortcut/a;->a(J)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/miui/securityscan/shortcut/b;->f(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Landroid/graphics/Bitmap;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v0, v1}, Lcom/miui/securityscan/shortcut/d;->x(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method
