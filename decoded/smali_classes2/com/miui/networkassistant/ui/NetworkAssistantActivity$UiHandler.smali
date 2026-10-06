.class Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/NetworkAssistantActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiHandler"
.end annotation


# static fields
.field static final MSG_START_ANIM_0:I = 0x4

.field static final MSG_START_ANIM_1:I = 0x5

.field static final MSG_TRAFFIC_INIT_DATA:I = 0x1

.field static final MSG_TRAFFIC_UPDATE_DATA_0:I = 0x2

.field static final MSG_TRAFFIC_UPDATE_DATA_1:I = 0x3


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

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    const-string v0, "NAMainActivity"

    iget-object v1, p0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$UiHandler;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_2

    goto :goto_0

    :cond_1
    move v2, v4

    :cond_2
    :try_start_0
    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$1900(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-interface {p1}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->isConfigUpdated()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$400(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficTcResultCode()I

    move-result p1

    if-nez p1, :cond_6

    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$2800(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)[Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/MainTrafficUsedView;->startAnim()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrafficCorrected:isFinished  startAnim() slotNum:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Exception"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    invoke-static {v1, v2}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$2700(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V

    goto :goto_0

    :cond_4
    invoke-static {v1, v4}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$2700(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;I)V

    goto :goto_0

    :cond_5
    invoke-static {v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->access$2600(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    :cond_6
    :goto_0
    return-void
.end method
