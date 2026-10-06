.class Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$1;->this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppListUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$1;->this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->access$300(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
