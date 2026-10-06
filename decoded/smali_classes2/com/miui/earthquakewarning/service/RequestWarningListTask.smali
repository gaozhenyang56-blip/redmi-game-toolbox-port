.class public Lcom/miui/earthquakewarning/service/RequestWarningListTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/service/RequestWarningListTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/miui/earthquakewarning/model/WarningResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestWarningListTask"


# instance fields
.field private listener:Lcom/miui/earthquakewarning/service/RequestWarningListTask$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private parse(Ljava/lang/String;)Lcom/miui/earthquakewarning/model/WarningResult;
    .locals 7

    new-instance v0, Lcom/miui/earthquakewarning/model/WarningResult;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/model/WarningResult;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/earthquakewarning/model/WarningResult;->setCode(I)V

    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/miui/earthquakewarning/model/WarningModel;

    invoke-direct {v3}, Lcom/miui/earthquakewarning/model/WarningModel;-><init>()V

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "event_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v3, Lcom/miui/earthquakewarning/model/WarningModel;->eventID:J

    const-string v5, "latitude"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/miui/earthquakewarning/model/WarningModel;->latitude:D

    const-string v5, "longitude"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/miui/earthquakewarning/model/WarningModel;->longitude:D

    const-string v5, "magnitude"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v3, Lcom/miui/earthquakewarning/model/WarningModel;->magnitude:F

    const-string v5, "depth"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/miui/earthquakewarning/model/WarningModel;->depth:I

    const-string v5, "signature"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/miui/earthquakewarning/model/WarningModel;->signature:Ljava/lang/String;

    const-string v5, "startAt"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/miui/earthquakewarning/model/WarningModel;->startTime:J

    const-string v5, "epicenter"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/miui/earthquakewarning/model/WarningModel;->epicenter:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/miui/earthquakewarning/model/WarningResult;->setData(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "RequestWarningListTask"

    const-string v1, "parse json failed"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/miui/earthquakewarning/model/WarningResult;
    .locals 3

    invoke-static {}, Lef/x;->z()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lp4/i;

    const-string v1, "ew_requestwarninglist"

    invoke-direct {p1, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "https://srv.sec.miui.com/earthquake/warning/records"

    const-string v2, "7htr5238-a8cf-3k79-ec73-75382145ns5c"

    invoke-static {v0, v1, v2, p1}, Leg/j;->r(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/service/RequestWarningListTask;->parse(Ljava/lang/String;)Lcom/miui/earthquakewarning/model/WarningResult;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/RequestWarningListTask;->doInBackground([Ljava/lang/String;)Lcom/miui/earthquakewarning/model/WarningResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/miui/earthquakewarning/model/WarningResult;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/RequestWarningListTask;->listener:Lcom/miui/earthquakewarning/service/RequestWarningListTask$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/earthquakewarning/service/RequestWarningListTask$Listener;->onPost(Lcom/miui/earthquakewarning/model/WarningResult;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/RequestWarningListTask;->listener:Lcom/miui/earthquakewarning/service/RequestWarningListTask$Listener;

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/earthquakewarning/model/WarningResult;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/RequestWarningListTask;->onPostExecute(Lcom/miui/earthquakewarning/model/WarningResult;)V

    return-void
.end method

.method public setListener(Lcom/miui/earthquakewarning/service/RequestWarningListTask$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/RequestWarningListTask;->listener:Lcom/miui/earthquakewarning/service/RequestWarningListTask$Listener;

    return-void
.end method
