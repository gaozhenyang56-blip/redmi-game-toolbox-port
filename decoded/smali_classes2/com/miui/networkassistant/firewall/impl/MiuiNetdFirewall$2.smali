.class Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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

    iput-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$2;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2
    .param p1    # Landroid/net/Network;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetdFirewall"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$2;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-static {p1}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->access$100(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V

    return-void
.end method

.method public onUnavailable()V
    .locals 2

    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    const-string v0, "NetdFirewall"

    const-string v1, "onUnavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall$2;->this$0:Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;

    invoke-static {v0}, Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;->access$100(Lcom/miui/networkassistant/firewall/impl/MiuiNetdFirewall;)V

    return-void
.end method
