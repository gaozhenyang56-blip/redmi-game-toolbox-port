.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack;->onLocationSuccess(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack;

.field final synthetic val$activity:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack;Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack$1;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack$1;->val$activity:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPost(Lcom/miui/earthquakewarning/model/AreaCodeResult;)V
    .locals 3

    new-instance v0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack$1$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack$1$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$MyCallBack$1;Lcom/miui/earthquakewarning/model/AreaCodeResult;)V

    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->setCallBack(Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
