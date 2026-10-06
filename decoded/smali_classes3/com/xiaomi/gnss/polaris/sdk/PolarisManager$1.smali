.class Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->reconnectPolarisService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$1;->this$0:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback()V
    .locals 3

    const-string v0, "PolarisManager"

    const-string v1, "reconnect success"

    invoke-static {v0, v1}, Lcom/xiaomi/gnss/polaris/sdk/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$1;->this$0:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    invoke-static {}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->access$100()Lcom/xiaomi/gnss/polaris/IPolarisService;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/gnss/polaris/IPolarisService;->getGeoManagerService()Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->access$002(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;)Lcom/xiaomi/gnss/polaris/geofence/IMiGeoManagerService;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$1;->this$0:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    invoke-static {v1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->access$300(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->access$202(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;)Lcom/xiaomi/gnss/polaris/sdk/geofence/PolarisGeofenceService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/gnss/polaris/sdk/exception/PolarisException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    :goto_0
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gnss/polaris/sdk/utils/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$1;->this$0:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    invoke-static {v0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->access$400(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;->setConnectSuccessCb(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceConnectCallback;)V

    return-void
.end method
