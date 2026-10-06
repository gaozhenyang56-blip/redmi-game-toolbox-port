.class Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;->onLocationSuccess(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3$1;->this$1:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/miui/earthquakewarning/model/AreaCodeResult;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getDistrictId()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getDistrictId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/Utils;->getPreviousUploadTopic()I

    move-result v1

    if-lez v0, :cond_3

    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3$1;->this$1:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;

    iget-object v2, v2, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;->this$0:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->access$000(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;Ljava/lang/String;)V

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3$1;->this$1:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;

    iget-object v2, v2, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService$3;->this$0:Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;->access$100(Lcom/miui/warningcenter/disasterwarning/service/WarningCenterDisasterService;Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/Utils;->setPreviousUploadTopic(I)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getCity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getDistrict()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/warningcenter/disasterwarning/Utils;->setPreviousArea(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
