.class Lcom/miui/earthquakewarning/service/EarthquakeWarningService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/service/EarthquakeWarningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$1;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EwService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeMonitorOpen()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$1;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getUploadTopicTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v4, 0x1499700

    cmp-long p2, v0, v4

    if-lez p2, :cond_1

    invoke-static {}, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;->getInstance()Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/earthquakewarning/service/UpdateAreaCodeManager;->uploadSettings(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/miui/earthquakewarning/utils/Utils;->setUploadTopicTime(J)V

    :cond_1
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isNeedRestore()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/miui/earthquakewarning/service/RestoreHelper;->restore(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/Utils;->needRestore(Z)V

    :cond_2
    return-void
.end method
