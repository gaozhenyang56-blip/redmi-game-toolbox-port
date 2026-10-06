.class Lcom/miui/dock/DockMonitorService$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/mutiwindow/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/dock/DockMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/DockMonitorService;


# direct methods
.method constructor <init>(Lcom/miui/dock/DockMonitorService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/DockMonitorService$i;->a:Lcom/miui/dock/DockMonitorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/dock/DockMonitorService$i;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/dock/DockMonitorService$i;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/DockMonitorService$i;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {v0}, Lcom/miui/dock/DockMonitorService;->h(Lcom/miui/dock/DockMonitorService;)V

    return-void
.end method


# virtual methods
.method public getId()Lf7/e;
    .locals 1

    sget-object v0, Lf7/e;->f:Lf7/e;

    return-object v0
.end method

.method public onForegroundInfoChanged(Lcom/gzy/redmiport/compat/process/ForegroundInfo;)Z
    .locals 4

    iget v0, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    invoke-static {v0}, Lx4/z1;->m(I)I

    move-result v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundInfoChanged: appUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\tmyUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\tforegroundInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GlobalDock-MonitorService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/dock/DockMonitorService$i;->a:Lcom/miui/dock/DockMonitorService;

    iget v1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundUid:I

    invoke-static {v0, v1}, Ld5/e;->c(Landroid/content/Context;I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/dock/DockMonitorService$i;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {v0}, Lcom/miui/dock/DockMonitorService;->o(Lcom/miui/dock/DockMonitorService;)V

    iget-object v0, p0, Lcom/miui/dock/DockMonitorService$i;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {v0}, Lcom/miui/dock/DockMonitorService;->c(Lcom/miui/dock/DockMonitorService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/gzy/redmiport/compat/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const-string v0, "com.miui.home"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$i;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {p1}, Lcom/miui/dock/DockMonitorService;->e(Lcom/miui/dock/DockMonitorService;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$i;->a:Lcom/miui/dock/DockMonitorService;

    invoke-static {p1}, Lcom/miui/dock/DockMonitorService;->b(Lcom/miui/dock/DockMonitorService;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/dock/DockMonitorService$i;->a:Lcom/miui/dock/DockMonitorService;

    iget-object v0, p1, Lcom/miui/dock/DockMonitorService;->l:Lcom/miui/gamebooster/service/IGameBoosterWindow;

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/miui/dock/DockMonitorService;->g(Lcom/miui/dock/DockMonitorService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/miui/dock/a;

    invoke-direct {v0, p0}, Lcom/miui/dock/a;-><init>(Lcom/miui/dock/DockMonitorService$i;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/miui/dock/DockMonitorService;->h(Lcom/miui/dock/DockMonitorService;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
