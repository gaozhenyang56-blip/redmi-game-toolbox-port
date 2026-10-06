.class Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->getLocation()V
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

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;->this$0:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFailed(Ljava/lang/String;)V
    .locals 3

    const-string p1, "WcDisasterTask"

    const-string v0, "location failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;->this$0:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->access$200(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e7

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onLocationSuccess(Landroid/location/Location;)V
    .locals 4

    const-string v0, "WcDisasterTask"

    const-string v1, "location success"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask;

    invoke-direct {v0}, Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask;-><init>()V

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3$1;

    invoke-direct {v1, p0}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3$1;-><init>(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;)V

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask;->setListener(Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask$ResultListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;->this$0:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->access$200(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e7

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
