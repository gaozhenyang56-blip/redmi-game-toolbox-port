.class Lcom/miui/networkassistant/service/tm/TrafficManageService$9;
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

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mina mSimStateDataSlotReceiver sim data slot updated"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TrafficManageService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$700(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkActiveSlotTraffic()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1400(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/LockScreenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->initLockScreenMonitor()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$9;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    return-void
.end method
