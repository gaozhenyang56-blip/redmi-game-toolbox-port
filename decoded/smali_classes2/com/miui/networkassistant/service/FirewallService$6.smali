.class Lcom/miui/networkassistant/service/FirewallService$6;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/16 v4, 0x11

    if-eq v0, v4, :cond_5

    const/16 v4, 0x20

    if-eq v0, v4, :cond_3

    const/16 v4, 0x30

    if-eq v0, v4, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "network_blocked_pkgname"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "network_blocked_network_type"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/service/FirewallService;->access$2000(Lcom/miui/networkassistant/service/FirewallService;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/FirewallService;->access$2200(Lcom/miui/networkassistant/service/FirewallService;)V

    goto/16 :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "com.miui.networkassistant.provider"

    aput-object v3, v0, v1

    const-string v1, "firewall/*"

    aput-object v1, v0, v2

    const-string v1, "%s/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$700(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v4, 0x21

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v5, "temp_rule_package"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v5, "temp_rule_reason"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v5}, Lcom/miui/networkassistant/service/FirewallService;->access$2100(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->getLableByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v5}, Lcom/miui/networkassistant/service/FirewallService;->access$2100(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/miui/networkassistant/utils/PackageUtil;->getLableByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v5}, Lcom/miui/networkassistant/service/FirewallService;->access$2100(Lcom/miui/networkassistant/service/FirewallService;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120887

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object p1, v3, v2

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/FirewallService;->access$700(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {v0}, Lcom/miui/networkassistant/service/FirewallService;->access$700(Lcom/miui/networkassistant/service/FirewallService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1, v2}, Lcom/miui/networkassistant/service/FirewallService;->access$1800(Lcom/miui/networkassistant/service/FirewallService;I)V

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1}, Lcom/miui/networkassistant/service/FirewallService;->access$1900(Lcom/miui/networkassistant/service/FirewallService;)V

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/miui/networkassistant/service/FirewallService$6;->this$0:Lcom/miui/networkassistant/service/FirewallService;

    invoke-static {p1, v1}, Lcom/miui/networkassistant/service/FirewallService;->access$1800(Lcom/miui/networkassistant/service/FirewallService;I)V

    :goto_0
    return-void
.end method
