.class Lcom/miui/networkassistant/service/tm/TrafficManageService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-eq p1, v2, :cond_6

    const/16 v2, 0x16

    if-eq p1, v2, :cond_5

    const/16 v2, 0x30

    if-eq p1, v2, :cond_4

    const/16 v2, 0x31

    if-eq p1, v2, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lp4/d;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNetworkChangedNotify(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1, v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1802(Lcom/miui/networkassistant/service/tm/TrafficManageService;Z)Z

    goto/16 :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lp4/d;->e(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "TrafficManageService"

    if-nez p1, :cond_0

    const-string p1, "wifi2mobile: Mobile network does not connected"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1700(Lcom/miui/networkassistant/service/tm/TrafficManageService;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/32 v6, 0x1e8480

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNetworkChangedNotify(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1, v1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1802(Lcom/miui/networkassistant/service/tm/TrafficManageService;Z)Z

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi2mobile: deltaByte:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v4}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1700(Lcom/miui/networkassistant/service/tm/TrafficManageService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lp4/d;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {p1, v2, v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1702(Lcom/miui/networkassistant/service/tm/TrafficManageService;J)J

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x61

    const-wide/16 v2, 0xfa0

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :pswitch_3
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1600(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/TetherStatsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->initTetheringStatus()V

    goto/16 :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearRoamingDailyLimitTime()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v0

    goto :goto_1

    :pswitch_5
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearDailyLimitTime()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v0

    :goto_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkDailyLimitTrafficStatus()V

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1500(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    goto/16 :goto_2

    :cond_4
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1200(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/service/tm/TrackAnalyticsManager;->trackAnalyticsDaily(I)V

    goto/16 :goto_2

    :cond_5
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1300(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->uploadTrafficDataDaily([Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    goto/16 :goto_2

    :cond_6
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->forceUpdateTraffic()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->broadCastDataUsageUpdated()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1300(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->uploadTrafficDataDaily([Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->forceUpdateTraffic()V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTrafficStatus()V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->initTrafficStatusMonitorVariable()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->clearAllLimitTime()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkTrafficStatus()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result p1

    if-ne v0, p1, :cond_9

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1400(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/LockScreenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->initLockScreenMonitor()V

    :cond_9
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$1;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->broadCastDataUsageUpdated()V

    :cond_a
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x60
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
