.class final Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateAppTrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-static {p1}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->access$000(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-static {p1}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->access$100(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager$UpdateAppTrafficHandler;->this$0:Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;

    invoke-static {p1}, Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;->access$200(Lcom/miui/networkassistant/service/ts/TrafficStatisticManager;)V

    :goto_0
    return-void
.end method
