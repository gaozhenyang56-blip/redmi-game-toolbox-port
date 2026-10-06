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

    .line 23
    iput-object p1, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 24
    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    # getter for: Lcom/gzy/redmiport/SidebarRuntime;->closed:Z
    invoke-static {v0}, Lcom/gzy/redmiport/SidebarRuntime;->access$0(Lcom/gzy/redmiport/SidebarRuntime;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 25
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    # getter for: Lcom/gzy/redmiport/SidebarRuntime;->lastGood:J
    invoke-static {v0}, Lcom/gzy/redmiport/SidebarRuntime;->access$1(Lcom/gzy/redmiport/SidebarRuntime;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_36

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    # getter for: Lcom/gzy/redmiport/SidebarRuntime;->lastGood:J
    invoke-static {v2}, Lcom/gzy/redmiport/SidebarRuntime;->access$1(Lcom/gzy/redmiport/SidebarRuntime;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_36

    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    const-string v1, "\u524d\u53f0\u76d1\u6d4b\u5df2\u8fc7\u671f\uff0c\u767d\u6761\u5df2\u9690\u85cf"

    # invokes: Lcom/gzy/redmiport/SidebarRuntime;->hide(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/gzy/redmiport/SidebarRuntime;->access$2(Lcom/gzy/redmiport/SidebarRuntime;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_9 .. :try_end_2d} :catchall_2e

    goto :goto_36

    .line 26
    :catchall_2e
    move-exception v0

    iget-object v1, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    const-string v2, "Sidebar watchdog"

    # invokes: Lcom/gzy/redmiport/SidebarRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    invoke-static {v1, v2, v0}, Lcom/gzy/redmiport/SidebarRuntime;->access$3(Lcom/gzy/redmiport/SidebarRuntime;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/gzy/redmiport/SidebarRuntime$1;->this$0:Lcom/gzy/redmiport/SidebarRuntime;

    # getter for: Lcom/gzy/redmiport/SidebarRuntime;->main:Landroid/os/Handler;
    invoke-static {v0}, Lcom/gzy/redmiport/SidebarRuntime;->access$4(Lcom/gzy/redmiport/SidebarRuntime;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    return-void
.end method
