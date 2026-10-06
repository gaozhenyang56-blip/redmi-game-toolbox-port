.class Lcom/miui/networkassistant/ui/activity/BaseStatsActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/activity/BaseStatsActivity$1;->this$0:Lcom/miui/networkassistant/ui/activity/BaseStatsActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackActiveNetworkAssistant(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0
.end method
