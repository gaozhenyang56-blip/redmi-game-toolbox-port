.class public Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask$ResultListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/miui/earthquakewarning/model/AreaCodeResult;",
        ">;"
    }
.end annotation


# instance fields
.field private listener:Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask$ResultListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private parse(Ljava/lang/String;)Lcom/miui/earthquakewarning/model/AreaCodeResult;
    .locals 3

    new-instance v0, Lcom/miui/earthquakewarning/model/AreaCodeResult;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/model/AreaCodeResult;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "err"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->setErr(Z)V

    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    invoke-direct {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;-><init>()V

    const-string v2, "cityId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->setCityId(I)V

    const-string v2, "districtId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->setDistrictId(I)V

    const-string v2, "district"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->setDistrict(Ljava/lang/String;)V

    const-string v2, "city"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->setCity(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->setData(Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "WcDisasterTask"

    const-string v1, "RequestAreaCodeTask: parse json failed"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/miui/earthquakewarning/model/AreaCodeResult;
    .locals 3

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, "longitude"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    const-string v1, "latitude"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lp4/i;

    const-string v1, "ew_requestareacode"

    invoke-direct {p1, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "https://api.sec.miui.com/LBS/geoconv/admin"

    const-string v2, "7htr5238-a8cf-3k79-ec73-75382145ns5c"

    invoke-static {v0, v1, v2, p1}, Leg/j;->r(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask;->parse(Ljava/lang/String;)Lcom/miui/earthquakewarning/model/AreaCodeResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask;->doInBackground([Ljava/lang/String;)Lcom/miui/earthquakewarning/model/AreaCodeResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/miui/earthquakewarning/model/AreaCodeResult;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->isErr()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getCityId()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getCityId()I

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask;->listener:Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask$ResultListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask$ResultListener;->onResult(Lcom/miui/earthquakewarning/model/AreaCodeResult;)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/earthquakewarning/model/AreaCodeResult;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask;->onPostExecute(Lcom/miui/earthquakewarning/model/AreaCodeResult;)V

    return-void
.end method

.method public setListener(Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask$ResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask;->listener:Lcom/miui/warningcenter/disasterwarning/service/RequestAreaCodeTask$ResultListener;

    return-void
.end method
