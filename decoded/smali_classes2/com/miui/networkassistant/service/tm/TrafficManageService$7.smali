.class Lcom/miui/networkassistant/service/tm/TrafficManageService$7;
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

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: intent.action = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TrafficManageService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->broadCastDataUsageUpdated()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result p2

    aget-object p1, p1, p2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->notifyByNetChange()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1600(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/TetherStatsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result v0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->checkTetheringTrafficStatus(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "smart_dual_sim"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result p1

    if-nez p1, :cond_1

    move v0, p2

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$7;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$900(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->notifyByNetChange()V

    :cond_2
    return-void
.end method
