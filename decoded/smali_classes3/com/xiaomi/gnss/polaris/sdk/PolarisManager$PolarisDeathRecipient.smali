.class Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisDeathRecipient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolarisDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;


# direct methods
.method private constructor <init>(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisDeathRecipient;->this$0:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisDeathRecipient;-><init>(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const-string v0, "PolarisManager"

    const-string v1, "binder died"

    invoke-static {v0, v1}, Lcom/xiaomi/gnss/polaris/sdk/utils/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->access$100()Lcom/xiaomi/gnss/polaris/IPolarisService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->access$100()Lcom/xiaomi/gnss/polaris/IPolarisService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisDeathRecipient;->this$0:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    invoke-static {v1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->access$600(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisDeathRecipient;->this$0:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    invoke-static {v1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->access$900(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisDeathRecipient$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisDeathRecipient$1;-><init>(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$PolarisDeathRecipient;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
