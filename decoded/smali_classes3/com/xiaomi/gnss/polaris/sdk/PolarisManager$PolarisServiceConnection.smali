.class Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolarisServiceConnection"
.end annotation


# instance fields
.field private successCb:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceConnectCallback;

.field final synthetic this$0:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;


# direct methods
.method private constructor <init>(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;->this$0:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;-><init>(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "PolarisManager"

    const-string v0, "connect polarisService success"

    invoke-static {p1, v0}, Lcom/xiaomi/gnss/polaris/sdk/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaomi/gnss/polaris/IPolarisService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gnss/polaris/IPolarisService;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->access$102(Lcom/xiaomi/gnss/polaris/IPolarisService;)Lcom/xiaomi/gnss/polaris/IPolarisService;

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;->this$0:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    invoke-static {p1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->access$600(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;->successCb:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceConnectCallback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceConnectCallback;->callback()V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "polarisService disconnect, componentName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PolarisManager"

    invoke-static {v0, p1}, Lcom/xiaomi/gnss/polaris/sdk/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setConnectSuccessCb(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceConnectCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisServiceConnection;->successCb:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceConnectCallback;

    return-void
.end method
