.class Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$4;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "NetdFirewall"

    const-string v0, "mFirewallReceiver"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "pkg"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$4;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-static {p2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->access$300(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Lcom/miui/networkassistant/firewall/IFirewallListener;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$4;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-static {v0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->access$200(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)Lp4/d$a;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/miui/networkassistant/firewall/IFirewallListener;->onAppNetworkRestrict(Ljava/lang/String;Lp4/d$a;)V

    return-void
.end method
