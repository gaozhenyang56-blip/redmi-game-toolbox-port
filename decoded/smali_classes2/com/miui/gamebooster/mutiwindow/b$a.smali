.class Lcom/miui/gamebooster/mutiwindow/b$a;
.super Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/mutiwindow/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/mutiwindow/b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/mutiwindow/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/mutiwindow/b$a;->a:Lcom/miui/gamebooster/mutiwindow/b;

    invoke-direct {p0}, Lcom/gzy/redmiport/compat/process/IForegroundInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onForegroundInfoChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b$a;->a:Lcom/miui/gamebooster/mutiwindow/b;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/b;->a(Lcom/miui/gamebooster/mutiwindow/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sget-object v1, Lf7/e;->a:Lf7/e;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/mutiwindow/b$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/mutiwindow/b$b;->onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b$a;->a:Lcom/miui/gamebooster/mutiwindow/b;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/b;->a(Lcom/miui/gamebooster/mutiwindow/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sget-object v1, Lf7/e;->b:Lf7/e;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/mutiwindow/b$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/mutiwindow/b$b;->onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b$a;->a:Lcom/miui/gamebooster/mutiwindow/b;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/b;->a(Lcom/miui/gamebooster/mutiwindow/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sget-object v1, Lf7/e;->c:Lf7/e;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/mutiwindow/b$b;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/mutiwindow/b$b;->onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b$a;->a:Lcom/miui/gamebooster/mutiwindow/b;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/b;->a(Lcom/miui/gamebooster/mutiwindow/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sget-object v1, Lf7/e;->d:Lf7/e;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/mutiwindow/b$b;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/mutiwindow/b$b;->onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b$a;->a:Lcom/miui/gamebooster/mutiwindow/b;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/b;->a(Lcom/miui/gamebooster/mutiwindow/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sget-object v1, Lf7/e;->e:Lf7/e;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/mutiwindow/b$b;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/mutiwindow/b$b;->onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b$a;->a:Lcom/miui/gamebooster/mutiwindow/b;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/b;->a(Lcom/miui/gamebooster/mutiwindow/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sget-object v1, Lf7/e;->f:Lf7/e;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/mutiwindow/b$b;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/mutiwindow/b$b;->onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z

    :cond_5
    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b$a;->a:Lcom/miui/gamebooster/mutiwindow/b;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/b;->a(Lcom/miui/gamebooster/mutiwindow/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sget-object v1, Lf7/e;->g:Lf7/e;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/mutiwindow/b$b;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/mutiwindow/b$b;->onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z

    :cond_6
    iget-object v0, p0, Lcom/miui/gamebooster/mutiwindow/b$a;->a:Lcom/miui/gamebooster/mutiwindow/b;

    invoke-static {v0}, Lcom/miui/gamebooster/mutiwindow/b;->a(Lcom/miui/gamebooster/mutiwindow/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    sget-object v1, Lf7/e;->h:Lf7/e;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/mutiwindow/b$b;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/miui/gamebooster/mutiwindow/b$b;->onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z

    :cond_7
    return-void
.end method
