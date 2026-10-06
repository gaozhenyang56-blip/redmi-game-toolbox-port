.class Lcom/miui/networkassistant/service/tm/TrafficManageService$4;
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

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mina mPurchaseSuccessReceiver "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TrafficManageService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string p1, "slotId"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p2

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->resetTrafficPurchaseStatus()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$2200(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/miui/networkassistant/config/CommonConfig;->setSmsNumberReceiverUpdateTime(J)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "mPurchaseSuccessReceiver "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
