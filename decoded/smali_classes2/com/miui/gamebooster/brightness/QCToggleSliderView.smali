.class public Lcom/miui/gamebooster/brightness/QCToggleSliderView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/brightness/a;


# instance fields
.field private final a:Landroid/net/Uri;

.field private b:Landroid/widget/SeekBar;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

.field private e:I

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:I

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:Landroid/hardware/display/DisplayManager;

.field private n:Z

.field private o:Lcom/miui/gamebooster/brightness/a$a;

.field private p:Ljava/lang/reflect/Method;

.field private q:Ljava/lang/reflect/Method;

.field private r:I

.field private final s:Landroid/os/Handler;

.field private final t:Landroid/database/ContentObserver;

.field private final u:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->v(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "screen_brightness"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->a:Landroid/net/Uri;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->s:Landroid/os/Handler;

    new-instance p3, Lcom/miui/gamebooster/brightness/QCToggleSliderView$a;

    invoke-direct {p3, p0, p2}, Lcom/miui/gamebooster/brightness/QCToggleSliderView$a;-><init>(Lcom/miui/gamebooster/brightness/QCToggleSliderView;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->t:Landroid/database/ContentObserver;

    new-instance p2, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView$b;-><init>(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)V

    iput-object p2, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->u:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->v(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->h:I

    return p0
.end method

.method static synthetic b(Lcom/miui/gamebooster/brightness/QCToggleSliderView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->h:I

    return p1
.end method

.method static synthetic c(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)I
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->getCurrentBrightness()I

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/miui/gamebooster/brightness/QCToggleSliderView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->setTemporaryBrightness(F)V

    return-void
.end method

.method static synthetic e(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)F
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->getBrightness()F

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/miui/gamebooster/brightness/QCToggleSliderView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->setBrightness(F)V

    return-void
.end method

.method static synthetic g(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)F
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->i:F

    return p0
.end method

.method private getBrightness()F
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/i;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    const-string v1, "getBrightnessInfo"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "brightness"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lbh/f;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "QCToggleSliderView"

    const-string v2, "getBrightness: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private getCurrentBrightness()I
    .locals 3

    invoke-static {}, La8/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->getBrightness()F

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->k:F

    iget v2, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->l:F

    :goto_0
    invoke-static {v0, v1, v2}, Lx4/m;->e(FFF)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "screen_brightness_float"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->i:F

    iget v2, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->j:F

    goto :goto_0
.end method

.method private getDisplayId()I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    const-string v2, "getDisplayId"

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lbh/f;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "QCToggleSliderView"

    const-string v3, "getDisplayId error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private getMaximumScreenBrightnessSetting()F
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, La8/p;->a()Z

    move-result v0

    const-string v2, "QCToggleSliderView"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/i;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    const-string v4, "getBrightnessInfo"

    new-array v5, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "brightnessMaximum"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lbh/f;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "getCurrentBrightness: "

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    :try_start_1
    const-string v4, "android.os.PowerManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getMaximumScreenBrightnessSetting"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v0, v0

    return v0

    :catchall_0
    move-exception v0

    const-string v3, "getMaximumScreenBrightnessSetting error"

    goto :goto_0

    :goto_1
    return v1
.end method

.method private getMinimumScreenBrightnessSetting()F
    .locals 7

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, La8/p;->a()Z

    move-result v0

    const-string v2, "QCToggleSliderView"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/i;->a(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    const-string v4, "getBrightnessInfo"

    new-array v5, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "brightnessMinimum"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lbh/f;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "getCurrentBrightness: "

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    :try_start_1
    const-string v4, "android.os.PowerManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getMinimumScreenBrightnessSetting"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-float v0, v0

    return v0

    :catchall_0
    move-exception v0

    const-string v3, "getMinimumScreenBrightnessSetting error"

    goto :goto_0

    :goto_1
    return v1
.end method

.method static synthetic h(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)F
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->j:F

    return p0
.end method

.method static synthetic i(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic j(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->n:Z

    return p0
.end method

.method static synthetic k(Lcom/miui/gamebooster/brightness/QCToggleSliderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->n:Z

    return p1
.end method

.method static synthetic l(Lcom/miui/gamebooster/brightness/QCToggleSliderView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->x(I)V

    return-void
.end method

.method static synthetic m(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)I
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->e:I

    return p0
.end method

.method static synthetic n(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->f:Z

    return p0
.end method

.method static synthetic o(Lcom/miui/gamebooster/brightness/QCToggleSliderView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->f:Z

    return p1
.end method

.method static synthetic p(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Lcom/miui/gamebooster/brightness/a$a;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->o:Lcom/miui/gamebooster/brightness/a$a;

    return-object p0
.end method

.method static synthetic q(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)Landroid/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->b:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic r(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)F
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->k:F

    return p0
.end method

.method static synthetic s(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)F
    .locals 0

    iget p0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->l:F

    return p0
.end method

.method private setBrightness(F)V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->q:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {}, La8/p;->a()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->q:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->m:Landroid/hardware/display/DisplayManager;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->r:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->q:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->m:Landroid/hardware/display/DisplayManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "QCToggleSliderView"

    const-string v1, "setBrightness error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private setTemporaryBrightness(F)V
    .locals 6

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->p:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {}, La8/p;->a()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->p:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->m:Landroid/hardware/display/DisplayManager;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->r:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->p:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->m:Landroid/hardware/display/DisplayManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "QCToggleSliderView"

    const-string v1, "setBrightness error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static t(FF)Z
    .locals 2

    cmpl-float v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private u(I)F
    .locals 8

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    :try_start_0
    const-string v2, "android.os.PowerManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getBrightnessConstraint"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string v0, "QCToggleSliderView"

    const-string v2, "getBrightnessConstraint error"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private v(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->w()V

    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->getMinimumScreenBrightnessSetting()F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->k:F

    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->getMaximumScreenBrightnessSetting()F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->l:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->u(I)F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->i:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->u(I)F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->j:F

    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->y()V

    return-void
.end method

.method private w()V
    .locals 8

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->m:Landroid/hardware/display/DisplayManager;

    :try_start_0
    const-string v0, "android.hardware.display.DisplayManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, La8/p;->a()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "setTemporaryBrightness"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :try_start_1
    new-array v5, v1, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->p:Ljava/lang/reflect/Method;

    const-string v2, "setBrightness"

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v6, v1, v3

    aput-object v7, v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->q:Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_0
    new-array v1, v4, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->p:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QCToggleSliderView"

    const-string v2, "init error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private x(I)V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;

    invoke-direct {v0, p0, p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView$c;-><init>(Lcom/miui/gamebooster/brightness/QCToggleSliderView;I)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private y()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->t:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->f:Z

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->d:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->setValue(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->d:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->d:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getValue()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->t:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->g:Landroid/content/Context;

    const v1, 0x7f0e01ce

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0b0a9c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->b:Landroid/widget/SeekBar;

    const v0, 0x7f0b072a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->b:Landroid/widget/SeekBar;

    const v1, 0xffff

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->b:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->u:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->getCurrentBrightness()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->h:I

    invoke-direct {p0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->r:I

    iget v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->h:I

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->setValue(I)V

    return-void
.end method

.method public bridge synthetic setChecked(Z)V
    .locals 0

    invoke-static {p0, p1}, Lf6/c;->a(Lcom/miui/gamebooster/brightness/a;Z)V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->d:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->setMax(I)V

    :cond_1
    return-void
.end method

.method public setMirror(Lcom/miui/gamebooster/brightness/QCToggleSliderView;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->d:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->d:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->setMax(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->d:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->setValue(I)V

    :cond_0
    return-void
.end method

.method public setOnChangedListener(Lcom/miui/gamebooster/brightness/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->o:Lcom/miui/gamebooster/brightness/a$a;

    return-void
.end method

.method public setValue(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->d:Lcom/miui/gamebooster/brightness/QCToggleSliderView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/brightness/QCToggleSliderView;->setValue(I)V

    :cond_0
    return-void
.end method
