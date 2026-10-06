.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;->onPackageRemovedAllUsers(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    iput-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    iget-object v0, v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    iget-object v1, v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    iget-object v1, v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->val$packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    iget-object v2, v2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->this$1:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;

    iget-object v3, v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->val$uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    iget v6, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->val$uid:I

    iget-object v7, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnPackageMonitor$2;->val$packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v8}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;-><init>(ILjava/lang/String;ZI)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
