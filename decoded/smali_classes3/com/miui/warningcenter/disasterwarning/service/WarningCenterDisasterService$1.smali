.class Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$1;->this$0:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_0

    :goto_0
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$1;->this$0:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;

    invoke-virtual {p1}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getStrongPushToggle()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getSystemPushToggle()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getUploadTopicTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x2932e00

    cmp-long p2, v2, v0

    if-lez p2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/warningcenter/disasterwarning/Utils;->setUploadTopicTime(J)V

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/Utils;->updateSubscribeLevelService(Landroid/content/Context;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getUpdateAreaTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x240c8400

    cmp-long p2, v0, v2

    if-gtz p2, :cond_3

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->isFirstUpdateDisasterArea()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    new-instance p2, Lcom/miui/warningcenter/disasterwarning/db/DeleteAreaDataTask;

    invoke-direct {p2, p1}, Lcom/miui/warningcenter/disasterwarning/db/DeleteAreaDataTask;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    return-void
.end method
