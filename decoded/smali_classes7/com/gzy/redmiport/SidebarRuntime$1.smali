.class Lcom/gzy/redmiport/SidebarRuntime$1;
.super Ljava/lang/Object;
.source "SidebarRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gzy/redmiport/SidebarRuntime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gzy/redmiport/SidebarRuntime;


# direct methods
.method constructor <init>(Lcom/gzy/redmiport/SidebarRuntime;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 26
    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    # getter for: Lcom/gzy/redmiport/SidebarRuntime;->closed:Z
    invoke-static {v0}, Lcom/gzy/redmiport/SidebarRuntime;->access$0(Lcom/gzy/redmiport/SidebarRuntime;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 27
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    # getter for: Lcom/gzy/redmiport/SidebarRuntime;->lastGood:J
    invoke-static {v0}, Lcom/gzy/redmiport/SidebarRuntime;->access$1(Lcom/gzy/redmiport/SidebarRuntime;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    # getter for: Lcom/gzy/redmiport/SidebarRuntime;->lastGood:J
    invoke-static {v2}, Lcom/gzy/redmiport/SidebarRuntime;->access$1(Lcom/gzy/redmiport/SidebarRuntime;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2ee0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2e

    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    const-string v1, "\u524d\u53f0\u76d1\u6d4b\u5df2\u8fc7\u671f\uff0c\u767d\u6761\u5df2\u9690\u85cf"

    # invokes: Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->access$2(Lcom/gzy/redmiport/SidebarRuntime;Ljava/lang/String;)V

    goto :goto_84

    .line 28
    :cond_2e
    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    # getter for: Lcom/gzy/redmiport/SidebarRuntime;->shown:Ljava/lang/String;
    invoke-static {v0}, Lcom/gzy/redmiport/SidebarRuntime;->access$3(Lcom/gzy/redmiport/SidebarRuntime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_84

    .line 29
    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    # getter for: Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;
    invoke-static {v0}, Lcom/gzy/redmiport/SidebarRuntime;->access$4(Lcom/gzy/redmiport/SidebarRuntime;)Landroid/app/Service;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 30
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_74

    invoke-static {}, Lcom/gzy/redmiport/SidebarRuntime;->enabled()Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    # getter for: Lcom/gzy/redmiport/SidebarRuntime;->service:Landroid/app/Service;
    invoke-static {v0}, Lcom/gzy/redmiport/SidebarRuntime;->access$4(Lcom/gzy/redmiport/SidebarRuntime;)Landroid/app/Service;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_74

    .line 31
    :cond_61
    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    # getter for: Lcom/gzy/redmiport/SidebarRuntime;->controller:Ljava/lang/Object;
    invoke-static {v0}, Lcom/gzy/redmiport/SidebarRuntime;->access$5(Lcom/gzy/redmiport/SidebarRuntime;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "d"

    # invokes: Lcom/gzy/redmiport/SidebarRuntime;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->access$6(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    # invokes: Lcom/gzy/redmiport/SidebarRuntime;->keepVisible(Ljava/lang/Object;)V
    invoke-static {v0}, Lcom/gzy/redmiport/SidebarRuntime;->access$7(Ljava/lang/Object;)V

    invoke-static {}, Lcom/gzy/redmiport/PortRuntime;->sampleFps()J

    .line 32
    goto :goto_84

    .line 30
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    const-string v1, "\u9501\u5c4f\u6216\u5165\u53e3\u6743\u9650\u5df2\u5173\u95ed"

    # invokes: Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->access$2(Lcom/gzy/redmiport/SidebarRuntime;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_9 .. :try_end_7b} :catchall_7c

    goto :goto_84

    .line 33
    :catchall_7c
    move-exception v0

    iget-object v1, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    const-string v2, "Sidebar watchdog"

    # invokes: Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/gzy/redmiport/SidebarRuntime;->access$8(Lcom/gzy/redmiport/SidebarRuntime;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_84
    :goto_84
    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    # getter for: Lcom/gzy/redmiport/SidebarRuntime;->main:Landroid/os/Handler;
    invoke-static {v0}, Lcom/gzy/redmiport/SidebarRuntime;->access$9(Lcom/gzy/redmiport/SidebarRuntime;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    return-void
.end method
