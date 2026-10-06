.class Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MyTrafficInputDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/NetworkAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyTrafficInputDialogListener"
.end annotation


# instance fields
.field private activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/networkassistant/ui/NetworkAssistantActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MyTrafficInputDialogListener;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onTrafficUpdated(JI)V
    .locals 2

    iget-object p3, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$MyTrafficInputDialogListener;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1500(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {p3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1500(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object v0

    invoke-static {p3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->manualCorrectNormalDataUsage(JI)V

    invoke-static {p3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1500(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/service/ITrafficManageBinder;

    move-result-object p1

    invoke-static {p3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateGlobleDataUsage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {p3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;

    move-result-object p1

    invoke-static {p3}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$100(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)I

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x2

    goto :goto_1

    :cond_2
    const/4 p2, 0x3

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
