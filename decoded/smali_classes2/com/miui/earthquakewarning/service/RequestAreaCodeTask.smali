.class public Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$Listener;
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


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestAreaCodeTask"


# instance fields
.field private listener:Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;->isDistrictSupport(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isDistrictSupport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move p1, v0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "geocode"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "support"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    return v3

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private matchMyPosition(Landroid/content/Context;Lcom/miui/earthquakewarning/model/AreaCodeResult;)V
    .locals 2

    new-instance p1, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;-><init>(ILjava/lang/String;)V

    new-instance v0, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$1;-><init>(Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;Lcom/miui/earthquakewarning/model/AreaCodeResult;)V

    invoke-virtual {p1, v0}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;->setCallBack(Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

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

    const-string v2, "city"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->setCity(Ljava/lang/String;)V

    const-string v2, "districtId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->setDistrictId(I)V

    const-string v2, "district"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->setDistrict(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->setData(Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "RequestAreaCodeTask"

    const-string v1, "parse json failed"

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

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;->parse(Ljava/lang/String;)Lcom/miui/earthquakewarning/model/AreaCodeResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;->doInBackground([Ljava/lang/String;)Lcom/miui/earthquakewarning/model/AreaCodeResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/miui/earthquakewarning/model/AreaCodeResult;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->isErr()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;->listener:Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$Listener;->onPost(Lcom/miui/earthquakewarning/model/AreaCodeResult;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getCityId()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/model/AreaCodeResult;->getData()Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/AreaCodeResult$DataBean;->getCityId()I

    move-result v0

    :cond_1
    if-lez v0, :cond_3

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getPreviousAreaCode()I

    move-result v1

    if-lez v1, :cond_2

    if-eq v1, v0, :cond_2

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->unsetTopicForPush(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;->matchMyPosition(Landroid/content/Context;Lcom/miui/earthquakewarning/model/AreaCodeResult;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/earthquakewarning/model/AreaCodeResult;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;->onPostExecute(Lcom/miui/earthquakewarning/model/AreaCodeResult;)V

    return-void
.end method

.method public setListener(Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/RequestAreaCodeTask;->listener:Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$Listener;

    return-void
.end method
