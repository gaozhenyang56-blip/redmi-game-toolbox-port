.class Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mConnected:Z

    invoke-static {p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object p2

    iput-object p2, p1, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity$3;->this$0:Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;->mConnected:Z

    return-void
.end method
