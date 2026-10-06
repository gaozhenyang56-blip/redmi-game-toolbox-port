.class Lcom/miui/networkassistant/service/tm/TrafficManageService$6;
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

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$6;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "TrafficManageService"

    const-string p2, "mina mRefreshDataUsageDailyReceiver"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$6;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1100(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x15

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
