.class Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->updateMiuiVpnInfos(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

.field final synthetic val$isUseCache:Z


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    iput-boolean p2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->val$isUseCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->val$isUseCache:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getMiuiVpnInfos()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->val$isUseCache:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    iget-boolean v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->val$isUseCache:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/config/CommonConfig;->setMiuiVpnInfos(Ljava/lang/String;)Z

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2400(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "miui_vpn_infos"

    invoke-static {v1, v2}, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData;->c(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData$CloudData;

    invoke-virtual {v0}, Lcom/miui/support/provider/MiuiSettingsCompat$SettingsCloudData$CloudData;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setMiuiVpnInfos(Ljava/lang/String;)Z

    :cond_5
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$4000(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$3700(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v2, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$2600(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMiuiVpnInfos. miuiVpnInfos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService$8;->this$0:Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->access$4100(Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_6
    :goto_0
    sget-object v0, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v1, "updateMiuiVpnInfos, cloudDatalist is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/vpn/miui/MiuiVpnManageService;->TAG:Ljava/lang/String;

    const-string v2, "updateMiuiVpnInfos"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
