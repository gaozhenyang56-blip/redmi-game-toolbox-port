.class public Lum/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Z

.field private static c:Z

.field private static d:Z

.field private static e:Z

.field private static f:Z

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Z

.field private static k:Z

.field private static final l:Ljava/util/concurrent/Executor;


# instance fields
.field private a:Lmiui/util/HapticFeedbackUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "performHapticFeedback"

    const-class v1, Ljava/lang/String;

    const-string v2, "HapticFeedbackCompat"

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    sput-object v3, Lum/b;->l:Ljava/util/concurrent/Executor;

    sget v3, Lmiuix/view/PlatformConstants;->VERSION:I

    const-string v4, "performExtHapticFeedback"

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lt v3, v8, :cond_0

    :try_start_0
    invoke-static {}, Lmiui/util/HapticFeedbackUtil;->isSupportLinearMotorVibrate()Z

    move-result v3

    sput-boolean v3, Lum/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    const-string v9, "MIUI Haptic Implementation is not available"

    invoke-static {v2, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v7, Lum/b;->b:Z

    :goto_0
    sget-boolean v3, Lum/b;->b:Z

    if-eqz v3, :cond_0

    :try_start_1
    const-class v3, Lmiui/util/HapticFeedbackUtil;

    const-string v9, "performHapticFeedback"

    new-array v10, v5, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v8

    aput-object v1, v10, v6

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lum/b;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    const-string v9, "Not support haptic with reason"

    invoke-static {v2, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v7, Lum/b;->c:Z

    :goto_1
    :try_start_2
    const-class v3, Lmiui/util/HapticFeedbackUtil;

    const-string v9, "isSupportExtHapticFeedback"

    new-array v10, v8, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lum/b;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    sput-boolean v7, Lum/b;->e:Z

    :goto_2
    :try_start_3
    const-class v3, Lmiui/util/HapticFeedbackUtil;

    const-string v9, "performExtHapticFeedback"

    new-array v10, v6, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v8

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lum/b;->f:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    sput-boolean v7, Lum/b;->f:Z

    :goto_3
    :try_start_4
    const-class v3, Lmiui/util/HapticFeedbackUtil;

    const-string v9, "stop"

    new-array v10, v7, [Ljava/lang/Class;

    invoke-virtual {v3, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lum/b;->g:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    sput-boolean v7, Lum/b;->g:Z

    :goto_4
    :try_start_5
    const-class v3, Lmiui/util/HapticFeedbackUtil;

    new-array v9, v5, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v8

    aput-object v1, v9, v6

    invoke-virtual {v3, v4, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lum/b;->d:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v3

    const-string v9, "Not support ext haptic with reason"

    invoke-static {v2, v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-boolean v7, Lum/b;->d:Z

    :cond_0
    :goto_5
    sget-wide v2, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v9, 0x3ff3333333333333L    # 1.2

    cmpl-double v2, v2, v9

    if-ltz v2, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_1

    :try_start_6
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    new-array v3, v6, [Ljava/lang/Class;

    const-class v9, Landroid/os/VibrationAttributes;

    aput-object v9, v3, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v3, v8

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lum/b;->h:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :try_start_7
    const-class v2, Lmiui/util/HapticFeedbackUtil;

    new-array v3, v5, [Ljava/lang/Class;

    const-class v9, Landroid/os/VibrationAttributes;

    aput-object v9, v3, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v3, v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v3, v6

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lum/b;->i:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    const/4 v2, 0x4

    :try_start_8
    const-class v3, Lmiui/util/HapticFeedbackUtil;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v9, Landroid/os/VibrationAttributes;

    aput-object v9, v4, v7

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v4, v8

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v4, v6

    aput-object v9, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lum/b;->j:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :try_start_9
    const-class v3, Lmiui/util/HapticFeedbackUtil;

    new-array v2, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/VibrationAttributes;

    aput-object v4, v2, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v8

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v6

    aput-object v1, v2, v5

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    sput-boolean v8, Lum/b;->k:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lum/b;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lmiuix/view/PlatformConstants;->VERSION:I

    const-string v1, "HapticFeedbackCompat"

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    const-string p1, "MiuiHapticFeedbackConstants not found or not compatible for LinearVibrator."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lum/b;->b:Z

    if-nez v0, :cond_1

    const-string p1, "linear motor is not supported in this platform."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lmiui/util/HapticFeedbackUtil;

    invoke-direct {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lum/b;->a:Lmiui/util/HapticFeedbackUtil;

    return-void
.end method

.method public static synthetic a(Lum/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lum/b;->b(I)V

    return-void
.end method

.method private synthetic b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lum/b;->c(I)Z

    return-void
.end method


# virtual methods
.method public c(I)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    iget-object v0, p0, Lum/b;->a:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(IZ)Z
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    iget-object v0, p0, Lum/b;->a:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_1

    sget-boolean v1, Lum/b;->f:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(IZ)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lmiui/util/HapticFeedbackUtil;->performExtHapticFeedback(I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public e(I)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    iget-object v0, p0, Lum/b;->a:Lmiui/util/HapticFeedbackUtil;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    sget-object v0, Lum/b;->l:Ljava/util/concurrent/Executor;

    new-instance v1, Lum/a;

    invoke-direct {v1, p0, p1}, Lum/a;-><init>(Lum/b;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lum/b;->c(I)Z

    :goto_1
    return-void
.end method

.method public f(I)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lum/b;->h(Landroid/os/VibrationAttributes;I)Z

    move-result p1

    return p1
.end method

.method public g(II)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lum/b;->i(Landroid/os/VibrationAttributes;II)Z

    move-result p1

    return p1
.end method

.method public h(Landroid/os/VibrationAttributes;I)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lum/b;->j(Landroid/os/VibrationAttributes;IZ)Z

    move-result p1

    return p1
.end method

.method public i(Landroid/os/VibrationAttributes;II)Z
    .locals 6
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    iget-object v0, p0, Lum/b;->a:Lmiui/util/HapticFeedbackUtil;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lmiuix/view/HapticCompat;->e(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :try_start_0
    sget-wide v2, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v4, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    sget-boolean v0, Lum/b;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lum/b;->a:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p1, p2, v1, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;IZI)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lum/b;->a:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p1, p2, v1, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZI)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "HapticFeedbackCompat"

    const-string p3, "Failed to perform haptic!"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public j(Landroid/os/VibrationAttributes;IZ)Z
    .locals 4
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.VIBRATE"
    .end annotation

    iget-object v0, p0, Lum/b;->a:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lmiuix/view/HapticCompat;->e(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :try_start_0
    sget-wide v0, Lmiuix/view/PlatformConstants;->romHapticVersion:D

    const-wide v2, 0x3ff3333333333333L    # 1.2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    sget-boolean v0, Lum/b;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lum/b;->a:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;IZ)Z

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lum/b;->a:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p1, p2, p3}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "HapticFeedbackCompat"

    const-string p3, "Failed to perform haptic!"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public k()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lum/b;->a:Lmiui/util/HapticFeedbackUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil;->release()V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    sget-boolean v0, Lum/b;->b:Z

    return v0
.end method
