.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;
.super Landroid/app/IMiuiProcessObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {p0}, Landroid/app/IMiuiProcessObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 7

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object p3

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    if-nez p2, :cond_0

    monitor-exit p3

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2800(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;IILjava/lang/String;)V

    iput p1, p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPid:I

    iget-boolean p1, p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mIsRunning:Z

    if-eqz p1, :cond_1

    monitor-exit p3

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mIsRunning:Z

    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2900(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3000(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3100()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3000(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v2

    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2900(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v3

    iget-object v4, p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPackageName:Ljava/lang/String;

    iget v5, p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mUid:I

    iget v6, p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPid:I

    invoke-static/range {v0 .. v6}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils;->keepVpnProcAlive(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;II)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3202(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    :goto_0
    monitor-exit p3

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object p3, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p3}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    if-nez p2, :cond_4

    monitor-exit p1

    return-void

    :cond_4
    monitor-exit p1

    :goto_1
    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2
.end method

.method public onImportanceChanged(III)V
    .locals 0

    return-void
.end method

.method public onProcessDied(II)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v2, v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mIsRunning:Z

    if-nez v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPackageName:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProcessDied. uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$5;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1, p2, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3300(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;ILjava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onProcessStateChanged(III)V
    .locals 0

    return-void
.end method
