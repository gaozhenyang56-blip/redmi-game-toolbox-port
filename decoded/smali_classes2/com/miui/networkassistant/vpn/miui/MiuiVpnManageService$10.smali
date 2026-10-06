.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected. name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", vpnState="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    sget-object p1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string p2, "onServiceConnected. service is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3800(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3902(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3900(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->B3()I

    move-result v0

    invoke-static {p2, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2902(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2900(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3000(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3100()Ljava/lang/String;

    move-result-object v1

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3000(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v2

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2900(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v3

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    move-result-object p2

    iget-object v4, p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPackageName:Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    move-result-object p2

    iget v5, p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mUid:I

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    move-result-object p2

    iget v6, p2, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;->mPid:I

    invoke-static/range {v0 .. v6}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils;->keepVpnProcAlive(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;II)V

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3202(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnUtils$WatchPackageInfo;

    :cond_1
    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3900(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$4300(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$MiuiVpnManageServiceCallback;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;->registerCallback(Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageServiceCallback;)V

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$4200(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I

    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$4400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2500(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected. name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3800(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3902(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;)Lcom/miui/vpnsdkmanager/IMiuiVpnSdkService;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$4500(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)V

    iget-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$10;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$1700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x106

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
