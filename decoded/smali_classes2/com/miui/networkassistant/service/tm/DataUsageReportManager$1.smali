.class Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->uploadTrafficDataDaily([Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "sim2"

    const-string v1, "sim1"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$000(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim1Inserted()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$100(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v4, v5, v6}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$200(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$100(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-static {v4, v5}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$300(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$000(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSim2Inserted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$100(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v1, v4, v5}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$200(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager;I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v1}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$100(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v1, v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$300(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$400(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$500(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getWifiDailyConnectedTime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v4}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$500(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/CommonConfig;->getMobileDailyConnectedTime()J

    move-result-wide v4

    const-string v6, "wifiTime"

    invoke-virtual {v3, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "mobileTime"

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$500(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/config/CommonConfig;->setWifiDailyConnectedTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$500(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/config/CommonConfig;->setMobileDailyConnectedTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$500(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    const-wide/16 v6, 0xbb8

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/miui/networkassistant/config/CommonConfig;->setUploadMonthReportUpdateTime(J)Z

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$600(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DataUsageReportUtil;->uploadDataUsageDaily(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;->this$0:Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->access$600(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DataUsageReportUtil;->uploadDataUsageDetailDaily(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
