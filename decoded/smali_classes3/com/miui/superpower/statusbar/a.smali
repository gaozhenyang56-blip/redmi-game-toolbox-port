.class public Lcom/miui/superpower/statusbar/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/superpower/statusbar/a$e;,
        Lcom/miui/superpower/statusbar/a$d;
    }
.end annotation


# static fields
.field private static volatile v:Lcom/miui/superpower/statusbar/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

.field private f:Landroid/view/WindowManager$LayoutParams;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/miui/superpower/statusbar/a$e;

.field private o:Lcom/miui/superpower/statusbar/a$d;

.field private p:Landroid/hardware/display/DisplayManager;

.field private q:Landroid/view/Display;

.field private r:Landroid/graphics/Point;

.field private s:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/superpower/statusbar/a;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/superpower/statusbar/a;->k:Z

    iput-boolean v0, p0, Lcom/miui/superpower/statusbar/a;->l:Z

    iput-boolean v0, p0, Lcom/miui/superpower/statusbar/a;->m:Z

    new-instance v0, Lcom/miui/superpower/statusbar/a$b;

    invoke-direct {v0, p0}, Lcom/miui/superpower/statusbar/a$b;-><init>(Lcom/miui/superpower/statusbar/a;)V

    iput-object v0, p0, Lcom/miui/superpower/statusbar/a;->s:Landroid/hardware/display/DisplayManager$DisplayListener;

    const-string v0, "typefrom_status_bar_expansion"

    iput-object v0, p0, Lcom/miui/superpower/statusbar/a;->t:Ljava/lang/String;

    new-instance v0, Lcom/miui/superpower/statusbar/a$c;

    invoke-direct {v0, p0}, Lcom/miui/superpower/statusbar/a$c;-><init>(Lcom/miui/superpower/statusbar/a;)V

    iput-object v0, p0, Lcom/miui/superpower/statusbar/a;->u:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/miui/superpower/statusbar/a;->a:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/superpower/statusbar/a;->b:Landroid/view/WindowManager;

    new-instance v0, Lcom/miui/superpower/statusbar/a$e;

    invoke-direct {v0, p0, p1}, Lcom/miui/superpower/statusbar/a$e;-><init>(Lcom/miui/superpower/statusbar/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/superpower/statusbar/a;->n:Lcom/miui/superpower/statusbar/a$e;

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/a;->w()Lcom/miui/superpower/statusbar/a$d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/superpower/statusbar/a;->o:Lcom/miui/superpower/statusbar/a$d;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/miui/superpower/statusbar/a;->p:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->b:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/superpower/statusbar/a;->q:Landroid/view/Display;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/miui/superpower/statusbar/a;->r:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/miui/superpower/statusbar/a;->q:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->r:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/miui/superpower/statusbar/a;->g:I

    invoke-static {p1}, Lpg/i;->o(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/superpower/statusbar/a;->h:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071bfd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/superpower/statusbar/a;->i:I

    return-void
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/superpower/statusbar/a;->m:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/superpower/statusbar/a;->m:Z

    iget-object v1, p0, Lcom/miui/superpower/statusbar/a;->b:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->p:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/miui/superpower/statusbar/a;->s:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    return-void
.end method

.method private B(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/superpower/statusbar/a;->k:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/miui/superpower/statusbar/a;->k:Z

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->f:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/miui/superpower/statusbar/a;->g:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/miui/superpower/statusbar/a;->h:I

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz p1, :cond_2

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x9

    goto :goto_1

    :cond_2
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x8

    :goto_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/miui/superpower/statusbar/a;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/superpower/statusbar/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lpg/i;->B(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/a;->w()Lcom/miui/superpower/statusbar/a$d;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->u:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/miui/superpower/statusbar/a;->w()Lcom/miui/superpower/statusbar/a$d;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->u:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private C(Z)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setForceDarkAllowed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SuperPowerSaveManager"

    const-string v1, "reflect error when setForceDark"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private E(Landroid/content/Context;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.systemui.fsgesture"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "typeFrom"

    const-string v2, "typefrom_status_bar_expansion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isEnter"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p2, 0x4000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private F()V
    .locals 11

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->d:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/superpower/statusbar/a;->i:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-object v2, p0, Lcom/miui/superpower/statusbar/a;->q:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/miui/superpower/statusbar/a;->f:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/miui/superpower/statusbar/a;->r:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    move v7, v1

    move v1, v5

    move v6, v1

    move v8, v6

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/miui/superpower/statusbar/a;->r:Landroid/graphics/Point;

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-int/2addr v1, v3

    iget v6, p0, Lcom/miui/superpower/statusbar/a;->i:I

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/miui/superpower/statusbar/a;->f:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, p0, Lcom/miui/superpower/statusbar/a;->r:Landroid/graphics/Point;

    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    move v8, v4

    move v7, v6

    move v6, v1

    :goto_1
    iget-object v9, p0, Lcom/miui/superpower/statusbar/a;->a:Landroid/content/Context;

    invoke-static {v9}, Lpg/i;->u(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/miui/superpower/statusbar/a;->a:Landroid/content/Context;

    invoke-static {v9}, Lpg/i;->B(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_6

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1b

    if-le v9, v10, :cond_4

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/miui/superpower/statusbar/a;->f:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/miui/superpower/statusbar/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lpg/i;->l(Landroid/content/Context;)I

    move-result v3

    goto :goto_2

    :cond_3
    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/miui/superpower/statusbar/a;->f:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/miui/superpower/statusbar/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lpg/i;->l(Landroid/content/Context;)I

    move-result v3

    goto :goto_3

    :cond_4
    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/miui/superpower/statusbar/a;->f:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/miui/superpower/statusbar/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lpg/i;->l(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/superpower/statusbar/a;->a:Landroid/content/Context;

    invoke-static {v4}, Lpg/i;->o(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    :goto_2
    neg-int v3, v3

    :goto_3
    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_4

    :cond_5
    if-ne v2, v4, :cond_6

    iget-object v2, p0, Lcom/miui/superpower/statusbar/a;->f:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/miui/superpower/statusbar/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lpg/i;->l(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/superpower/statusbar/a;->a:Landroid/content/Context;

    invoke-static {v4}, Lpg/i;->o(Landroid/content/Context;)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/miui/superpower/statusbar/a;->f:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_4
    iget-object v2, p0, Lcom/miui/superpower/statusbar/a;->b:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    iget-object v4, p0, Lcom/miui/superpower/statusbar/a;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v8, :cond_7

    iget v0, p0, Lcom/miui/superpower/statusbar/a;->i:I

    div-int/lit8 v0, v0, 0x2

    :cond_7
    iget-object v2, p0, Lcom/miui/superpower/statusbar/a;->d:Landroid/view/View;

    invoke-virtual {v2, v1, v7, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/miui/superpower/statusbar/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/superpower/statusbar/a;->B(Z)V

    return-void
.end method

.method static synthetic b(Lcom/miui/superpower/statusbar/a;)Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/statusbar/a;->e:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/superpower/statusbar/a;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/superpower/statusbar/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/superpower/statusbar/a;->m:Z

    return p0
.end method

.method static synthetic e(Lcom/miui/superpower/statusbar/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/superpower/statusbar/a;->j:Z

    return p0
.end method

.method static synthetic f(Lcom/miui/superpower/statusbar/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/a;->y()V

    return-void
.end method

.method static synthetic g(Lcom/miui/superpower/statusbar/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/a;->z()V

    return-void
.end method

.method static synthetic h(Lcom/miui/superpower/statusbar/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/statusbar/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/miui/superpower/statusbar/a;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/superpower/statusbar/a;->E(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic j(Lcom/miui/superpower/statusbar/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/a;->F()V

    return-void
.end method

.method static synthetic k(Lcom/miui/superpower/statusbar/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/a;->s()V

    return-void
.end method

.method static synthetic l(Lcom/miui/superpower/statusbar/a;)Lcom/miui/superpower/statusbar/a$e;
    .locals 0

    iget-object p0, p0, Lcom/miui/superpower/statusbar/a;->n:Lcom/miui/superpower/statusbar/a$e;

    return-object p0
.end method

.method static synthetic m(Lcom/miui/superpower/statusbar/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/superpower/statusbar/a;->k:Z

    return p0
.end method

.method static synthetic n(Lcom/miui/superpower/statusbar/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/superpower/statusbar/a;->k:Z

    return p1
.end method

.method static synthetic o(Lcom/miui/superpower/statusbar/a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/superpower/statusbar/a;->l:Z

    return p0
.end method

.method static synthetic p(Lcom/miui/superpower/statusbar/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/superpower/statusbar/a;->l:Z

    return p1
.end method

.method static synthetic q(Lcom/miui/superpower/statusbar/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/a;->A()V

    return-void
.end method

.method static synthetic r(Lcom/miui/superpower/statusbar/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/superpower/statusbar/a;->u()V

    return-void
.end method

.method private s()V
    .locals 9

    iget-boolean v0, p0, Lcom/miui/superpower/statusbar/a;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/miui/superpower/statusbar/a;->h:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x7e1

    const v7, 0x840248

    const/4 v8, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/miui/superpower/statusbar/a;->f:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "SuperPowerStatusbar"

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-le v0, v1, :cond_1

    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES"

    invoke-static {v0, v1}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/miui/superpower/statusbar/a;->f:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "layoutInDisplayCutoutMode"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lbh/f;->p(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->a:Landroid/content/Context;

    const v1, 0x7f0e04e5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    invoke-direct {p0, v2}, Lcom/miui/superpower/statusbar/a;->C(Z)V

    :cond_2
    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    const v1, 0x7f0b0dd2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    iput-object v0, p0, Lcom/miui/superpower/statusbar/a;->e:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    const v1, 0x7f0b0dd1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/superpower/statusbar/a;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    const v1, 0x7f0b0c02

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/miui/superpower/statusbar/a;->h:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/superpower/statusbar/a;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    iget-boolean v1, p0, Lcom/miui/superpower/statusbar/a;->j:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->e:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    iget v1, p0, Lcom/miui/superpower/statusbar/a;->h:I

    invoke-virtual {v0, v1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->setPanelHeight(I)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->e:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    new-instance v1, Lcom/miui/superpower/statusbar/a$a;

    invoke-direct {v1, p0}, Lcom/miui/superpower/statusbar/a$a;-><init>(Lcom/miui/superpower/statusbar/a;)V

    invoke-virtual {v0, v1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->m(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$e;)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->p:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/miui/superpower/statusbar/a;->s:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/miui/superpower/statusbar/a;->o:Lcom/miui/superpower/statusbar/a$d;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/superpower/statusbar/a;->m:Z

    return-void
.end method

.method private u()V
    .locals 1

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->e:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->n()V

    :cond_0
    return-void
.end method

.method public static x(Landroid/content/Context;)Lcom/miui/superpower/statusbar/a;
    .locals 2

    sget-object v0, Lcom/miui/superpower/statusbar/a;->v:Lcom/miui/superpower/statusbar/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/superpower/statusbar/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/superpower/statusbar/a;->v:Lcom/miui/superpower/statusbar/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/superpower/statusbar/a;

    invoke-direct {v1, p0}, Lcom/miui/superpower/statusbar/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/superpower/statusbar/a;->v:Lcom/miui/superpower/statusbar/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/miui/superpower/statusbar/a;->v:Lcom/miui/superpower/statusbar/a;

    return-object p0
.end method

.method private y()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/superpower/statusbar/a;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/superpower/statusbar/a;->l:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/superpower/statusbar/a;->B(Z)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->e:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;

    sget-object v1, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;->b:Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;

    invoke-virtual {v0, v1}, Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout;->setPanelState(Lcom/miui/superpower/statusbar/panel/NotificationPanelLayout$f;)V

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private z()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/superpower/statusbar/a;->l:Z

    iget-object v1, p0, Lcom/miui/superpower/statusbar/a;->c:Landroid/view/View;

    iget-boolean v2, p0, Lcom/miui/superpower/statusbar/a;->j:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public D(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->o:Lcom/miui/superpower/statusbar/a$d;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean p1, p0, Lcom/miui/superpower/statusbar/a;->j:Z

    iget-object p1, p0, Lcom/miui/superpower/statusbar/a;->o:Lcom/miui/superpower/statusbar/a$d;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public t(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/superpower/statusbar/a;->j:Z

    iget-object p1, p0, Lcom/miui/superpower/statusbar/a;->o:Lcom/miui/superpower/statusbar/a$d;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lcom/miui/superpower/statusbar/a;->o:Lcom/miui/superpower/statusbar/a$d;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public w()Lcom/miui/superpower/statusbar/a$d;
    .locals 1

    invoke-static {p0}, Lcom/miui/superpower/statusbar/a$d;->a(Lcom/miui/superpower/statusbar/a;)Lcom/miui/superpower/statusbar/a$d;

    move-result-object v0

    return-object v0
.end method
