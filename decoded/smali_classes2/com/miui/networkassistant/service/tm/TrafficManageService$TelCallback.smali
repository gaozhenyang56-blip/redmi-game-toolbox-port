.class Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;
.super Landroid/telephony/TelephonyCallback;
.source "SourceFile"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1f
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/tm/TrafficManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Lcom/miui/networkassistant/service/tm/TrafficManageService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActiveDataSubscriptionIdChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrafficManageService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$700(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkActiveSlotTraffic()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1400(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/LockScreenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->initLockScreenMonitor()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TelCallback;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    return-void
.end method
