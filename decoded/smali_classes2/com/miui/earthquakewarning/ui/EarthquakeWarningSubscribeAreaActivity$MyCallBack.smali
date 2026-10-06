.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/utils/LocationRecordManager$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyCallBack"
.end annotation


# instance fields
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onLocationFailed(Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Utils.TAG_TASK"

    const-string v1, "location failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$1100(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MainHandler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$1000(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e7

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onLocationSuccess(Landroid/location/Location;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;-><init>()V

    new-instance v2, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack;Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V

    invoke-virtual {v1, v2}, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;->setListener(Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$Listener;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->access$1000(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e7

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
