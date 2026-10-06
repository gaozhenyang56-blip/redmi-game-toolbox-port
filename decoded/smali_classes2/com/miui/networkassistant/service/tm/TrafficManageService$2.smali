.class Lcom/miui/networkassistant/service/tm/TrafficManageService$2;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x17

    const/4 v3, 0x1

    if-eq v1, v2, :cond_5

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3

    const/16 v2, 0x42

    if-eq v1, v2, :cond_2

    const/16 v2, 0x50

    if-eq v1, v2, :cond_1

    const/16 v2, 0x51

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1900(Lcom/miui/networkassistant/service/tm/TrafficManageService;II)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f121aae

    invoke-static {p1, v0, v1}, Lcom/miui/networkassistant/utils/ToastUtil;->makeMiHallToast(Landroid/content/Context;II)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f121ab1

    invoke-static {p1, v0, v1}, Lcom/miui/networkassistant/utils/ToastUtil;->showCorrectionSucceed(Landroid/content/Context;II)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v0, p1}, Lcom/miui/networkassistant/utils/ToastUtil;->makeToastText(Landroid/content/Context;II)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1, v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$2100(Lcom/miui/networkassistant/service/tm/TrafficManageService;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$2100(Lcom/miui/networkassistant/service/tm/TrafficManageService;I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$1400(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/service/tm/LockScreenManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/LockScreenManager;->initLockScreenMonitor()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$800(Lcom/miui/networkassistant/service/tm/TrafficManageService;)I

    move-result p1

    if-ne v0, p1, :cond_6

    goto :goto_0

    :cond_3
    sget-boolean p1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$700(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    :cond_4
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {p1, v3}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$2002(Lcom/miui/networkassistant/service/tm/TrafficManageService;Z)Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lx1/a;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120e83

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
