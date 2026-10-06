.class Lcom/miui/earthquakewarning/utils/LocationUtils$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/utils/LocationUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/utils/LocationUtils$2;

.field final synthetic val$delayCheckHandler:Landroid/os/Handler;

.field final synthetic val$locationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/utils/LocationUtils$2;Landroid/os/Handler;Landroid/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$2$1;->this$0:Lcom/miui/earthquakewarning/utils/LocationUtils$2;

    iput-object p2, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$2$1;->val$delayCheckHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$2$1;->val$locationManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$2$1;->val$delayCheckHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/LocationUtils;->access$000()V

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    iget-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$2$1;->this$0:Lcom/miui/earthquakewarning/utils/LocationUtils$2;

    iget-object v2, p1, Lcom/miui/earthquakewarning/utils/LocationUtils$2;->val$context:Landroid/content/Context;

    iget-object v7, p1, Lcom/miui/earthquakewarning/utils/LocationUtils$2;->val$listener:Lcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;

    invoke-static/range {v2 .. v7}, Lcom/miui/earthquakewarning/utils/LocationUtils;->getGeoArea(Landroid/content/Context;DDLcom/miui/earthquakewarning/utils/LocationUtils$AreaResultListener;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$2$1;->val$locationManager:Landroid/location/LocationManager;

    invoke-virtual {p1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

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
