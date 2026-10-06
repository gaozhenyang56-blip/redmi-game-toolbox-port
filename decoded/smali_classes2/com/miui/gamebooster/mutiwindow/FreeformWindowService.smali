.class public Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/mutiwindow/FreeformWindowService$FreeformWindowHandlerBinder;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/gamebooster/mutiwindow/a;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Handler;

.field private d:Landroid/os/HandlerThread;

.field private e:Lcom/miui/gamebooster/mutiwindow/FreeformWindowService$FreeformWindowHandlerBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;)Lcom/miui/gamebooster/mutiwindow/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->a:Lcom/miui/gamebooster/mutiwindow/a;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    const-string v0, "FreeformWindowService"

    const-string v1, "startProcessMonitorService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lk6/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lk6/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lj8/s;->f()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startProcessMonitorService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->e:Lcom/miui/gamebooster/mutiwindow/FreeformWindowService$FreeformWindowHandlerBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/mutiwindow/b;->f()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->b:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "freeform_window_bg_service"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->c:Landroid/os/Handler;

    new-instance v1, Lcom/miui/gamebooster/mutiwindow/a;

    invoke-direct {v1, p0, v0}, Lcom/miui/gamebooster/mutiwindow/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->a:Lcom/miui/gamebooster/mutiwindow/a;

    invoke-static {}, Lk6/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->a:Lcom/miui/gamebooster/mutiwindow/a;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/mutiwindow/b;->b(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    :cond_0
    new-instance v0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService$FreeformWindowHandlerBinder;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService$FreeformWindowHandlerBinder;-><init>(Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;)V

    iput-object v0, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->e:Lcom/miui/gamebooster/mutiwindow/FreeformWindowService$FreeformWindowHandlerBinder;

    invoke-static {}, La8/m;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lk6/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0}, Lf7/d;->e(Landroid/content/Context;)Lf7/d;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lf7/d;->h(Landroid/os/Handler;)V

    invoke-virtual {v0}, Lf7/d;->g()V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-static {}, Lcom/miui/gamebooster/mutiwindow/b;->d()Lcom/miui/gamebooster/mutiwindow/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/mutiwindow/b;->i()V

    iget-object v1, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->a:Lcom/miui/gamebooster/mutiwindow/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/gamebooster/mutiwindow/a;->l()V

    invoke-static {}, Lk6/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/mutiwindow/FreeformWindowService;->a:Lcom/miui/gamebooster/mutiwindow/a;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/mutiwindow/b;->g(Lcom/miui/gamebooster/mutiwindow/b$b;)V

    :cond_0
    invoke-static {}, La8/m;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lk6/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0}, Lf7/d;->e(Landroid/content/Context;)Lf7/d;

    move-result-object v0

    invoke-virtual {v0}, Lf7/d;->j()V

    :cond_2
    return-void
.end method
