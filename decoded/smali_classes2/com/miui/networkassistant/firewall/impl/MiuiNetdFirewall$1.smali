.class Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$1;
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

    iput-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$1;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$1;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->access$000(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$1;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-static {p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->access$100(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V

    :cond_2
    :goto_0
    return-void
.end method
