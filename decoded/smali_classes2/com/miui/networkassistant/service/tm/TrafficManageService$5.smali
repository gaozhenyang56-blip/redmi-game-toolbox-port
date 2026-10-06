.class Lcom/miui/networkassistant/service/tm/TrafficManageService$5;
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

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "TrafficManageService"

    const-string p2, "mina mAutoCorrectionReceiver onReceive"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lef/x;->z()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object p1, p1, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x13

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x0

    iput p2, p1, Landroid/os/Message;->arg1:I

    iput p2, p1, Landroid/os/Message;->arg2:I

    iget-object p2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$5;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget-object p2, p2, Lcom/miui/networkassistant/service/tm/TrafficManageService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
