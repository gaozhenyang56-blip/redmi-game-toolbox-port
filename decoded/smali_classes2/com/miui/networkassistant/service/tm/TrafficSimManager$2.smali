.class Lcom/miui/networkassistant/service/tm/TrafficSimManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/service/tm/TrafficSimManager;->forceUpdateTraffic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$000(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lcom/miui/net/MiuiNetworkSessionStats;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$2;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$000(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lcom/miui/net/MiuiNetworkSessionStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkSessionStats;->forceUpdate()V

    :cond_0
    return-void
.end method
