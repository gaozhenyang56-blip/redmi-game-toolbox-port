.class public final synthetic Lcom/miui/blur/sdk/backdrop/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;Landroid/graphics/Outline;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewOutlineProvider;->getOutline(Landroid/view/View;Landroid/graphics/Outline;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getWidth()I

    move-result v0

    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->getHeight()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Outline;->setRect(IIII)V

    :goto_0
    return-void
.end method

.method public static b(Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;)Lcom/miui/blur/sdk/backdrop/r;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getBlurStyleNightMode()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getBlurStyleDayMode()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static c(Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;)Lcom/miui/blur/sdk/backdrop/r;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    sget-object p0, Lcom/miui/blur/sdk/backdrop/r;->f:Lcom/miui/blur/sdk/backdrop/r;

    return-object p0
.end method

.method public static d(Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;)Lcom/miui/blur/sdk/backdrop/r;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    sget-object p0, Lcom/miui/blur/sdk/backdrop/r;->i:Lcom/miui/blur/sdk/backdrop/r;

    return-object p0
.end method

.method public static e(Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;)Landroid/view/ViewRootImpl;
    .locals 0

    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;)Landroid/view/SurfaceControl;
    .locals 5

    invoke-interface {p0}, Lcom/miui/blur/sdk/backdrop/ViewBlurDrawInfo;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "getSurfaceControl"

    invoke-static {v1, v4, v3}, Lcom/miui/blur/sdk/backdrop/t;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/miui/blur/sdk/backdrop/t;->b(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Landroid/view/SurfaceControl;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/view/SurfaceControl;

    return-object p0

    :cond_0
    return-object v0
.end method
