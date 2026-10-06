.class Lcom/miui/networkassistant/service/FirewallService$8;
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

    iput-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$8;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAllowFirewallReceiver : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FireWallService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelFirewallRestrictionNotification(Landroid/content/Context;)V

    const-string v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "networkType"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    sget-object v1, Lp4/d$a;->d:Lp4/d$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$8;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/FirewallService;->access$2600(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;

    move-result-object p1

    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    iget-object v1, p0, Lcom/miui/networkassistant/service/FirewallService$8;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v1}, Lcom/miui/networkassistant/service/FirewallService;->access$900(Lcom/miui/networkassistant/service/FirewallService;)I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setMobileRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;I)Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$8;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    const p2, 0x7f120879

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v1, Lp4/d$a;->c:Lp4/d$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/service/FirewallService$8;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p2}, Lcom/miui/networkassistant/service/FirewallService;->access$2600(Lcom/miui/networkassistant/service/FirewallService;)Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;

    move-result-object p2

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {p2, v0, v1}, Lcom/miui/networkassistant/service/FirewallService$FirewallBinder;->setWifiRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)Z

    const p2, 0x7f120888

    invoke-static {p1, p2}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/miui/networkassistant/service/FirewallService$8;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p2, v0, p1}, Lcom/miui/networkassistant/service/FirewallService;->access$2700(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
