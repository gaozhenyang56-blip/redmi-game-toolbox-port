.class Lcom/miui/networkassistant/service/tm/TrafficManageService$3;
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

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$2200(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getSmsNumberReceiverUpdateTime()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    const-string p1, "TrafficManageService"

    const-string v0, "SmsReceiver check is charge sms"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$2300(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->getSlotIdFromIntent(Landroid/content/Intent;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficPurchaseStatus()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$2200(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/miui/networkassistant/config/CommonConfig;->setSmsNumberReceiverUpdateTime(J)Z

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v3

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficPurchaseStatus(Z)Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$2300(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->checkContainReceiveNumber(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "mina traffic correction by sms receiver"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object p1, p1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput v0, p1, Landroid/os/Message;->arg1:I

    const/4 p2, 0x2

    iput p2, p1, Landroid/os/Message;->arg2:I

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$3;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object p2, p2, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const-wide/32 v0, 0x493e0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method
