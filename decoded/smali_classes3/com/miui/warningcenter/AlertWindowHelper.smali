.class public final Lcom/miui/warningcenter/AlertWindowHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/AlertWindowHelper$TaskToClearFlag;
    }
.end annotation


# instance fields
.field private final host:Landroidx/activity/ComponentActivity;

.field public final scheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/miui/warningcenter/AlertWindowHelper;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/miui/warningcenter/AlertWindowHelper;->host:Landroidx/activity/ComponentActivity;

    return-void
.end method

.method public static synthetic a(Landroid/view/Window;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/warningcenter/AlertWindowHelper;->lambda$setWindowBackground$0(Landroid/view/Window;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/warningcenter/AlertWindowHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/AlertWindowHelper;->setWindowFeatures()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/warningcenter/AlertWindowHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/AlertWindowHelper;->setMaxVolume()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/warningcenter/AlertWindowHelper;)Landroidx/activity/ComponentActivity;
    .locals 0

    iget-object p0, p0, Lcom/miui/warningcenter/AlertWindowHelper;->host:Landroidx/activity/ComponentActivity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/warningcenter/AlertWindowHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/warningcenter/AlertWindowHelper;->restoreVolume()V

    return-void
.end method

.method private disableStatusBar()V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/AlertWindowHelper;->host:Landroidx/activity/ComponentActivity;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/warningcenter/AlertWindowHelper;->disableStatusBar(Landroid/content/Context;Z)V

    return-void
.end method

.method private disableStatusBar(Landroid/content/Context;Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/high16 p2, 0x1610000

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "disable"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v0

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private enableStatusBar()V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/AlertWindowHelper;->host:Landroidx/activity/ComponentActivity;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/warningcenter/AlertWindowHelper;->disableStatusBar(Landroid/content/Context;Z)V

    return-void
.end method

.method private static synthetic lambda$setWindowBackground$0(Landroid/view/Window;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x1000000

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private restoreVolume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/AlertWindowHelper;->host:Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->resetVolume(Landroid/content/Context;)V

    return-void
.end method

.method private setMaxVolume()V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/AlertWindowHelper;->host:Landroidx/activity/ComponentActivity;

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/NotificationUtil;->setMaxVolume(Landroid/content/Context;)V

    return-void
.end method

.method private setWindowFeatures()V
    .locals 3

    iget-object v0, p0, Lcom/miui/warningcenter/AlertWindowHelper;->host:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/warningcenter/AlertWindowHelper;->setWindowFeatures(Landroid/view/Window;)V

    new-instance v1, Landroidx/core/view/o3;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroidx/core/view/o3;-><init>(Landroid/view/Window;Landroid/view/View;)V

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/core/view/o3;->a(I)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroidx/core/view/o3;->d(I)V

    return-void
.end method

.method public static setWindowFeatures(Landroid/view/Window;)V
    .locals 4

    const v0, 0x680081

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/miui/warningcenter/AlertWindowHelper$TaskToClearFlag;

    invoke-direct {v1, p0}, Lcom/miui/warningcenter/AlertWindowHelper$TaskToClearFlag;-><init>(Landroid/view/Window;)V

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public delegate(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/AlertWindowHelper;->host:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object v0

    new-instance v1, Lcom/miui/warningcenter/AlertWindowHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/warningcenter/AlertWindowHelper$1;-><init>(Lcom/miui/warningcenter/AlertWindowHelper;Z)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/u;)V

    return-void
.end method

.method public isForeground(Landroid/app/Activity;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    :goto_0
    return v0
.end method

.method public setWindowBackground(Landroid/view/Window;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    invoke-static {}, Lc3/i;->j()Lc3/i;

    move-result-object v0

    new-instance v1, Lcom/miui/warningcenter/a;

    invoke-direct {v1, p1}, Lcom/miui/warningcenter/a;-><init>(Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Lc3/i;->i(Lc3/i$c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060271

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void
.end method
