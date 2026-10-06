.class Lcom/miui/networkassistant/ui/NetworkAssistantActivity$7;
.super Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/NetworkAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$7;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/wrapper/TrafficCornBinderListenerHost;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$7;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getSlotNum()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$7;->this$0:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getSlotNum()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    :goto_1
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
