.class Lcom/miui/earthquakewarning/service/EarthquakeWarningService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->startLocation()V
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

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$3;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationFailed(Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$3;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocation time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", location failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->access$200(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;Ljava/lang/String;)V

    return-void
.end method

.method public onLocationSuccess(Landroid/location/Location;)V
    .locals 12

    new-instance v0, Lcom/miui/earthquakewarning/model/EwTranData;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/model/EwTranData;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    :try_start_0
    invoke-static {v1, v2, v3, v4}, Lwi/a;->b(DD)[D

    move-result-object v5

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    aget-wide v10, v5, v10

    cmpl-double v5, v10, v8

    if-eqz v5, :cond_0

    double-to-float v5, v6

    iput v5, v0, Lcom/miui/earthquakewarning/model/EwTranData;->lat:F

    double-to-float v5, v10

    iput v5, v0, Lcom/miui/earthquakewarning/model/EwTranData;->lng:F

    goto :goto_0

    :cond_0
    double-to-float v5, v1

    iput v5, v0, Lcom/miui/earthquakewarning/model/EwTranData;->lat:F

    double-to-float v5, v3

    iput v5, v0, Lcom/miui/earthquakewarning/model/EwTranData;->lng:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "EwService"

    const-string v7, "get diff privacy error"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    double-to-float v1, v1

    iput v1, v0, Lcom/miui/earthquakewarning/model/EwTranData;->lat:F

    double-to-float v1, v3

    iput v1, v0, Lcom/miui/earthquakewarning/model/EwTranData;->lng:F

    :goto_0
    iget v1, v0, Lcom/miui/earthquakewarning/model/EwTranData;->lat:F

    const-string v2, "key_earthquake_warning_monitor_location_lat"

    invoke-static {v2, v1}, Lr4/a;->o(Ljava/lang/String;F)V

    iget v0, v0, Lcom/miui/earthquakewarning/model/EwTranData;->lng:F

    const-string v1, "key_earthquake_warning_monitor_location_lng"

    invoke-static {v1, v0}, Lr4/a;->o(Ljava/lang/String;F)V

    invoke-static {}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->getInstance()Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->stopLocation()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeWarningService$3;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeWarningService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocation time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", get location already,Latitude ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/earthquakewarning/service/EarthquakeWarningService;->access$200(Lcom/miui/earthquakewarning/service/EarthquakeWarningService;Ljava/lang/String;)V

    return-void
.end method
