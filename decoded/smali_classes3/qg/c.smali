.class public Lqg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqg/c;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lqg/c;->c(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lqg/c;->b:Z

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lqg/c;->b:Z

    return v1

    :cond_0
    iput-object p1, p0, Lqg/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v2, 0x1

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
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const-string v3, "versionType"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "development"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    move-object v0, p1

    :cond_1
    const-string p1, "incremental_scanning"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sget-object v3, Lcom/miui/securityscan/scanner/o;->o:Lcom/miui/securityscan/scanner/o$b;

    invoke-virtual {v3}, Lcom/miui/securityscan/scanner/o$b;->a()Lcom/miui/securityscan/scanner/o;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/miui/securityscan/scanner/o;->v(Z)V

    const-string p1, "incremental_frequency"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v3, "key_incremental_frequency"

    invoke-static {v3, p1}, Lr4/a;->p(Ljava/lang/String;I)V

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
    iput-boolean v1, p0, Lqg/c;->b:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse json failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "SuperPowerSaveManager"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    :goto_1
    if-nez p1, :cond_2

    iput-boolean v1, p0, Lqg/c;->b:Z

    return v1

    :cond_2
    iput-boolean v2, p0, Lqg/c;->b:Z

    invoke-virtual {p0, p1}, Lqg/c;->a(Lorg/json/JSONObject;)V

    return v2
.end method
