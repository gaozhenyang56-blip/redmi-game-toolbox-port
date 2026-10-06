.class public Le5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le5/i$c;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/WindowManager;

.field private final d:Lcom/miui/dock/sidebar/j;

.field private final e:Ls8/h;

.field private final f:Z

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/widget/FrameLayout;

.field private final i:Lg5/j;

.field private j:Le5/n;

.field private k:Le5/n;

.field private l:Z

.field private m:I

.field private final n:Landroid/os/Handler;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/miui/dock/sidebar/j;Landroid/view/View;Lg5/j;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Le5/i;->n:Landroid/os/Handler;

    new-instance v0, Le5/a;

    invoke-direct {v0, p0}, Le5/a;-><init>(Le5/i;)V

    iput-object v0, p0, Le5/i;->o:Ljava/lang/Runnable;

    iput-object p1, p0, Le5/i;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->o()Ls8/h;

    move-result-object v0

    iput-object v0, p0, Le5/i;->e:Ls8/h;

    iput-object p2, p0, Le5/i;->a:Landroid/view/View;

    iput-object p3, p0, Le5/i;->i:Lg5/j;

    iput-boolean p4, p0, Le5/i;->f:Z

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Le5/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ls8/h;->Z()Landroid/view/WindowManager;

    move-result-object p3

    iput-object p3, p0, Le5/i;->c:Landroid/view/WindowManager;

    invoke-direct {p0}, Le5/i;->J()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getDockLayout()Lcom/miui/gamebooster/windowmanager/newbox/e;

    move-result-object p1

    invoke-static {p2, p4, p3, p1}, Le5/j;->e(Landroid/content/Context;Ljava/lang/String;Landroid/view/WindowManager;Lcom/miui/gamebooster/windowmanager/newbox/e;)V

    invoke-direct {p0}, Le5/i;->X()V

    new-instance p1, Le5/b;

    invoke-direct {p1, p0}, Le5/b;-><init>(Le5/i;)V

    invoke-virtual {v0, p1}, Ls8/h;->S0(Ls8/h$j;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-le p1, p2, :cond_0

    invoke-static {}, Lcom/miui/common/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Le5/i;->p()V

    :cond_0
    return-void
.end method

.method private A()V
    .locals 6

    const-string v0, "DockItemDragController"

    const-string v1, "flyBack"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {p0}, Le5/i;->K()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Le5/i;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    int-to-float v3, v3

    iget-object v4, p0, Le5/i;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aget v1, v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Le5/i;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v1, v4

    invoke-direct {p0, v0, v3, v1}, Le5/i;->n0(Landroid/graphics/Rect;FF)V

    iget-object v1, p0, Le5/i;->j:Le5/n;

    invoke-direct {p0, v2}, Le5/i;->F(I)I

    move-result v3

    invoke-virtual {v1, v3}, Le5/n;->setIconLength(I)V

    iget-object v1, p0, Le5/i;->j:Le5/n;

    invoke-virtual {v1, v2}, Le5/n;->setShowShadowIcon(Z)V

    iget-object v1, p0, Le5/i;->j:Le5/n;

    invoke-static {p0, v1, v0}, Le5/j;->g(Le5/i;Le5/n;Landroid/graphics/Rect;)V

    return-void
.end method

.method private B(I)Landroid/graphics/Rect;
    .locals 3

    invoke-static {}, La8/a0;->M()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La8/a0;->f(Ljava/lang/Object;)[Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1}, Le5/i;->Z(I)Z

    move-result p1

    invoke-direct {p0, v0, p1}, Le5/i;->M([Landroid/graphics/Rect;Z)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentSplitWindowRect: childRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " targetIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DockItemDragController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    return-object p1

    :cond_0
    aget-object p1, v0, p1

    return-object p1
.end method

.method private C()I
    .locals 3

    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "DRAG_FLAG_REQUEST_FOR_MULTIWIN_SWITCH2"

    invoke-static {v0, v1}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "DockItemDragController"

    const-string v2, "getDragFlag: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x3300

    return v0
.end method

.method private D([IFF)V
    .locals 1

    sget-object v0, Le5/j;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr p2, v0

    float-to-int p2, p2

    const/4 v0, 0x0

    aput p2, p1, v0

    sget-object p2, Le5/j;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    sub-float/2addr p3, p2

    float-to-int p2, p3

    const/4 p3, 0x1

    aput p2, p1, p3

    return-void
.end method

.method private E()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Le5/i;->i:Lg5/j;

    instance-of v1, v0, Lg5/f;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Le5/i;->O()I

    move-result v0

    iget-object v1, p0, Le5/i;->i:Lg5/j;

    check-cast v1, Lg5/f;

    invoke-virtual {v1}, Lg5/f;->d()Lf5/d;

    move-result-object v1

    iget-object v1, v1, Lf5/d;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Le5/i;->G(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lx4/o0;->p(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Li5/c;

    if-eqz v1, :cond_1

    check-cast v0, Li5/c;

    invoke-virtual {v0}, Li5/c;->h()Li5/a;

    move-result-object v0

    iget-object v0, v0, Li5/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private F(I)I
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Le5/i;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071a72

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Le5/i;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071a71

    goto :goto_0
.end method

.method private G(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lx4/z1;->m(I)I

    move-result p1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    const-string p1, "pkg_icon_xspace://"

    goto :goto_0

    :cond_0
    const-string p1, "pkg_icon://"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private H()Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Le5/i;->i:Lg5/j;

    instance-of v1, v0, Lg5/f;

    if-eqz v1, :cond_0

    check-cast v0, Lg5/f;

    invoke-virtual {v0}, Lg5/f;->d()Lf5/d;

    move-result-object v0

    iget-object v1, v0, Lf5/d;->b:Ljava/lang/String;

    iget-object v0, v0, Lf5/d;->c:Ljava/lang/String;

    invoke-static {v1, v0}, La8/a0;->n(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Li5/c;

    if-eqz v1, :cond_1

    check-cast v0, Li5/c;

    iget-object v1, p0, Le5/i;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Li5/c;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Le5/i;->i:Lg5/j;

    check-cast v1, Li5/c;

    invoke-virtual {v1}, Li5/c;->h()Li5/a;

    move-result-object v1

    iget-object v1, v1, Li5/a;->g:Ljava/lang/String;

    iget-object v2, p0, Le5/i;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private I(I)Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Le5/i;->c:Landroid/view/WindowManager;

    invoke-static {v0}, La8/k2;->m(Landroid/view/WindowManager;)I

    move-result v0

    int-to-float v1, v0

    const v2, 0x3f428f5c    # 0.76f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v3, p0, Le5/i;->c:Landroid/view/WindowManager;

    invoke-static {v3}, La8/k2;->k(Landroid/view/WindowManager;)I

    move-result v3

    int-to-float v4, v3

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iget-object v4, p0, Le5/i;->b:Landroid/content/Context;

    invoke-static {v4}, La8/k2;->K(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v5, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1}, Le5/i;->Z(I)Z

    move-result p1

    if-eqz p1, :cond_2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5, v5, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, p1}, Le5/i;->Z(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sub-int/2addr v3, v2

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    move-object v2, v1

    :cond_2
    :goto_0
    return-object v2
.end method

.method private J()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Le5/i;->i:Lg5/j;

    instance-of v1, v0, Lg5/f;

    if-eqz v1, :cond_0

    check-cast v0, Lg5/f;

    invoke-virtual {v0}, Lg5/f;->d()Lf5/d;

    move-result-object v0

    iget-object v0, v0, Lf5/d;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Li5/c;

    if-eqz v1, :cond_1

    check-cast v0, Li5/c;

    invoke-virtual {v0}, Li5/c;->h()Li5/a;

    move-result-object v0

    iget-object v0, v0, Li5/a;->g:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private K()Landroid/graphics/Rect;
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le5/i;->F(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v0, v0, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method private L(I)Landroid/graphics/Rect;
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Le5/i;->K()Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object p1, Le5/j;->c:Landroid/graphics/Rect;

    return-object p1

    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    return-object p1
.end method

.method private M([Landroid/graphics/Rect;Z)I
    .locals 3

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Le5/i;->b:Landroid/content/Context;

    invoke-static {v0}, La8/k2;->K(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    aget-object p2, p1, v2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-gt p2, p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    aget-object p2, p1, v2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-lt p2, p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    if-eqz p2, :cond_6

    aget-object p2, p1, v2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-gt p2, p1, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    aget-object p2, p1, v2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-lt p2, p1, :cond_7

    move v1, v2

    :cond_7
    return v1
.end method

.method private N()Landroid/graphics/Bitmap;
    .locals 5

    invoke-static {}, La8/a0;->M()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La8/a0;->s(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-static {v0}, La8/a0;->t(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0x3e7

    if-ne v0, v2, :cond_1

    const-string v2, "pkg_icon_xspace://"

    goto :goto_1

    :cond_1
    const-string v2, "pkg_icon://"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopActivityIconBitmap: uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "packageName = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockItemDragController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lx4/o0;->p(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private O()I
    .locals 2

    iget-object v0, p0, Le5/i;->i:Lg5/j;

    instance-of v1, v0, Lg5/f;

    if-eqz v1, :cond_0

    check-cast v0, Lg5/f;

    invoke-virtual {v0}, Lg5/f;->d()Lf5/d;

    move-result-object v0

    iget v0, v0, Lf5/d;->a:I

    goto :goto_0

    :cond_0
    instance-of v1, v0, Li5/c;

    if-eqz v1, :cond_1

    check-cast v0, Li5/c;

    iget-object v1, p0, Le5/i;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Li5/c;->j(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method private P(I)Z
    .locals 1

    invoke-direct {p0}, Le5/i;->j0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Le5/i;->q(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private Q(I)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v0, v1, v1}, Le5/i;->R(IZFF)V

    return-void
.end method

.method private R(IZFF)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAreaChange: currentArea = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " needOpen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockItemDragController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Le5/i;->W()V

    sget-object p1, Le5/j;->b:Landroid/graphics/Rect;

    iget-object v0, p0, Le5/i;->j:Le5/n;

    invoke-virtual {v0}, Le5/n;->getCurrentRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Le5/i;->j:Le5/n;

    invoke-virtual {v1}, Le5/n;->getCurrentRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Le5/i;->n0(Landroid/graphics/Rect;FF)V

    iget-object p1, p0, Le5/i;->j:Le5/n;

    if-eqz p2, :cond_1

    sget-object p2, Le5/j;->b:Landroid/graphics/Rect;

    invoke-static {p0, p1, p2, p3, p4}, Le5/j;->h(Le5/i;Le5/n;Landroid/graphics/Rect;FF)V

    goto/16 :goto_2

    :cond_1
    sget-object p2, Le5/j;->b:Landroid/graphics/Rect;

    invoke-static {p1, p2}, Le5/j;->k(Le5/n;Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_2
    invoke-direct {p0, p1}, Le5/i;->P(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, La8/s1;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-direct {p0, p1}, Le5/i;->B(I)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Le5/i;->b:Landroid/content/Context;

    invoke-static {v1}, La8/k2;->K(Landroid/content/Context;)Z

    move-result v1

    new-array v0, v0, [Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Le5/i;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-double v4, p1

    invoke-virtual {v1, v2, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array v1, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p1, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Le5/i;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-double v4, v4

    invoke-virtual {v1, v2, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-double v4, p1

    invoke-virtual {v1, v2, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    new-array v1, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, p1, v1}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Le5/i;->I(I)Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAreaChange: splitWindowRect = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Le5/i;->k:Le5/n;

    invoke-static {v0, p1}, Le5/j;->k(Le5/n;Landroid/graphics/Rect;)V

    :goto_0
    invoke-static {}, La8/z;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Le5/i;->b:Landroid/content/Context;

    invoke-static {p1}, La8/z;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Landroid/graphics/Rect;

    sget-object v0, Le5/j;->a:Landroid/graphics/Rect;

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_5
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Le5/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071a75

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Le5/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071a70

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {p1, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    iget-object v0, p0, Le5/i;->j:Le5/n;

    invoke-virtual {v0}, Le5/n;->getCurrentRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Le5/i;->j:Le5/n;

    invoke-virtual {v1}, Le5/n;->getCurrentRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Le5/i;->n0(Landroid/graphics/Rect;FF)V

    if-eqz p2, :cond_6

    iget-object p2, p0, Le5/i;->j:Le5/n;

    invoke-static {p0, p2, p1, p3, p4}, Le5/j;->h(Le5/i;Le5/n;Landroid/graphics/Rect;FF)V

    goto :goto_2

    :cond_6
    iget-object p2, p0, Le5/i;->j:Le5/n;

    invoke-static {p2, p1}, Le5/j;->k(Le5/n;Landroid/graphics/Rect;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private S(IFF)V
    .locals 4

    const-string v0, "DockItemDragController"

    const-string v1, "handleEnterOrExitDock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Le5/i;->K()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0}, Le5/i;->W()V

    iget-object v2, p0, Le5/i;->j:Le5/n;

    invoke-direct {p0, v1}, Le5/i;->F(I)I

    move-result v3

    invoke-virtual {v2, v3}, Le5/n;->setIconLength(I)V

    iget-object v2, p0, Le5/i;->j:Le5/n;

    invoke-virtual {v2, v1}, Le5/n;->setShowShadowIcon(Z)V

    iget-object v1, p0, Le5/i;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->u(Z)V

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    sget-object v3, Le5/j;->b:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v3, p0, Le5/i;->j:Le5/n;

    invoke-direct {p0, p1}, Le5/i;->F(I)I

    move-result p1

    invoke-virtual {v3, p1}, Le5/n;->setIconLength(I)V

    iget-object p1, p0, Le5/i;->j:Le5/n;

    invoke-virtual {p1, v0}, Le5/n;->setShowShadowIcon(Z)V

    iget-object p1, p0, Le5/i;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {p1}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->u(Z)V

    move-object p1, v2

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Le5/i;->n0(Landroid/graphics/Rect;FF)V

    iget-object p2, p0, Le5/i;->j:Le5/n;

    invoke-static {p2, p1}, Le5/j;->k(Le5/n;Landroid/graphics/Rect;)V

    return-void
.end method

.method private T(FF)V
    .locals 9

    const-string v0, "DockItemDragController"

    const-string v1, "handleStartFreeform"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, La8/s1;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le5/i;->b:Landroid/content/Context;

    invoke-static {v0}, Lf7/b;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ld2/c;->b()Ld2/c;

    move-result-object p1

    iget-object p2, p0, Le5/i;->b:Landroid/content/Context;

    const v0, 0x7f120b4f

    invoke-virtual {p1, p2, v0}, Ld2/c;->e(Landroid/content/Context;I)Ld2/c;

    invoke-virtual {p0}, Le5/i;->s()V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-direct {p0, v0, p1, p2}, Le5/i;->D([IFF)V

    iget-object p1, p0, Le5/i;->b:Landroid/content/Context;

    const/4 p2, 0x0

    aget v1, v0, p2

    const/4 v2, 0x1

    aget v3, v0, v2

    invoke-direct {p0}, Le5/i;->J()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v3, v4}, La8/a0;->j(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v3, p0, Le5/i;->b:Landroid/content/Context;

    invoke-direct {p0}, Le5/i;->H()Landroid/content/Intent;

    move-result-object v4

    const v5, 0x7f12098d

    invoke-direct {p0}, Le5/i;->O()I

    move-result v6

    aget v7, v0, p2

    aget v8, v0, v2

    invoke-static/range {v3 .. v8}, La8/a0;->X(Landroid/content/Context;Landroid/content/Intent;IIII)V

    sget-object p2, Le5/j;->a:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Le5/i;->j:Le5/n;

    sget-object p2, Le5/j;->a:Landroid/graphics/Rect;

    invoke-static {p0, p1, p2}, Le5/j;->g(Le5/i;Le5/n;Landroid/graphics/Rect;)V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    new-instance p2, Le5/e;

    invoke-direct {p2, p0}, Le5/e;-><init>(Le5/i;)V

    invoke-virtual {p1, p2}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private U(FF)V
    .locals 12

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Le5/i;->x(II)I

    move-result v0

    invoke-direct {p0, v0}, Le5/i;->Z(I)Z

    move-result v0

    const-string v1, "DockItemDragController"

    const-string v2, "handleStartSplitWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Le5/i;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071a6e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Le5/i;->b:Landroid/content/Context;

    invoke-static {v2}, La8/k2;->K(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Le5/i;->c:Landroid/view/WindowManager;

    invoke-static {v2}, La8/k2;->m(Landroid/view/WindowManager;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v2, v1

    iget-object v6, p0, Le5/i;->c:Landroid/view/WindowManager;

    invoke-static {v6}, La8/k2;->k(Landroid/view/WindowManager;)I

    move-result v6

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    add-int/2addr v2, v1

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Le5/i;->c:Landroid/view/WindowManager;

    invoke-static {v2}, La8/k2;->k(Landroid/view/WindowManager;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p0, Le5/i;->c:Landroid/view/WindowManager;

    invoke-static {v5}, La8/k2;->m(Landroid/view/WindowManager;)I

    move-result v5

    sub-int v6, v2, v1

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    add-int/2addr v2, v1

    invoke-virtual {v5, v3, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_0
    iget-object v7, p0, Le5/i;->j:Le5/n;

    if-eqz v0, :cond_1

    move-object v8, v4

    goto :goto_1

    :cond_1
    move-object v8, v5

    :goto_1
    const/4 v11, 0x3

    move-object v6, p0

    move v9, p1

    move v10, p2

    invoke-static/range {v6 .. v11}, Le5/j;->i(Le5/i;Le5/n;Landroid/graphics/Rect;FFI)V

    iget-object p1, p0, Le5/i;->k:Le5/n;

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    move-object v4, v5

    :cond_2
    invoke-static {p1, v4}, Le5/j;->k(Le5/n;Landroid/graphics/Rect;)V

    :cond_3
    return-void
.end method

.method private W()V
    .locals 3

    iget-object v0, p0, Le5/i;->k:Le5/n;

    if-eqz v0, :cond_0

    sget-object v1, Le5/j;->c:Landroid/graphics/Rect;

    const/4 v2, 0x4

    invoke-static {p0, v0, v1, v2}, Le5/j;->j(Le5/i;Le5/n;Landroid/graphics/Rect;I)V

    :cond_0
    iget-object v0, p0, Le5/i;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private X()V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Le5/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    new-instance v1, Le5/k;

    invoke-direct {v1, p0}, Le5/k;-><init>(Le5/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    iget-object v0, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    new-instance v1, Le5/d;

    invoke-direct {v1, p0}, Le5/d;-><init>(Le5/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    invoke-static {v0}, La8/k2;->x(Landroid/view/View;)V

    iget-object v0, p0, Le5/i;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Le5/i;->y()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private Y()Z
    .locals 1

    invoke-direct {p0}, Le5/i;->H()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, La8/a0;->H(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method private Z(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic a(Le5/i;)V
    .locals 0

    invoke-direct {p0}, Le5/i;->e0()V

    return-void
.end method

.method private a0()Z
    .locals 1

    iget-object v0, p0, Le5/i;->k:Le5/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Le5/i;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic b(Le5/i;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Le5/i;->c0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic b0()V
    .locals 1

    invoke-direct {p0}, Le5/i;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll5/b;->g(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Le5/i;)V
    .locals 0

    invoke-direct {p0}, Le5/i;->b0()V

    return-void
.end method

.method private synthetic c0(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Le5/i;->s()V

    return-void
.end method

.method public static synthetic d(Le5/i;Z)V
    .locals 0

    invoke-direct {p0, p1}, Le5/i;->f0(Z)V

    return-void
.end method

.method private synthetic d0()V
    .locals 1

    iget v0, p0, Le5/i;->m:I

    invoke-direct {p0, v0}, Le5/i;->Q(I)V

    return-void
.end method

.method public static synthetic e(Le5/i;)V
    .locals 0

    invoke-direct {p0}, Le5/i;->d0()V

    return-void
.end method

.method private synthetic e0()V
    .locals 0

    invoke-direct {p0}, Le5/i;->z()V

    invoke-direct {p0}, Le5/i;->i0()V

    return-void
.end method

.method static synthetic f(Le5/i;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Le5/i;->n:Landroid/os/Handler;

    return-object p0
.end method

.method private synthetic f0(Z)V
    .locals 1

    invoke-direct {p0}, Le5/i;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ll5/b;->h(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic g(Le5/i;I)I
    .locals 0

    iput p1, p0, Le5/i;->m:I

    return p1
.end method

.method static synthetic h(Le5/i;)Lcom/miui/dock/sidebar/j;
    .locals 0

    iget-object p0, p0, Le5/i;->d:Lcom/miui/dock/sidebar/j;

    return-object p0
.end method

.method static synthetic i(Le5/i;)Ls8/h;
    .locals 0

    iget-object p0, p0, Le5/i;->e:Ls8/h;

    return-object p0
.end method

.method private i0()V
    .locals 3

    const-string v0, "DockItemDragController"

    const-string v1, "removeWindows"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Le5/i;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Le5/i;->h:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Le5/i;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Le5/i;->h:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "removeWindows error: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic j(Le5/i;)V
    .locals 0

    invoke-direct {p0}, Le5/i;->z()V

    return-void
.end method

.method private j0()Z
    .locals 4

    iget-object v0, p0, Le5/i;->b:Landroid/content/Context;

    invoke-static {v0}, La8/z;->i(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, La8/s1;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La8/a0;->y()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, La8/a0;->M()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, La8/a0;->I(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "DockItemDragController"

    if-eqz v2, :cond_2

    const-string v0, "shouldEnterSplit: top Activity is HOME!"

    :goto_0
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-direct {p0, v0}, Le5/i;->u(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "shouldEnterSplit: app not support!"

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Le5/i;->t(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "shouldEnterSplit: same app with top!"

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic k(Le5/i;)Le5/n;
    .locals 0

    iget-object p0, p0, Le5/i;->j:Le5/n;

    return-object p0
.end method

.method static synthetic l(Le5/i;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private l0(Landroid/view/View;Landroid/view/View$DragShadowBuilder;I)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, v1, Le5/i;->b:Landroid/content/Context;

    const-class v4, Landroid/content/pm/LauncherApps;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, v1, Le5/i;->i:Lg5/j;

    instance-of v6, v5, Li5/c;

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-eqz v6, :cond_0

    iget-object v3, v1, Le5/i;->b:Landroid/content/Context;

    check-cast v5, Li5/c;

    invoke-virtual {v5, v3}, Li5/c;->f(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x4000000

    invoke-static {v3, v2, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v5, v1, Le5/i;->b:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Le5/i;->J()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/networkassistant/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lx4/o0;->n()Lrh/d;

    move-result-object v6

    invoke-virtual {v6}, Lrh/d;->n()Llh/a;

    move-result-object v6

    iget-object v11, v1, Le5/i;->i:Lg5/j;

    check-cast v11, Li5/c;

    invoke-virtual {v11}, Li5/c;->h()Li5/a;

    move-result-object v11

    iget-object v11, v11, Li5/a;->b:Ljava/lang/String;

    invoke-interface {v6, v11}, Llh/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithFilePath(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    goto :goto_0

    :cond_0
    instance-of v6, v5, Lg5/f;

    if-eqz v6, :cond_2

    check-cast v5, Lg5/f;

    invoke-virtual {v5}, Lg5/f;->d()Lf5/d;

    move-result-object v5

    iget v5, v5, Lf5/d;->a:I

    new-instance v6, Landroid/content/ComponentName;

    iget-object v11, v1, Le5/i;->i:Lg5/j;

    check-cast v11, Lg5/f;

    invoke-virtual {v11}, Lg5/f;->d()Lf5/d;

    move-result-object v11

    iget-object v11, v11, Lf5/d;->b:Ljava/lang/String;

    iget-object v12, v1, Le5/i;->i:Lg5/j;

    check-cast v12, Lg5/f;

    invoke-virtual {v12}, Lg5/f;->d()Lf5/d;

    move-result-object v12

    iget-object v12, v12, Lf5/d;->c:Ljava/lang/String;

    invoke-direct {v6, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "getMainActivityLaunchIntent"

    new-array v12, v8, [Ljava/lang/Class;

    const-class v13, Landroid/content/ComponentName;

    aput-object v13, v12, v2

    const-class v13, Landroid/os/Bundle;

    aput-object v13, v12, v7

    const-class v13, Landroid/os/UserHandle;

    aput-object v13, v12, v10

    new-array v13, v8, [Ljava/lang/Object;

    aput-object v6, v13, v2

    aput-object v9, v13, v7

    invoke-static {v5}, Lx4/z1;->l(I)Landroid/os/UserHandle;

    move-result-object v6

    aput-object v6, v13, v10

    invoke-static {v3, v11, v12, v13}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    :cond_1
    move-object v6, v9

    goto :goto_0

    :cond_2
    move v5, v2

    move-object v3, v9

    move-object v6, v3

    :goto_0
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iget-object v13, v1, Le5/i;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v13}, Lcom/miui/dock/sidebar/j;->A()Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;

    move-result-object v13

    invoke-virtual {v13}, Lcom/miui/gamebooster/windowmanager/newbox/TurboLayout;->getDockLayout()Lcom/miui/gamebooster/windowmanager/newbox/e;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v13

    iget-boolean v14, v1, Le5/i;->f:Z

    if-eqz v14, :cond_3

    iget v14, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v14, v13

    iput v14, v11, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    div-int/2addr v13, v10

    iput v13, v12, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_3
    iget v14, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v13

    iput v14, v11, Landroid/graphics/Rect;->left:I

    iget-object v14, v1, Le5/i;->c:Landroid/view/WindowManager;

    invoke-static {v14}, La8/k2;->m(Landroid/view/WindowManager;)I

    move-result v14

    iput v14, v11, Landroid/graphics/Rect;->right:I

    iput v14, v12, Landroid/graphics/Rect;->right:I

    div-int/2addr v13, v10

    sub-int/2addr v14, v13

    iput v14, v12, Landroid/graphics/Rect;->left:I

    :goto_1
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v13}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v14, v1, Le5/i;->b:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f070372

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    new-instance v15, Landroid/graphics/Rect;

    iget v9, v13, Landroid/graphics/Rect;->left:I

    iget v8, v13, Landroid/graphics/Rect;->top:I

    add-int v7, v9, v14

    add-int/2addr v14, v8

    invoke-direct {v15, v9, v8, v7, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v7, v15, Landroid/graphics/Rect;->left:I

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/2addr v8, v10

    sub-int/2addr v7, v8

    iget v8, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v9, v13

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    invoke-virtual {v15, v7, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    const-string v7, "miui.intent.extra.BAR_OPEN_RECT"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v7, "miui.intent.extra.BAR_CLOSE_RECT"

    invoke-virtual {v4, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v7, "miui.intent.extra.ICON_RECT"

    invoke-virtual {v4, v7, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v7, "miui.intent.extra.ICON"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "miui.intent.extra.ICON_DRAG_CALLER"

    invoke-virtual {v4, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "android.intent.extra.PENDING_INTENT"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.USER"

    invoke-static {v5}, Lx4/z1;->l(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v3, Landroid/content/ClipDescription;

    const-string v5, "Drag"

    const-string v6, "application/vnd.android.activity"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v5, Landroid/content/ClipData;

    new-instance v6, Landroid/content/ClipData$Item;

    invoke-direct {v6, v4}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    invoke-direct {v5, v3, v6}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v3, Le5/i$a;

    invoke-direct {v3, v1}, Le5/i$a;-><init>(Le5/i;)V

    const-string v4, "startDragAndDrop"

    const/4 v6, 0x5

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/ClipData;

    aput-object v8, v7, v2

    const-class v8, Landroid/view/View$DragShadowBuilder;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/Object;

    aput-object v8, v7, v10

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const-class v8, Landroid/view/IMiuiDragListener;

    const/4 v9, 0x4

    aput-object v8, v7, v9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const/4 v5, 0x1

    aput-object p2, v6, v5

    const/4 v5, 0x0

    aput-object v5, v6, v10

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v6, v8

    aput-object v3, v6, v9

    invoke-static {v0, v4, v7, v6}, Lbh/f;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startDragAndDropByMiui: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DockItemDragController"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic m(Le5/i;)Le5/n;
    .locals 0

    iget-object p0, p0, Le5/i;->k:Le5/n;

    return-object p0
.end method

.method static synthetic n(Le5/i;)V
    .locals 0

    invoke-direct {p0}, Le5/i;->i0()V

    return-void
.end method

.method private n0(Landroid/graphics/Rect;FF)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {v0, p2}, Le5/j;->c(IF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, p3}, Le5/j;->d(IF)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method private q(I)V
    .locals 6

    invoke-static {}, La8/s1;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le5/i;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Le5/i;->r(ILandroid/view/View;)V

    iget-object p1, p0, Le5/i;->h:Landroid/widget/FrameLayout;

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Le5/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le5/i;->h:Landroid/widget/FrameLayout;

    invoke-static {v0}, La8/k2;->x(Landroid/view/View;)V

    invoke-direct {p0}, Le5/i;->y()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "ClientDimmerForAppPair"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Le5/i;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Le5/i;->h:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Le5/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Le5/i;->b:Landroid/content/Context;

    const v2, 0x7f06025e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Le5/i;->h:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, v0}, Le5/i;->r(ILandroid/view/View;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    iget-object v2, p0, Le5/i;->b:Landroid/content/Context;

    const v3, 0x7f060260

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Le5/i;->k:Le5/n;

    const-string v2, "DockItemDragController"

    if-eqz v0, :cond_2

    const-string p1, "addSplitShadowLayout: is added."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Le5/i;->k:Le5/n;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSplitShadowLayout: currentArea = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Le5/n;

    iget-object v2, p0, Le5/i;->b:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Le5/i;->L(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {p0, p1}, Le5/i;->F(I)I

    move-result p1

    invoke-direct {p0}, Le5/i;->N()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v2, v4, p1, v5}, Le5/n;-><init>(Landroid/content/Context;Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Le5/i;->k:Le5/n;

    invoke-virtual {v0, v3}, Le5/n;->setShowShadowIcon(Z)V

    iget-object p1, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    iget-object v0, p0, Le5/i;->k:Le5/n;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Le5/i;->k:Le5/n;

    invoke-virtual {v4}, Le5/n;->getViewRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Le5/i;->k:Le5/n;

    invoke-virtual {v5}, Le5/n;->getViewRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-array p1, v3, [Landroid/view/View;

    iget-object v0, p0, Le5/i;->k:Le5/n;

    aput-object v0, p1, v1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    iget-object v2, p0, Le5/i;->k:Le5/n;

    invoke-virtual {v2}, Le5/n;->getViewRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget-object v2, p0, Le5/i;->k:Le5/n;

    invoke-virtual {v2}, Le5/n;->getViewRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    iget-object v2, p0, Le5/i;->k:Le5/n;

    invoke-virtual {v2}, Le5/n;->getViewRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    iget-object v2, p0, Le5/i;->k:Le5/n;

    invoke-virtual {v2}, Le5/n;->getViewRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-interface {p1, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_1
    return-void
.end method

.method private r(ILandroid/view/View;)V
    .locals 4

    invoke-direct {p0, p1}, Le5/i;->B(I)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Le5/i;->b:Landroid/content/Context;

    invoke-static {v0}, La8/k2;->K(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Landroid/view/View;

    aput-object p2, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p2

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->X:Lmiuix/animation/property/ViewProperty;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->WIDTH:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    goto :goto_0

    :cond_0
    new-array v0, v2, [Landroid/view/View;

    aput-object p2, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p2

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->Y:Lmiuix/animation/property/ViewProperty;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->HEIGHT:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    :goto_0
    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-interface {p2, p1}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private t(Ljava/lang/Object;)Z
    .locals 5

    invoke-static {p1}, La8/a0;->s(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-static {p1}, La8/a0;->t(Ljava/lang/Object;)I

    move-result p1

    iget-object v2, p0, Le5/i;->i:Lg5/j;

    instance-of v2, v2, Li5/c;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-direct {p0}, Le5/i;->H()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Le5/i;->H()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Le5/i;->O()I

    move-result v0

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3

    :cond_2
    invoke-direct {p0}, Le5/i;->J()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Le5/i;->O()I

    move-result v0

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    return v3
.end method

.method private u(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, La8/s1;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, La8/a0;->J(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Le5/i;->Y()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private w()Z
    .locals 2

    invoke-direct {p0}, Le5/i;->J()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Le5/i;->O()I

    move-result v1

    invoke-static {v0, v1}, La8/a0;->A(Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private y()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x50328

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v0}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_1

    :cond_0
    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v0}, La8/k2;->G(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {}, La8/a0;->F()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x7f6

    goto :goto_2

    :cond_2
    const/16 v1, 0x7e0

    :goto_2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object v0
.end method

.method private z()V
    .locals 3

    iget-object v0, p0, Le5/i;->e:Ls8/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le5/i;->d:Lcom/miui/dock/sidebar/j;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls8/h;->e1(Lcom/miui/dock/sidebar/j;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected V()V
    .locals 3

    const-string v0, "DockItemDragController"

    const-string v1, "hideSplitShadow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Le5/i;->k:Le5/n;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    iget-object v1, p0, Le5/i;->b:Landroid/content/Context;

    const v2, 0x7f060df0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method protected g0(FF)V
    .locals 3

    iget-boolean v0, p0, Le5/i;->l:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Le5/i;->A()V

    return-void

    :cond_0
    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Le5/i;->x(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openWindowByDropArea: dropArea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DockItemDragController"

    invoke-static {v2, v1}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Le5/i;->s()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Le5/i;->a0()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-direct {p0, v0, v1, p1, p2}, Le5/i;->R(IZFF)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2}, Le5/i;->T(FF)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Le5/i;->j0()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Le5/i;->A()V

    return-void

    :cond_5
    invoke-direct {p0}, Le5/i;->a0()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2}, Le5/i;->U(FF)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Le5/i;->A()V

    :goto_0
    return-void
.end method

.method protected h0()V
    .locals 2

    iget-object v0, p0, Le5/i;->j:Le5/n;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le5/i;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public k0()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "DockItemDragController"

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    const-string v0, "startDragAndDrop SDK_INT less than N"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Le5/i;->w()Z

    move-result v0

    iput-boolean v0, p0, Le5/i;->l:Z

    invoke-static {}, La8/a0;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le5/i;->a:Landroid/view/View;

    new-instance v2, Le5/i$c;

    iget-object v3, p0, Le5/i;->a:Landroid/view/View;

    invoke-direct {v2, v3}, Le5/i$c;-><init>(Landroid/view/View;)V

    invoke-direct {p0}, Le5/i;->C()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Le5/i;->l0(Landroid/view/View;Landroid/view/View$DragShadowBuilder;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le5/i;->a:Landroid/view/View;

    const-string v2, "Drag"

    const-string v3, "Drop"

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    new-instance v3, Le5/i$c;

    iget-object v4, p0, Le5/i;->a:Landroid/view/View;

    invoke-direct {v3, v4}, Le5/i$c;-><init>(Landroid/view/View;)V

    const/4 v4, 0x0

    const/16 v5, 0x3300

    invoke-static {v0, v2, v3, v4, v5}, Landroidx/core/view/y0;->a(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDragAndDrop success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Le5/i;->s()V

    :cond_2
    return-void
.end method

.method m0(FF)V
    .locals 2

    const-string v0, "DockItemDragController"

    const-string v1, "startSplitWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Le5/i;->h:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Le5/i;->x(II)I

    move-result p1

    invoke-direct {p0, p1}, Le5/i;->Z(I)Z

    move-result p1

    invoke-direct {p0}, Le5/i;->H()Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Le5/i;->b:Landroid/content/Context;

    invoke-direct {p0}, Le5/i;->O()I

    move-result v1

    invoke-static {v0, p2, p1, v1}, La8/a0;->b0(Landroid/content/Context;Landroid/content/Intent;ZI)V

    invoke-virtual {p0}, Le5/i;->s()V

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p2

    new-instance v0, Le5/c;

    invoke-direct {v0, p0, p1}, Le5/c;-><init>(Le5/i;Z)V

    invoke-virtual {p2, v0}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected o(FF)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addShadowLayout: startX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " startY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockItemDragController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le5/i;->F(I)I

    move-result v1

    invoke-direct {p0, v0}, Le5/i;->L(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Le5/i;->n0(Landroid/graphics/Rect;FF)V

    new-instance p1, Le5/n;

    iget-object p2, p0, Le5/i;->b:Landroid/content/Context;

    invoke-direct {p0}, Le5/i;->E()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p1, p2, v0, v1, v2}, Le5/n;-><init>(Landroid/content/Context;Landroid/graphics/Rect;ILandroid/graphics/Bitmap;)V

    iput-object p1, p0, Le5/i;->j:Le5/n;

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {p1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object p2, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    iget-object v0, p0, Le5/i;->j:Le5/n;

    invoke-virtual {p2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Le5/i;->j:Le5/n;

    invoke-virtual {p1}, Le5/n;->getViewRect()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Le5/i;->j:Le5/n;

    invoke-virtual {p1}, Le5/n;->getViewRect()Landroid/graphics/Rect;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method protected o0(FF)V
    .locals 5

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Le5/i;->x(II)I

    move-result v0

    iget v1, p0, Le5/i;->m:I

    if-eq v0, v1, :cond_2

    iget-boolean v1, p0, Le5/i;->l:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentArea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " lastArea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Le5/i;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DockItemDragController"

    invoke-static {v2, v1}, Lb8/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Le5/i;->h0()V

    invoke-direct {p0}, Le5/i;->z()V

    if-nez v0, :cond_0

    invoke-direct {p0, v0, p1, p2}, Le5/i;->S(IFF)V

    goto :goto_0

    :cond_0
    iget v1, p0, Le5/i;->m:I

    const-wide/16 v2, 0x12c

    if-nez v1, :cond_1

    invoke-direct {p0, v0, p1, p2}, Le5/i;->S(IFF)V

    :cond_1
    iget-object v1, p0, Le5/i;->j:Le5/n;

    iget-object v4, p0, Le5/i;->o:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iput v0, p0, Le5/i;->m:I

    :cond_2
    iget-object v0, p0, Le5/i;->j:Le5/n;

    invoke-virtual {v0}, Le5/n;->getCurrentRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Le5/i;->n0(Landroid/graphics/Rect;FF)V

    iget-object p1, p0, Le5/i;->j:Le5/n;

    invoke-static {p1, v0}, Le5/j;->k(Le5/n;Landroid/graphics/Rect;)V

    return-void
.end method

.method public p()V
    .locals 7

    const/4 v0, 0x2

    new-array v4, v0, [I

    iget-object v0, p0, Le5/i;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addShortCutMenu loc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockItemDragController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Le5/i;->e:Ls8/h;

    iget-object v2, p0, Le5/i;->d:Lcom/miui/dock/sidebar/j;

    iget-object v5, p0, Le5/i;->i:Lg5/j;

    iget-object v6, p0, Le5/i;->a:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual/range {v1 .. v6}, Ls8/h;->f1(Lcom/miui/dock/sidebar/j;Z[ILg5/j;Landroid/view/View;)V

    return-void
.end method

.method protected s()V
    .locals 10

    iget-object v0, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    new-array v4, v1, [Landroid/view/View;

    iget-object v5, p0, Le5/i;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v4

    new-instance v5, Lmiuix/animation/controller/AnimState;

    invoke-direct {v5}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v6, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    sget-object v6, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide v7, 0x3fee666666666666L    # 0.95

    invoke-virtual {v5, v6, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    sget-object v6, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v5, v6, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    new-array v6, v1, [Lmiuix/animation/base/AnimConfig;

    new-instance v7, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v7}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v8, -0x2

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    invoke-virtual {v7, v8, v9}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    new-array v8, v1, [Lmiuix/animation/listener/TransitionListener;

    new-instance v9, Le5/i$b;

    invoke-direct {v9, p0, v3, v0}, Le5/i$b;-><init>(Le5/i;II)V

    aput-object v9, v8, v2

    invoke-virtual {v7, v8}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {v4, v5, v6}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Le5/i;->i0()V

    :cond_1
    iget-object v2, p0, Le5/i;->a:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Le5/i;->a:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterDrag, childCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mLastArea: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Le5/i;->m:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockItemDragController"

    invoke-static {v1, v0}, Lb8/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Le5/i;->m:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Le5/i;->e:Ls8/h;

    iget-object v1, p0, Le5/i;->d:Lcom/miui/dock/sidebar/j;

    invoke-virtual {v0, v1}, Ls8/h;->L(Lcom/miui/dock/sidebar/j;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method public v()V
    .locals 3

    const-string v0, "DockItemDragController"

    const-string v1, "beforeDrag"

    invoke-static {v0, v1}, Lb8/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Le5/i;->a:Landroid/view/View;

    sget v1, Lmiuix/view/i;->x:I

    sget v2, Lmiuix/view/i;->m:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->f(Landroid/view/View;II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Le5/i;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    iget-object v0, p0, Le5/i;->a:Landroid/view/View;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Le5/i;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method protected x(II)I
    .locals 1

    sget-object v0, Le5/j;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Le5/i;->b:Landroid/content/Context;

    invoke-static {v0}, La8/k2;->K(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Le5/j;->e:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    sget-object v0, Le5/j;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    return p1

    :cond_2
    sget-object v0, Le5/j;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    sget-object v0, Le5/j;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    const/4 p1, 0x5

    return p1
.end method
