.class public Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;
.super Lcom/miui/networkassistant/webapi/FeatureOnlineResult;
.source "SourceFile"


# instance fields
.field private mOrderTips:Ljava/lang/String;

.field private mOrderType:I

.field private mPurchaseHotActivityId:Ljava/lang/String;

.field private mTrafficPassStatus:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;->doParseJson(Lorg/json/JSONObject;)Z

    invoke-virtual {p0}, Lcom/miui/common/net/c;->isSuccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "orderType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mOrderType:I

    const-string v2, "orderTip"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mOrderTips:Ljava/lang/String;

    const-string v2, "onLineActivityId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mPurchaseHotActivityId:Ljava/lang/String;

    :cond_0
    const-string v0, "miflow"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "status"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mTrafficPassStatus:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mTrafficPassStatus:I

    :cond_2
    :goto_0
    return v1
.end method

.method public getOrderType()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mOrderType:I

    return v0
.end method

.method public getPurchaseActivityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mPurchaseHotActivityId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrafficPassStatus()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mTrafficPassStatus:I

    return v0
.end method

.method public getmOrderTips()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mOrderTips:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/common/net/c;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mOrderType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mOrderTips:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/miui/networkassistant/webapi/PurchaseOnlineResult;->mPurchaseHotActivityId:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, ",mOrderType:%s,mOrderTips:%s,mPurchaseHotActivityId: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/miui/networkassistant/webapi/FeatureOnlineResult;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
