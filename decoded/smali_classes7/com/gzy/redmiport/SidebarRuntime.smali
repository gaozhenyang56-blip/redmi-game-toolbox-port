.class public final Lcom/gzy/redmiport/SidebarRuntime;
.super Ljava/lang/Object;
.source "SidebarRuntime.java"

# interfaces
.implements Lcom/gzy/redmiport/ForegroundMonitor$Listener;


# static fields
.field private static final SERVICE:Ljava/lang/String; = "com.miui.gamebooster.service.DockWindowManagerService"

.field private static final STATUS:Ljava/lang/String; = "port_sidebar_status"

.field private static active:Lcom/gzy/redmiport/SidebarRuntime;


# instance fields
.field private closed:Z

.field private controller:Ljava/lang/Object;

.field private lastGood:J

.field private lastStatus:Ljava/lang/String;

.field private layout:Ljava/lang/String;

.field private final main:Landroid/os/Handler;

.field private mode:Ljava/lang/Object;

.field private final service:Landroid/app/Service;

.field private shown:Ljava/lang/String;

.field private final watchdog:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/app/Service;)V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->shown:Ljava/lang/String;

    iput-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->layout:Ljava/lang/String;

    iput-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->lastStatus:Ljava/lang/String;

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->main:Landroid/os/Handler;

    .line 23
    new-instance v0, Lcom/gzy/redmiport/SidebarRuntime$1;

    invoke-direct {v0, p0}, Lcom/gzy/redmiport/SidebarRuntime$1;-><init>(Lcom/gzy/redmiport/SidebarRuntime;)V

    iput-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->watchdog:Ljava/lang/Runnable;

    .line 30
    iput-object p1, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    return-void
.end method

.method static synthetic access$0(Lcom/gzy/redmiport/SidebarRuntime;)Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/gzy/redmiport/SidebarRuntime;->closed:Z

    return p0
.end method

