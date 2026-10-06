.class Lcom/miui/networkassistant/service/tm/TrafficSimManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/service/tm/TrafficSimManager;->reportSms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

.field final synthetic val$jsonArrayStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$6;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iput-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$6;->val$jsonArrayStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "TrafficManageService-TrafficSimManager"

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$6;->val$jsonArrayStr:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {v3 .. v12}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->reportTrafficCorrectionSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/common/net/c;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$6;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v1, v1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setTcSmsReportCache(Ljava/lang/String;)Z

    const-string v1, "reportSms succeed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "report sms exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
