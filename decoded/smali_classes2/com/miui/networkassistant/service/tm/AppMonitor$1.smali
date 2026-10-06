.class Lcom/miui/networkassistant/service/tm/AppMonitor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/service/tm/AppMonitor;->initData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/AppMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$100(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$200(Lcom/miui/networkassistant/service/tm/AppMonitor;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$300(Lcom/miui/networkassistant/service/tm/AppMonitor;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillNetworkAccessedApps failed, retryCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$200(Lcom/miui/networkassistant/service/tm/AppMonitor;)V

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$300(Lcom/miui/networkassistant/service/tm/AppMonitor;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$1;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$500(Lcom/miui/networkassistant/service/tm/AppMonitor;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
