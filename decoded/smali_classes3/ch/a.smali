.class public Lch/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/a$d;
    }
.end annotation


# static fields
.field private static volatile g:Lch/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/app/Dialog;

.field private c:Ljava/lang/String;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;

.field private final f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lch/a$a;

    invoke-direct {v0}, Lch/a$a;-><init>()V

    sput-object v0, Lch/a;->h:Ljava/util/Set;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lch/a;->i:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lch/a$c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lch/a$c;-><init>(Lch/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lch/a;->f:Landroid/os/Handler;

    iput-object p1, p0, Lch/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lch/a;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lch/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic b(Lch/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lch/a;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lch/a;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    iput-object p1, p0, Lch/a;->b:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic d(Lch/a;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lch/a;->p(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lch/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lch/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lch/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lch/a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lch/a;)V
    .locals 0

    invoke-direct {p0}, Lch/a;->v()V

    return-void
.end method

.method static synthetic h(Lch/a;)V
    .locals 0

    invoke-direct {p0}, Lch/a;->m()V

    return-void
.end method

.method static synthetic i()Ljava/util/concurrent/Executor;
    .locals 1

    sget-object v0, Lch/a;->i:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic j(Lch/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lch/a;->s(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lch/a;)V
    .locals 0

    invoke-direct {p0}, Lch/a;->r()V

    return-void
.end method

.method static synthetic l(Lch/a;)V
    .locals 0

    invoke-direct {p0}, Lch/a;->x()V

    return-void
.end method

.method private m()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lch/a;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/a;->b:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public static n(Landroid/content/Context;)Lch/a;
    .locals 2

    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_2

    sget-object v0, Lch/a;->g:Lch/a;

    if-nez v0, :cond_1

    const-class v0, Lch/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lch/a;->g:Lch/a;

    if-nez v1, :cond_0

    new-instance v1, Lch/a;

    invoke-direct {v1, p0}, Lch/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lch/a;->g:Lch/a;

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
    sget-object p0, Lch/a;->g:Lch/a;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must use Application context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private p(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lch/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    const-class v1, Landroid/content/pm/ApplicationInfo;

    const-string v2, "primaryCpuAbi"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "armeabi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    const-string v1, "AbiCompatibilityMonitorService"

    const-string v2, "Error occurs when detecting abi: "

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v0
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lch/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "compatibility_notice_shown_applications"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object v1, p0, Lch/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private r()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lch/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "compatibility_no_reminding_anymore"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private s(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lch/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lch/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lch/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lch/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "compatibility_notice_shown_applications"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "markReminded: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lch/a;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AbiCompatibilityMonitorService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private t()V
    .locals 7

    const-string v0, "AbiCompatibilityMonitorService"

    :try_start_0
    new-instance v1, Lch/a$b;

    invoke-direct {v1, p0}, Lch/a$b;-><init>(Lch/a;)V

    iput-object v1, p0, Lch/a;->e:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;

    const-string v1, "miui.process.ProcessManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "registerForegroundInfoListener"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/gzy/redmiport/compat/process/IForegroundInfoListener;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lch/a;->e:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;

    aput-object v5, v3, v6

    invoke-static {v1, v2, v4, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "registerProcessChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static u(Landroid/content/Context;)Z
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lch/a;->w()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "compatibility_no_reminding_anymore"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private v()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    new-instance v0, Lch/a$d;

    iget-object v1, p0, Lch/a;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lch/a$d;-><init>(Lch/a;Landroid/content/Context;)V

    iput-object v0, p0, Lch/a;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static w()Z
    .locals 2

    sget-object v0, Lch/a;->h:Ljava/util/Set;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private x()V
    .locals 7

    const-string v0, "AbiCompatibilityMonitorService"

    :try_start_0
    const-string v1, "miui.process.ProcessManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "unregisterForegroundInfoListener"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/gzy/redmiport/compat/process/IForegroundInfoListener;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lch/a;->e:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;

    aput-object v5, v3, v6

    invoke-static {v1, v2, v4, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lch/a;->e:Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;

    const-string v1, "unRegisterForegroundInfoListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public o()V
    .locals 2

    invoke-direct {p0}, Lch/a;->t()V

    invoke-direct {p0}, Lch/a;->q()V

    const-string v0, "AbiCompatibilityMonitorService"

    const-string v1, "Compatibility monitor service started..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
