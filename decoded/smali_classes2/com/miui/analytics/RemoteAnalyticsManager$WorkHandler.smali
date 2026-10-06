.class final Lcom/miui/analytics/RemoteAnalyticsManager$WorkHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/RemoteAnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/miui/analytics/RemoteAnalyticsManager$MsgArgs;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/miui/analytics/RemoteAnalyticsManager$MsgArgs;

    iget-object v0, p1, Lcom/miui/analytics/RemoteAnalyticsManager$MsgArgs;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/analytics/RemoteAnalyticsManager$MsgArgs;->eventName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/analytics/RemoteAnalyticsManager;->access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/miui/analytics/RemoteAnalyticsManager$MsgArgs;->params:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method