.method static synthetic access$1(Lcom/gzy/redmiport/SidebarRuntime;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->lastGood:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/gzy/redmiport/SidebarRuntime;Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/gzy/redmiport/SidebarRuntime;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$4(Lcom/gzy/redmiport/SidebarRuntime;)Landroid/os/Handler;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/gzy/redmiport/SidebarRuntime;->main:Landroid/os/Handler;

    return-object p0
.end method

.method private static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static configurationChanged(Landroid/app/Service;)V
    .registers 3

    .line 77
    sget-object v0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    iget-object v0, v0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    if-eq v0, p0, :cond_b

    goto :goto_1c

    .line 78
    :cond_b
    :try_start_b
    sget-object p0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    const-string v0, "\u5c4f\u5e55\u914d\u7f6e\u53d8\u5316\uff0c\u7b49\u5f85\u91cd\u65b0\u521b\u5efa\u767d\u6761"

    invoke-direct {p0, v0}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_1b

    .line 79
    :catchall_13
    move-exception p0

    sget-object v0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    const-string v1, "Sidebar configuration"

    invoke-direct {v0, v1, p0}, Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :goto_1b
    return-void

    .line 77
    :cond_1c
    :goto_1c
    return-void
.end method

.method public static create(Landroid/app/Service;)V
    .registers 7

    .line 44
    const-string v0, "\u6e38\u620f\u5de5\u5177\u7bb1"

    const-string v1, "redmi-sidebar"

    new-instance v2, Lcom/gzy/redmiport/SidebarRuntime;

    invoke-direct {v2, p0}, Lcom/gzy/redmiport/SidebarRuntime;-><init>(Landroid/app/Service;)V

    sput-object v2, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    .line 46
    :try_start_b
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 47
    new-instance v4, Landroid/app/NotificationChannel;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v0, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 48
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/gzy/redmiport/ShizukuSettingsActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const/4 v4, 0x0

    const/high16 v5, 0xc000000

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 50
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    const v1, 0x1080042

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 52
    const-string v1, "\u76d1\u6d4b\u5df2\u6dfb\u52a0\u7684\u6e38\u620f\uff0c\u70b9\u51fb\u67e5\u770b\u4fa7\u680f\u72b6\u6001"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 50
    const/16 v1, 0x5dd

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 53
    const-string v0, "o7.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/gzy/redmiport/SidebarRuntime;->mode:Ljava/lang/Object;

    .line 54
    const-string v0, "f"

    iget-object v1, v2, Lcom/gzy/redmiport/SidebarRuntime;->mode:Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v0, "e"

    iget-object v1, v2, Lcom/gzy/redmiport/SidebarRuntime;->main:Landroid/os/Handler;

    invoke-static {p0, v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string v0, "com.miui.gamebooster.service.DockWindowManagerService$GameBoosterWindowBinder"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    const-string v1, "a"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    const-string v0, "m"

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    const-string v0, "s8.h"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Landroid/os/Handler;

    filled-new-array {v1, v3}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v2, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    .line 60
    const-string v0, "b"

    iget-object v1, v2, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-string v0, "\u4fa7\u680f\u670d\u52a1\u8fd0\u884c\u4e2d\uff0c\u7b49\u5f85\u524d\u53f0\u6e38\u620f"

    invoke-direct {v2, v0}, Lcom/gzy/redmiport/SidebarRuntime;->status(Ljava/lang/String;)V

    .line 62
    invoke-static {v2}, Lcom/gzy/redmiport/ForegroundMonitor;->start(Ljava/lang/Object;)V

    .line 63
    iget-object v0, v2, Lcom/gzy/redmiport/SidebarRuntime;->main:Landroid/os/Handler;

    iget-object v1, v2, Lcom/gzy/redmiport/SidebarRuntime;->watchdog:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_dd
    .catchall {:try_start_b .. :try_end_dd} :catchall_de

    .line 64
    goto :goto_e7

    :catchall_de
    move-exception v0

    const-string v1, "Initialize original sidebar"

    invoke-direct {v2, v1, v0}, Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 65
    :goto_e7
    return-void
.end method

.method public static destroy(Landroid/app/Service;)V
    .registers 5

    .line 67
    sget-object v0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    .line 68
    if-eqz v0, :cond_29

    iget-object v1, v0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    if-eq v1, p0, :cond_9

    goto :goto_29

    .line 69
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gzy/redmiport/SidebarRuntime;->closed:Z

    invoke-static {v0}, Lcom/gzy/redmiport/ForegroundMonitor;->stop(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/gzy/redmiport/SidebarRuntime;->main:Landroid/os/Handler;

    iget-object v3, v0, Lcom/gzy/redmiport/SidebarRuntime;->watchdog:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 70
    :try_start_16
    const-string v2, "\u4fa7\u680f\u670d\u52a1\u5df2\u505c\u6b62"

    invoke-direct {v0, v2}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1c

    goto :goto_22

    :catchall_1c
    move-exception v2

    const-string v3, "Stop original sidebar"

    invoke-direct {v0, v3, v2}, Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :goto_22
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    const/4 p0, 0x0

    sput-object p0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    .line 72
    return-void

    .line 68
    :cond_29
    :goto_29
    return-void
.end method

.method public static enabled()Z
    .registers 2

    .line 31
    const-string v0, "pref_open_game_booster"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortPreferences;->bool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 32
    const-string v0, "pref_gamebox_turbo"

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortPreferences;->bool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "pref_gamebooster_slip_status"

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortPreferences;->bool(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 31
    return v1

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public static enter(Landroid/app/Service;Ljava/lang/String;I)V
    .registers 4

    .line 74
    sget-object v0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    iget-object v0, v0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    if-ne v0, p0, :cond_f

    sget-object p0, Lcom/gzy/redmiport/SidebarRuntime;->active:Lcom/gzy/redmiport/SidebarRuntime;

    invoke-virtual {p0, p1, p2}, Lcom/gzy/redmiport/SidebarRuntime;->onForegroundPackage(Ljava/lang/String;I)V

    .line 75
    :cond_f
    return-void
.end method

.method private failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 145
    nop

    :goto_1
    instance-of v0, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_c

    goto :goto_11

    :cond_c
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_1

    .line 146
    :cond_11
    :goto_11
    invoke-static {p1, p2}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u4fa7\u680f\u5931\u8d25\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\uff1b\u8bf7\u67e5\u770b\u5d29\u6e83\u65e5\u5fd7"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->status(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method private static get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static handleLayout(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    .line 168
    const/16 v0, 0x7f6

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 169
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 170
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x28

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 171
    invoke-static {p0}, Lcom/gzy/redmiport/SidebarRuntime;->inset(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p0}, Lcom/gzy/redmiport/SidebarRuntime;->y(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 172
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 173
    return-void
.end method

.method private hide(Ljava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 141
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 118
    if-eqz v0, :cond_e0

    .line 119
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Class;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "z"

    invoke-static {v0, v6, v4, v5}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v4, "n"

    invoke-static {v0, v4}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Class;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "O0"

    invoke-static {v0, v8, v5, v7}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Class;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "M0"

    invoke-static {v0, v8, v5, v7}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Class;

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "Z"

    invoke-static {v0, v8, v5, v7}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/view/WindowManager;

    .line 124
    const-string v7, "d"

    const-string v8, "e"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v9

    move v10, v2

    :goto_52
    const-string v0, "o"

    const/4 v11, 0x2

    if-lt v10, v11, :cond_7c

    .line 137
    iget-object v5, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v0, v7, v4}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v0, v8, v4}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v5, "k"

    invoke-static {v0, v5, v4}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v5, "l"

    invoke-static {v0, v5, v4}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v4, "m"

    invoke-static {v0, v4, v3}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e0

    .line 124
    :cond_7c
    aget-object v12, v9, v10

    .line 125
    iget-object v13, v1, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v13, v12}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_87

    goto :goto_c2

    .line 127
    :cond_87
    :try_start_87
    const-string v13, "S"

    new-array v14, v2, [Ljava/lang/Class;

    new-array v15, v2, [Ljava/lang/Object;

    invoke-static {v12, v13, v14, v15}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v13, "A"

    new-array v14, v2, [Ljava/lang/Class;

    new-array v15, v2, [Ljava/lang/Object;

    invoke-static {v12, v13, v14, v15}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 129
    if-eqz v13, :cond_a3

    new-array v14, v2, [Ljava/lang/Class;

    new-array v15, v2, [Ljava/lang/Object;

    invoke-static {v13, v0, v14, v15}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_a3
    const-string v0, "T"

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v13}, [Ljava/lang/Class;

    move-result-object v13

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v12, v0, v13, v14}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b2} :catch_b3

    .line 131
    goto :goto_b9

    :catch_b3
    move-exception v0

    const-string v13, "Sidebar panel cleanup"

    invoke-static {v13, v0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :goto_b9
    const-string v0, "u"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    move v13, v2

    :goto_c0
    if-lt v13, v11, :cond_c5

    .line 124
    :goto_c2
    add-int/lit8 v10, v10, 0x1

    goto :goto_52

    .line 132
    :cond_c5
    aget-object v14, v0, v13

    .line 133
    new-array v15, v2, [Ljava/lang/Class;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v12, v14, v15, v4}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 134
    if-eqz v4, :cond_dc

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v14

    if-eqz v14, :cond_dc

    invoke-interface {v5, v4}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 132
    :cond_dc
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_c0

    .line 140
    :cond_e0
    :goto_e0
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->mode:Ljava/lang/Object;

    if-eqz v0, :cond_f9

    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->mode:Ljava/lang/Object;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "a"

    invoke-static {v0, v5, v4, v2}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_f9
    iget-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    const-string v2, "c"

    invoke-static {v0, v2, v3}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, ""

    iput-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->shown:Ljava/lang/String;

    iput-object v0, v1, Lcom/gzy/redmiport/SidebarRuntime;->layout:Ljava/lang/String;

    .line 142
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10f

    invoke-direct/range {p0 .. p1}, Lcom/gzy/redmiport/SidebarRuntime;->status(Ljava/lang/String;)V

    .line 143
    :cond_10f
    return-void
.end method

.method private static inset(Landroid/content/Context;)I
    .registers 3

    .line 175
    const-string v0, "port_sidebar_inset"

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortPreferences;->number(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0, p0}, Lcom/gzy/redmiport/SidebarGeometry;->inset(IF)I

    move-result p0

    return p0
.end method

.method public static isLeft(Landroid/content/Context;Z)Z
    .registers 4

    .line 159
    const-string p0, "port_sidebar_side"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gzy/redmiport/PortPreferences;->number(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_c

    move p0, v1

    goto :goto_d

    :cond_c
    move p0, v0

    :goto_d
    if-eqz p1, :cond_11

    move v0, p0

    goto :goto_15

    :cond_11
    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    return v0
.end method

.method public static panelLayout(Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    .line 174
    invoke-static {p0}, Lcom/gzy/redmiport/SidebarRuntime;->inset(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {p0}, Lcom/gzy/redmiport/SidebarRuntime;->y(Landroid/content/Context;)I

    move-result p0

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 5

    .line 35
    const-string v0, "port_sidebar_status"

    :try_start_2
    invoke-static {}, Lcom/gzy/redmiport/SidebarRuntime;->enabled()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-static {p0}, Lcom/gzy/redmiport/GameStore;->hasGames(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_34

    .line 36
    :cond_f
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string p0, "\u8bf7\u5141\u8bb8\u60ac\u6d6e\u7a97\u6743\u9650"

    invoke-static {v0, p0}, Lcom/gzy/redmiport/PortPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_1b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.gamebooster.service.DockWindowManagerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.gzy.redmiport.START_SIDEBAR"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 38
    invoke-virtual {p0, v1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_35

    .line 39
    goto :goto_57

    .line 35
    :cond_34
    :goto_34
    return-void

    .line 39
    :catchall_35
    move-exception p0

    const-string v1, "Start original sidebar service"

    invoke-static {v1, p0}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    :try_start_3b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4fa7\u680f\u670d\u52a1\u542f\u52a8\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/gzy/redmiport/PortPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception p0

    .line 42
    :goto_57
    return-void
.end method

.method public static status()Ljava/lang/String;
    .registers 2

    .line 155
    :try_start_0
    const-string v0, "port_sidebar_status"

    const-string v1, "\u4fa7\u680f\u670d\u52a1\u5c1a\u672a\u542f\u52a8\uff1b\u4ece\u6e38\u620f\u7a7a\u95f4\u542f\u52a8\u5df2\u6dfb\u52a0\u6e38\u620f"

    invoke-static {v0, v1}, Lcom/gzy/redmiport/PortPreferences;->text(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 156
    :catch_9
    move-exception v0

    const-string v0, "\u4fa7\u680f\u72b6\u6001\u6682\u4e0d\u53ef\u8bfb\u53d6"

    return-object v0
.end method

.method private status(Ljava/lang/String;)V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->lastStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 151
    :cond_9
    :try_start_9
    const-string v0, "port_sidebar_status"

    invoke-static {v0, p1}, Lcom/gzy/redmiport/PortPreferences;->put(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gzy/redmiport/SidebarRuntime;->lastStatus:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_17

    .line 152
    :catch_11
    move-exception p1

    const-string v0, "Save sidebar status"

    invoke-static {v0, p1}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    :goto_17
    return-void
.end method

.method public static y(Landroid/content/Context;)I
    .registers 4

    .line 162
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 163
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f071a83

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    .line 165
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const-string v1, "port_sidebar_height"

    const/16 v2, 0x19

    invoke-static {v1, v2}, Lcom/gzy/redmiport/PortPreferences;->number(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/gzy/redmiport/SidebarGeometry;->y(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onForegroundPackage(Ljava/lang/String;I)V
    .registers 15

    .line 82
    const-string v0, "d"

    const-string v1, "i"

    const-string v2, "h"

    const-string v3, ":"

    const-string v4, ""

    iget-boolean v5, p0, Lcom/gzy/redmiport/SidebarRuntime;->closed:Z

    if-eqz v5, :cond_f

    return-void

    .line 83
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/gzy/redmiport/SidebarRuntime;->lastGood:J

    .line 85
    :try_start_15
    iget-object v5, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-static {v5, p1, p2}, Lcom/gzy/redmiport/GameStore;->selected(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    .line 86
    iget-object v6, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/KeyguardManager;

    .line 87
    invoke-static {}, Lcom/gzy/redmiport/SidebarRuntime;->enabled()Z

    move-result v7

    if-eqz v7, :cond_17a

    iget-object v7, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-static {v7}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_17a

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    if-nez v7, :cond_17a

    if-nez v5, :cond_3d

    goto/16 :goto_17a

    .line 91
    :cond_3d
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "port_sidebar_side"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/gzy/redmiport/PortPreferences;->number(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "port_sidebar_inset"

    const/16 v8, 0x18

    invoke-static {v6, v8}, Lcom/gzy/redmiport/PortPreferences;->number(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "port_sidebar_height"

    const/16 v6, 0x19

    invoke-static {v5, v6}, Lcom/gzy/redmiport/PortPreferences;->number(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    iget-object v5, p0, Lcom/gzy/redmiport/SidebarRuntime;->shown:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_77
    .catchall {:try_start_15 .. :try_end_77} :catchall_1aa

    const-string v6, "\uff1b\u53ef\u4ece\u767d\u6761\u5411\u5c4f\u5e55\u5185\u6ed1\u52a8"

    const-string v8, "\u767d\u6761\u5df2\u521b\u5efa\uff1a"

    const-string v9, "o"

    if-eqz v5, :cond_aa

    :try_start_7f
    iget-object v5, p0, Lcom/gzy/redmiport/SidebarRuntime;->layout:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v10, v9}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->status(Ljava/lang/String;)V

    return-void

    .line 93
    :cond_aa
    invoke-direct {p0, v4}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V

    .line 94
    iget-object v5, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-static {v5, v2, p1}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v5, v1, p2}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    const-string v5, "c"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {p2, v5, v11}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p2, v0, v5}, Lcom/gzy/redmiport/SidebarRuntime;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->mode:Ljava/lang/Object;

    const-string v5, "a"

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {p2, v5, v11, v10}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v5, "x1"

    new-array v10, v7, [Ljava/lang/Class;

    new-array v11, v7, [Ljava/lang/Object;

    invoke-static {p2, v5, v10, v11}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string p2, "s8.x"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-class v5, Landroid/content/Context;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iget-object v2, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-virtual {v2}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 99
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const v5, 0x7f0e020d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v1, v2, v5}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->resetFps()V

    .line 101
    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    const-string v1, "i1"

    new-array v2, v7, [Ljava/lang/Class;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p2, v1, v2, v5}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {v1, v9}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_172

    .line 103
    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 104
    const-string v0, "w"

    new-array v1, v7, [Ljava/lang/Class;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p2, v0, v1, v2}, Lcom/gzy/redmiport/SidebarRuntime;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 105
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 106
    iput-object p1, p0, Lcom/gzy/redmiport/SidebarRuntime;->shown:Ljava/lang/String;

    iput-object v3, p0, Lcom/gzy/redmiport/SidebarRuntime;->layout:Ljava/lang/String;

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->status(Ljava/lang/String;)V

    .line 108
    goto :goto_1ba

    .line 102
    :cond_172
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Original sidebar declined window creation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_17a
    :goto_17a
    invoke-static {}, Lcom/gzy/redmiport/SidebarRuntime;->enabled()Z

    move-result p2

    if-nez p2, :cond_183

    const-string p1, "\u539f\u8bbe\u7f6e\u5df2\u5173\u95ed\u6e38\u620f\u5de5\u5177\u7bb1\u6216\u6ed1\u52a8\u5165\u53e3"

    goto :goto_1a6

    :cond_183
    iget-object p2, p0, Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;

    invoke-static {p2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_18e

    const-string p1, "\u60ac\u6d6e\u7a97\u6743\u9650\u672a\u5141\u8bb8"

    goto :goto_1a6

    :cond_18e
    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p2

    if-eqz p2, :cond_197

    const-string p1, "\u9501\u5c4f\u65f6\u9690\u85cf\u767d\u6761"

    goto :goto_1a6

    :cond_197
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u524d\u53f0\u5e94\u7528\u672a\u6dfb\u52a0\u5230\u6e38\u620f\u7a7a\u95f4\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1a6
    invoke-direct {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V
    :try_end_1a9
    .catchall {:try_start_7f .. :try_end_1a9} :catchall_1aa

    .line 89
    return-void

    .line 108
    :catchall_1aa
    move-exception p1

    .line 109
    :try_start_1ab
    invoke-direct {p0, v4}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V
    :try_end_1ae
    .catchall {:try_start_1ab .. :try_end_1ae} :catchall_1af

    goto :goto_1b5

    :catchall_1af
    move-exception p2

    const-string v0, "Sidebar partial-window cleanup"

    invoke-static {v0, p2}, Lcom/gzy/redmidiag/CrashReporter;->record(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :goto_1b5
    const-string p2, "Show original sidebar"

    invoke-direct {p0, p2, p1}, Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    :goto_1ba
    return-void
.end method

.method public onUnavailable(Ljava/lang/String;)V
    .registers 4

    .line 114
    iget-boolean v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 115
    :cond_5
    :try_start_5
    invoke-direct {p0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/gzy/redmiport/SidebarRuntime;->lastGood:J
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    goto :goto_13

    :catchall_d
    move-exception p1

    const-string v0, "Hide unavailable sidebar"

    invoke-direct {p0, v0, p1}, Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :goto_13
    return-void
.end method
