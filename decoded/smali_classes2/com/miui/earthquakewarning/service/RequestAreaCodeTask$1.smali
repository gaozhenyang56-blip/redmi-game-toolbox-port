.class Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;->matchMyPosition(Landroid/content/Context;Lcom/miui/earthquakewarning/model/AreaCodeResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;

.field final synthetic val$areaCodeResult:Lcom/miui/earthquakewarning/model/AreaCodeResult;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;Lcom/miui/earthquakewarning/model/AreaCodeResult;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$1;->this$0:Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;

    iput-object p2, p0, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$1;->val$areaCodeResult:Lcom/miui/earthquakewarning/model/AreaCodeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/earthquakewarning/model/SaveAreaResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$1;->val$areaCodeResult:Lcom/miui/earthquakewarning/model/AreaCodeResult;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getCityId()I

    move-result v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$1;->val$areaCodeResult:Lcom/miui/earthquakewarning/model/AreaCodeResult;

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getDistrictId()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v4}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/earthquakewarning/model/SaveAreaResult;

    invoke-virtual {v5}, Lcom/miui/earthquakewarning/model/SaveAreaResult;->getCounties()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$1;->this$0:Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;->access$000(Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/miui/earthquakewarning/utils/Utils;->setPreviousAreaCode(I)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$1;->val$areaCodeResult:Lcom/miui/earthquakewarning/model/AreaCodeResult;

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getDistrictId()I

    move-result p1

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/Utils;->setPreviousAreaDistrictCode(I)V

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->setTopicForPush(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
