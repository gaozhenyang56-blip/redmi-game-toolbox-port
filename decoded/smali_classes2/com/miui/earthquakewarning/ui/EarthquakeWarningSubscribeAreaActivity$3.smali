.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;->checkSupportCityData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity$3;->this$0:Lcom/miui/earthquakewarning/ui/EarthquakeWarningSubscribeAreaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isNeedToForceUpdateArea()Z

    move-result v0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    new-instance p1, Lcom/miui/earthquakewarning/service/RequestSupportCityTask;

    invoke-direct {p1}, Lcom/miui/earthquakewarning/service/RequestSupportCityTask;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method
