.class Lcom/miui/networkassistant/service/tm/TrafficManageService$8;
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
.field firstStickyReceived:Z

.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$8;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$8;->firstStickyReceived:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mina mSimStateReceiver sim state updated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TrafficManageService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$8;->firstStickyReceived:Z

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iput-boolean v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$8;->firstStickyReceived:Z

    return-void

    :cond_0
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simState\uff1a"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    const-string p2, "postInitSimMsgDelayed"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$8;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object p2, p2, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x51

    invoke-virtual {p2, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$8;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object p2, p2, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$8;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object p2, p2, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$8;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$2400(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "mSimStateReceiver sim state update failed"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method
