.class public Lcom/miui/earthquakewarning/service/RequestSignatureTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/service/RequestSignatureTask$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/miui/earthquakewarning/model/SignatureReuslt;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestSignatureTask"


# instance fields
.field private listener:Lcom/miui/earthquakewarning/service/RequestSignatureTask$Listener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/RequestSignatureTask;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static download(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "channel"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lp4/i;

    const-string v1, "ew_requestsignature"

    invoke-direct {p0, v1}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v1, "https://srv.sec.miui.com/earthquake/warning/signature"

    const-string v2, "7htr5238-a8cf-3k79-ec73-75382145ns5c"

    invoke-static {v0, v1, v2, p0}, Leg/j;->r(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parse(Ljava/lang/String;)Lcom/miui/earthquakewarning/model/SignatureReuslt;
    .locals 14

    const-string v0, "code"

    new-instance v1, Lcom/miui/earthquakewarning/model/SignatureReuslt;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/model/SignatureReuslt;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/miui/earthquakewarning/model/SignatureReuslt;->setCode(I)V

    const-string p1, "datas"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;

    invoke-direct {v6}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;-><init>()V

    const-string v7, "channel"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;->setChannel(Ljava/lang/String;)V

    const-string v7, "data"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v3

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_1

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v10, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;

    invoke-direct {v10}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;-><init>()V

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->setCode(I)V

    const-string v11, "district"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->setDistrict(Ljava/lang/String;)V

    const-string v11, "signs"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v3

    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_0

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {v10, v11}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DataBean;->setSigns(Ljava/util/List;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v7}, Lcom/miui/earthquakewarning/model/SignatureReuslt$DatasBean;->setData(Ljava/util/List;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Lcom/miui/earthquakewarning/model/SignatureReuslt;->setDatas(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p1, "RequestSignatureTask"

    const-string v0, "parse json failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/miui/earthquakewarning/model/SignatureReuslt;
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/miui/earthquakewarning/service/RequestSignatureTask;->download(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/earthquakewarning/utils/FileUtils;->saveSignatureToData(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/service/RequestSignatureTask;->parse(Ljava/lang/String;)Lcom/miui/earthquakewarning/model/SignatureReuslt;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/RequestSignatureTask;->doInBackground([Ljava/lang/String;)Lcom/miui/earthquakewarning/model/SignatureReuslt;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/miui/earthquakewarning/model/SignatureReuslt;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/service/RequestSignatureTask;->listener:Lcom/miui/earthquakewarning/service/RequestSignatureTask$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/earthquakewarning/service/RequestSignatureTask$Listener;->onPost(Lcom/miui/earthquakewarning/model/SignatureReuslt;)V

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/FileUtils;->getSignatureFromData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/miui/earthquakewarning/service/ManageAreaDataTask;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/earthquakewarning/model/SignatureReuslt;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/service/RequestSignatureTask;->onPostExecute(Lcom/miui/earthquakewarning/model/SignatureReuslt;)V

    return-void
.end method

.method public setListener(Lcom/miui/earthquakewarning/service/RequestSignatureTask$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/service/RequestSignatureTask;->listener:Lcom/miui/earthquakewarning/service/RequestSignatureTask$Listener;

    return-void
.end method
