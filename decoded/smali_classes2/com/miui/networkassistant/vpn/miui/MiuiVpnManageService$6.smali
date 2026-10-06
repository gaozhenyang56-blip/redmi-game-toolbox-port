.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->onWatchPackageDied(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iput p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->val$uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2300(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$MiuiVpnDetailInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lx4/f1;->y(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v3

    iget v4, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->val$uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    if-eqz v3, :cond_2

    iget-boolean v4, v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mIsRunning:Z

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is Died."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mIsRunning:Z

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$6;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
