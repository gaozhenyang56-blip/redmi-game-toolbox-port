.class public Lcom/miui/networkassistant/webapi/CloudModuleResult;
.super Lcom/miui/common/net/c;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudModuleResult"


# instance fields
.field private mContentJson:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/net/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)Z
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/miui/networkassistant/webapi/CloudModuleResult;->mContentJson:Lorg/json/JSONObject;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "productData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/webapi/CloudModuleResult;->mContentJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/networkassistant/webapi/CloudModuleResult;->TAG:Ljava/lang/String;

    const-string v1, "parse json failed :"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getContentJson()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/CloudModuleResult;->mContentJson:Lorg/json/JSONObject;

    return-object v0
.end method
