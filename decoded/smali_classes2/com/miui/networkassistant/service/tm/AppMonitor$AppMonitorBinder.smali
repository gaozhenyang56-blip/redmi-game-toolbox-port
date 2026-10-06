.class Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;
.super Lcom/miui/networkassistant/service/IAppMonitorBinder$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/tm/AppMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppMonitorBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/service/tm/AppMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/IAppMonitorBinder$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/service/tm/AppMonitor;Lcom/miui/networkassistant/service/tm/AppMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;-><init>(Lcom/miui/networkassistant/service/tm/AppMonitor;)V

    return-void
.end method


# virtual methods
.method public getAppInfoByPackageName(Ljava/lang/String;)Lcom/miui/networkassistant/model/AppInfo;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$600(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$700(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/AppInfo;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFilteredAppInfosList()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$600(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$1000(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNetworkAccessedAppList()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$600(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$700(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$700(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNetworkAccessedAppsMap()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$600(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$700(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$700(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNonSystemAppList()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$600(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$900(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$900(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSystemAppList()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$600(Lcom/miui/networkassistant/service/tm/AppMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$800(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$800(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerLisener(Lcom/miui/networkassistant/service/IAppMonitorBinderListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$1100(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$1100(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$300(Lcom/miui/networkassistant/service/tm/AppMonitor;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {p1}, Lcom/miui/networkassistant/service/IAppMonitorBinderListener;->onAppListUpdated()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public unRegisterLisener(Lcom/miui/networkassistant/service/IAppMonitorBinderListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$1100(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/AppMonitor$AppMonitorBinder;->this$0:Lcom/miui/networkassistant/service/tm/AppMonitor;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/AppMonitor;->access$1100(Lcom/miui/networkassistant/service/tm/AppMonitor;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
