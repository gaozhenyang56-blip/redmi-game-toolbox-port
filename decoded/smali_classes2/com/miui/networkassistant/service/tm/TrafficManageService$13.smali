.class Lcom/miui/networkassistant/service/tm/TrafficManageService$13;
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

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "TrafficManageService"

    const-string p2, "mina mUserSwitchReceiver onReceive"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {}, Lx4/z1;->e()I

    move-result p2

    invoke-static {p2}, Lx4/z1;->i(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$2702(Lcom/miui/networkassistant/service/tm/TrafficManageService;I)I

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$500(Lcom/miui/networkassistant/service/tm/TrafficManageService;)[Lcom/miui/networkassistant/service/tm/AppMonitor;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$13;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$2700(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result p2

    aget-object p1, p1, p2

    invoke-static {}, Lx4/z1;->e()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/service/tm/AppMonitor;->initData(I)V

    return-void
.end method
