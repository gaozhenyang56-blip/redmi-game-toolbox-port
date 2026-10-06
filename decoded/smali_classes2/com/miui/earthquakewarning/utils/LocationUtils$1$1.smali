.class Lcom/miui/earthquakewarning/utils/LocationUtils$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/utils/LocationUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/utils/LocationUtils$1;

.field final synthetic val$delayCheckHandler:Landroid/os/Handler;

.field final synthetic val$locationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/utils/LocationUtils$1;Landroid/os/Handler;Landroid/location/LocationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1$1;->this$0:Lcom/miui/earthquakewarning/utils/LocationUtils$1;

    iput-object p2, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1$1;->val$delayCheckHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1$1;->val$locationManager:Landroid/location/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1$1;->val$delayCheckHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/LocationUtils;->access$000()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1$1;->this$0:Lcom/miui/earthquakewarning/utils/LocationUtils$1;

    iget-object v0, v0, Lcom/miui/earthquakewarning/utils/LocationUtils$1;->val$listener:Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;

    invoke-interface {v0, p1}, Lcom/miui/earthquakewarning/utils/LocationUtils$LocationResultListener;->locationSuccess(Landroid/location/Location;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1$1;->val$locationManager:Landroid/location/LocationManager;

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
