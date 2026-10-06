.class public Lcom/miui/luckymoney/webapi/RequestResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestResult"


# instance fields
.field protected DEBUG:Z

.field protected isSuccess:Z

.field protected mJsonStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/webapi/RequestResult;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/webapi/RequestResult;->DEBUG:Z

    iput-object p1, p0, Lcom/miui/luckymoney/webapi/RequestResult;->mJsonStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/luckymoney/webapi/RequestResult;->parseJson(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/webapi/RequestResult;->mJsonStr:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/webapi/RequestResult;->isSuccess:Z

    return v0
.end method

.method public parseJson(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/luckymoney/webapi/RequestResult;->isSuccess:Z

    return v1

    :cond_0
    iput-object p1, p0, Lcom/miui/luckymoney/webapi/RequestResult;->mJsonStr:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/miui/luckymoney/webapi/RequestResult;->DEBUG:Z

    const-string v2, "RequestResult"

    if-eqz v0, :cond_1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "data"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string p1, "productData"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iput-boolean v1, p0, Lcom/miui/luckymoney/webapi/RequestResult;->isSuccess:Z

    const-string v3, "parse json failed :"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v0

    :goto_1
    if-nez p1, :cond_2

    iput-boolean v1, p0, Lcom/miui/luckymoney/webapi/RequestResult;->isSuccess:Z

    return v1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/luckymoney/webapi/RequestResult;->isSuccess:Z

    invoke-virtual {p0, p1}, Lcom/miui/luckymoney/webapi/RequestResult;->doParseJson(Lorg/json/JSONObject;)V

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
