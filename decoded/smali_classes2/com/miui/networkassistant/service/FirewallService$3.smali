.class Lcom/miui/networkassistant/service/FirewallService$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/FirewallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/FirewallService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/FirewallService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$3;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/service/FirewallService$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/FirewallService$3;->lambda$onReceive$0()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$3;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$1600(Lcom/miui/networkassistant/service/FirewallService;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$3;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$1700(Lcom/miui/networkassistant/service/FirewallService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "ss"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSimStateReceiver : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FireWallService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "LOADED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "ABSENT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    new-instance p1, Lcom/miui/networkassistant/service/a;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/service/a;-><init>(Lcom/miui/networkassistant/service/FirewallService$3;)V

    invoke-static {p1}, Lcom/miui/networkassistant/ui/thread/ThreadPool;->runOnPool(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$3;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/FirewallService;->access$700(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x40

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$3;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/FirewallService;->access$700(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
