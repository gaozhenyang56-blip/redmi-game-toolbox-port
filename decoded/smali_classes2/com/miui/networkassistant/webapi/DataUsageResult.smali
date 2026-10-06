.class public Lcom/miui/networkassistant/webapi/DataUsageResult;
.super Lcom/miui/common/net/c;
.source "SourceFile"


# instance fields
.field private mBillLeft:J

.field private mBrand:Ljava/lang/String;

.field private mCallTimeLeft:J

.field private mCallTimeTotal:J

.field private mCityCode:I

.field private mIdleLeft:J

.field private mIdleOn:Z

.field private mIdleTotal:J

.field private mLeftFlow:J

.field private mOperator:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mProvinceCode:I

.field private mTotal:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/net/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doParseJson(Lorg/json/JSONObject;)Z
    .locals 9

    invoke-super {p0, p1}, Lcom/miui/common/net/c;->doParseJson(Lorg/json/JSONObject;)Z

    invoke-virtual {p0}, Lcom/miui/common/net/c;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "info"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "totalflow"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    mul-double/2addr v3, v5

    double-to-long v3, v3

    iput-wide v3, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mTotal:J

    const-string v0, "leftflow"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-long v3, v3

    iput-wide v3, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mLeftFlow:J

    const-string v0, "idleon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleOn:Z

    const-string v0, "identify"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mPhoneNumber:Ljava/lang/String;

    const-string v0, "brand"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBrand:Ljava/lang/String;

    const-string v0, "sp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mOperator:Ljava/lang/String;

    const-string v0, "balance"

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBillLeft:J

    const-string v0, "totalCall"

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeTotal:J

    const-string v0, "leftCall"

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeLeft:J

    const-string v0, "province"

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mProvinceCode:I

    const-string v0, "city"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCityCode:I

    iget-boolean v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleOn:Z

    if-eqz v0, :cond_1

    const-string v0, "idletotal"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-long v3, v3

    iput-wide v3, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleTotal:J

    const-string v0, "idleleft"

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleLeft:J

    goto :goto_0

    :cond_0
    const-string v0, "desc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/net/c;->mDesc:Ljava/lang/String;

    const-string v0, "oldage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/common/net/c;->mOldAge:I

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getBillLeft()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBillLeft:J

    return-wide v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBrand:Ljava/lang/String;

    return-object v0
.end method

.method public getCallTimeLeft()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeLeft:J

    return-wide v0
.end method

.method public getCallTimeTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeTotal:J

    return-wide v0
.end method

.method public getCallTimeUsed()J
    .locals 4

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeTotal:J

    iget-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeLeft:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getCityCode()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCityCode:I

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/net/c;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIdleLeft()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleLeft:J

    return-wide v0
.end method

.method public getIdleTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleTotal:J

    return-wide v0
.end method

.method public getIdleUsed()J
    .locals 5

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleTotal:J

    iget-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleLeft:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public getLeftFlow()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mLeftFlow:J

    return-wide v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mOperator:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getProvinceCode()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mProvinceCode:I

    return v0
.end method

.method public getTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mTotal:J

    return-wide v0
.end method

.method public getUsedFlow()J
    .locals 5

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mTotal:J

    iget-wide v2, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mLeftFlow:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public isBillOn()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBillLeft:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCallTimeOn()Z
    .locals 4

    iget-wide v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeLeft:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdleOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleOn:Z

    return v0
.end method

.method public isServerError()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/common/net/c;->mCode:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isServiceNotSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/common/net/c;->mCode:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/net/c;->mCode:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBrand:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/net/c;->mCode:Ljava/lang/String;

    return-void
.end method

.method public setOperator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mOperator:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setTotal(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mTotal:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/common/net/c;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", mTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLeftFlow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mLeftFlow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mIdleOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIdleTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mIdleLeftFlow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mIdleLeft:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBrand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOperator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBillLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mBillLeft:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCallTimeTotal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeTotal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mCallTimeLeft: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCallTimeLeft:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mProvinceCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mProvinceCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCityCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/networkassistant/webapi/DataUsageResult;->mCityCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/miui/common/net/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/miui/common/net/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
