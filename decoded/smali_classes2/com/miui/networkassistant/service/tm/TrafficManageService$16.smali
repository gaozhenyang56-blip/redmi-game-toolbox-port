.class Lcom/miui/networkassistant/service/tm/TrafficManageService$16;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/tm/TrafficManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "flag"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "slotId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: mQueryBillReceiver"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "TrafficManageService"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v2

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setSlotNumForQuery(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive:mSimUserInfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillPackageRemained()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->returnLastBillToTelephone(IJ)V

    const-string p1, "onReceive: AutoCorrection switch close"

    :goto_0
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_1

    if-eq p2, v3, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setIsReturnBill(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$16;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$3400(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->startCorrection(ZIZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const-string p1, "onReceive: Bill correction check"

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setIsReturnBill(Z)V

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendBillArrears(Landroid/content/Context;I)V

    const-string p1, "onReceive: Dialog reminder"

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
