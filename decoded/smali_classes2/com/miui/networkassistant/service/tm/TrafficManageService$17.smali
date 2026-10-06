.class Lcom/miui/networkassistant/service/tm/TrafficManageService$17;
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
.field private lastState:Landroid/net/NetworkInfo$State;

.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    sget-object p1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;->lastState:Landroid/net/NetworkInfo$State;

    return-void
.end method

.method public static synthetic a(Lcom/miui/networkassistant/service/tm/TrafficManageService$17;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;->lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 6

    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    check-cast p1, Landroid/net/NetworkInfo;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;->lastState:Landroid/net/NetworkInfo$State;

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_1

    move v1, v3

    :cond_1
    and-int/2addr v1, v2

    invoke-static {p2}, Lp4/d;->i(Landroid/content/Context;)Z

    move-result v2

    and-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-static {v2}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$300(Lcom/miui/networkassistant/service/tm/TrafficManageService;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSimInserted()Z

    move-result v2

    and-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    and-int/2addr v0, v1

    invoke-static {p2}, Lp4/d;->c(Landroid/content/Context;)Z

    move-result p2

    and-int v1, v0, p2

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;->lastState:Landroid/net/NetworkInfo$State;

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$17;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$3500(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService;->access$3600(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/service/tm/b;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/networkassistant/service/tm/b;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService$17;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
