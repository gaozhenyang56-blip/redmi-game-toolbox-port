.class Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->startLocationSingleUpdate(Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

.field final synthetic val$callBack:Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;

.field final synthetic val$delayCheckHandler:Landroid/os/Handler;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$4;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    iput-object p2, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$4;->val$delayCheckHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$4;->val$runnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$4;->val$callBack:Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$4;->this$0:Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager;->stopLocation()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$4;->val$delayCheckHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$4;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/EarthquakeMonitorDataManager$4;->val$callBack:Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;->onLocationSuccess(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
