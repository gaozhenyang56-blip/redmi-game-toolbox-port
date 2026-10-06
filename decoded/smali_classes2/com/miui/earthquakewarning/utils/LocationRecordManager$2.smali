.class Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/utils/LocationRecordManager;->startLocation(ZLcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/utils/LocationRecordManager;

.field final synthetic val$callBack:Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;

.field final synthetic val$delayCheckHandler:Landroid/os/Handler;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/utils/LocationRecordManager;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;->this$0:Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    iput-object p2, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;->val$delayCheckHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;->val$runnable:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;->val$callBack:Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;->this$0:Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->stopLocation()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;->val$delayCheckHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;->val$runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;->val$callBack:Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;->onLocationSuccess(Landroid/location/Location;)V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;->this$0:Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkListener onProviderDisabled:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->access$000(Lcom/miui/earthquakewarning/utils/LocationRecordManager;Ljava/lang/String;)V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;->this$0:Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkListener onProviderEnabled:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->access$000(Lcom/miui/earthquakewarning/utils/LocationRecordManager;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationRecordManager$2;->this$0:Lcom/miui/earthquakewarning/utils/LocationRecordManager;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNetworkListener onStatusChanged:("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/earthquakewarning/utils/LocationRecordManager;->access$000(Lcom/miui/earthquakewarning/utils/LocationRecordManager;Ljava/lang/String;)V

    return-void
.end method
