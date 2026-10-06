.class Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;
.super Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/tm/TrafficManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficManageBinder"
.end annotation


# instance fields
.field private mSharedPreBinderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method private constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->mSharedPreBinderMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Lcom/miui/networkassistant/service/tm/TrafficManageService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    return-void
.end method


# virtual methods
.method public applyCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;ZI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p3, v0, p3

    invoke-virtual {p3, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V

    return-void
.end method

.method public clearDataUsageIgnore(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/ConfigFile;->clear()V

    :cond_0
    return-void
.end method

.method public forceCheckDailyLimitStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public forceCheckLockScreenStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object p1, p1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public forceCheckRoamingDailyLimitStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public forceCheckTethingSettingStatus()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public forceCheckTrafficStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getActiveSlotNum()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$700(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v0

    return v0
.end method

.method public getAppMonitorBinder()Lcom/miui/networkassistant/service/IAppMonitorBinder;
    .locals 2

    invoke-static {}, Lx4/z1;->c()I

    move-result v0

    invoke-static {v0}, Lx4/z1;->i(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$500(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/AppMonitor;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/AppMonitor;->getBinder()Lcom/miui/networkassistant/service/IAppMonitorBinder;

    move-result-object v0

    return-object v0
.end method

.method public getCorrectedNormalAndLeisureMonthTotalUsed(I)[J
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsed()[J

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCorrectedNormalMonthDataUsageUsed(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalAndLeisureMonthTotalUsed()[J

    move-result-object p1

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalMonthTotalUsed()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentMonthTotalPackage(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getIgnoreAppCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->getIgnoreList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1
.end method

.method public getNormalTodayDataUsageUsed(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getSharedPreBinder(Ljava/lang/String;Lcom/miui/networkassistant/service/ISharedPreBinderListener;)Lcom/miui/networkassistant/service/ISharedPreBinder;
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->mSharedPreBinderMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->mSharedPreBinderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {v1, v2, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->mSharedPreBinderMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1, p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$SharedPreBinder;->attachBinderListener(Lcom/miui/networkassistant/service/ISharedPreBinderListener;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getTodayDataUsageUsed(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/statistic/LeisureTrafficHelper;->isLeisureTime(Lcom/miui/networkassistant/config/SimUserInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getTodayLeisureDataUsage()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageNoLeisureUsed()J

    move-result-wide v0

    return-wide v0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getTodayCorrectDataUsageUsed()J

    move-result-wide v0

    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageUsed()J

    move-result-wide v0

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTrafficCornBinder(I)Lcom/miui/networkassistant/service/ITrafficCornBinder;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$600(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isDailyTrafficLimited(I)Z
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyLimitEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCorrectedNormalMonthTotalUsed()J

    move-result-wide v4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v6, v4

    if-lez v1, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->isLastDayOfMonth()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "TrafficManageService"

    const-string v0, "checkDailyLimit -- isLastDayOfMonth: true !"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageNoLeisureUsed()J

    move-result-wide v4

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDailyLimitTraffic()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getNormalTodayDataUsageNoLeisureUsed()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v0

    cmp-long p1, v4, v0

    if-lez p1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method public isDataUsageIgnore(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p2, v0, p2

    iget-object p2, p2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->isDataUsageIgnore(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isNeededPurchasePkg(I)Z
    .locals 12

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->getCorrectedNormalMonthDataUsageUsed(I)J

    move-result-wide v2

    sub-long v4, v0, v2

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getDayOfMonth()I

    move-result v6

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getActualMaxDayOfMonth()I

    move-result v7

    sub-int/2addr v7, v6

    long-to-double v2, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v8

    int-to-double v8, v6

    div-double/2addr v2, v8

    int-to-double v7, v7

    mul-double/2addr v2, v7

    long-to-double v4, v4

    cmpl-double v2, v2, v4

    const/4 v3, 0x1

    const/4 v7, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    iget-object v8, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v8}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v8

    aget-object p1, v8, p1

    iget-object p1, p1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide v8, 0x41b2c00000000000L    # 3.145728E8

    long-to-double v0, v0

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v10

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v7

    :goto_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    if-le v6, v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v7

    :goto_2
    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNATrafficPurchaseAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v3, v7

    :goto_3
    return v3
.end method

.method public manualCorrectLeisureDataUsage(JI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveLatestCorrectedLeisureDataUsage(J)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, p3

    iget-object p1, p1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageOverLimitWarningTime(J)Z

    :cond_0
    return-void
.end method

.method public manualCorrectNormalDataUsage(JI)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveLatestCorrectedNormalDataUsage(J)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, p3

    iget-object p1, p1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkWarningTime(J)Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, p3

    iget-object p1, p1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkTime(J)Z

    :cond_0
    return-void
.end method

.method public reloadIgnoreAppList(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initDataUsageIgnoreAppList()V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/ConfigFile;->saveNow()V

    :cond_0
    return-void
.end method

.method public setDataUsageIgnore(Ljava/lang/String;ZI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p3, v0, p3

    iget-object p3, p3, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->setDataUsageIgnore(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public startCorrection(ZIZI)Z
    .locals 6

    const/4 v1, 0x3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->startCorrectionWithChannel(IZIZI)Z

    move-result p1

    return p1
.end method

.method public startCorrectionWithChannel(IZIZI)Z
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p3

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    const/4 v6, 0x0

    move v2, p3

    move v3, p2

    move v4, p4

    move v5, p5

    move v7, p1

    invoke-static/range {v1 .. v7}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1000(Lcom/miui/networkassistant/service/tm/TrafficManageService;IZZIZI)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toggleDataUsageAutoCorrection(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p2, v0, p2

    iget-object p2, p2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->initDataUsageAutoCorrection()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->cancelDataUsageAutoCorrection()V

    :cond_1
    :goto_0
    return-void
.end method

.method public toggleDataUsageOverLimitStopNetwork(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageOverLimitStopNetwork(Z)Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearAllLimitTime()V

    :cond_0
    return-void
.end method

.method public toggleLeisureDataUsageOverLimitWarning(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleLeisureDataUsageOverLimitWarning(Z)Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearAllLimitTime()V

    :cond_0
    return-void
.end method

.method public updateGlobleDataUsage(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->updateTrafficCorrectionTotalLimit()V

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->broadCastDataUsageUpdated()V

    return-void
.end method

.method public updateTrafficStatusMonitor(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficManageBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
