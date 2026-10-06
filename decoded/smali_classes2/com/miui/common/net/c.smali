.class public Lcom/miui/common/net/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final JSON_KEY_RET_CODE:Ljava/lang/String; = "code"

.field static final JSON_KEY_RET_DESC:Ljava/lang/String; = "desc"

.field static final JSON_KEY_RET_OLDAGE:Ljava/lang/String; = "oldage"

.field static final RETURN_CODE_OK:Ljava/lang/String; = "0"


# instance fields
.field protected mCode:Ljava/lang/String;

.field protected mDesc:Ljava/lang/String;

.field protected mJsonStr:Ljava/lang/String;

.field protected mOldAge:I

.field protected mResponsed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/common/net/c;->parseJson(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/net/c;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/net/c;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getOldAge()I
    .locals 1

    iget v0, p0, Lcom/miui/common/net/c;->mOldAge:I

    return v0
.end method

.method public isResponsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/net/c;->mResponsed:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/common/net/c;->mCode:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parseJson(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, Lcom/miui/common/net/c;->mJsonStr:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/common/net/c;->mResponsed:Z

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/net/c;->mCode:Ljava/lang/String;

    const-string v1, "desc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/common/net/c;->mDesc:Ljava/lang/String;

    const-string v1, "oldage"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/common/net/c;->mOldAge:I

    invoke-virtual {p0, v0}, Lcom/miui/common/net/c;->doParseJson(Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/net/c;->mDesc:Ljava/lang/String;

    return-void
.end method

.method public setOldAge(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/net/c;->mOldAge:I

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/net/c;->mJsonStr:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/common/net/c;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/common/net/c;->mCode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/common/net/c;->mDesc:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "mCode:%s,mDesc:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/common/net/c;->mJsonStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "get data failed from server"

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/common/net/c;->mJsonStr:Ljava/lang/String;

    return-object v0
.end method
