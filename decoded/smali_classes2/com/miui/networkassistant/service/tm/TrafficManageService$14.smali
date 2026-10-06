.class Lcom/miui/networkassistant/service/tm/TrafficManageService$14;
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

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/service/tm/TrafficManageService$14;Lp4/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->lambda$onReceive$0(Lp4/d$a;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Lp4/d$a;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1300(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->trackNetworkStateAnalytics(Lp4/d$a;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateRoamingBeginTime()V

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$3300(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1}, Lp4/d;->b(Landroid/content/Context;)Lp4/d$a;

    move-result-object p1

    sget-object p2, Lp4/d$a;->b:Lp4/d$a;

    if-eq p1, p2, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/networkassistant/xman/XmanHelper;->checkXmanCloudDataAsync(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/networkassistant/zman/ZmanHelper;->checkZmanCloudDataAsync(Landroid/content/Context;)V

    sget-object p2, Lp4/d$a;->c:Lp4/d$a;

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$2900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$3000(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    sget-boolean p2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$3100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$2300(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/networkassistant/service/tm/PurchaseSmsManager;->checkPurchaseSmsNumberWhiteList()V

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$14;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$3200(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    :cond_1
    new-instance p2, Lcom/miui/networkassistant/service/tm/a;

    invoke-direct {p2, p0, p1}, Lcom/miui/networkassistant/service/tm/a;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService$14;Lp4/d$a;)V

    invoke-static {p2}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
