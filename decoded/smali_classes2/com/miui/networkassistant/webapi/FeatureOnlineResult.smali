.class public Lcom/miui/networkassistant/webapi/FeatureOnlineResult;
.super Lcom/miui/common/net/c;
.source "SourceFile"


# instance fields
.field private mStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/net/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/net/c;->doParseJson(Lorg/json/JSONObject;)Z

    invoke-virtual {p0}, Lcom/miui/common/net/c;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/net/c;->mDesc:Ljava/lang/String;

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;->mStatus:Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public isOnline()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;->mStatus:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;->mStatus:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/common/net/c;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/common/net/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;->mStatus:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "mStatus:%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/miui/common/net/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
