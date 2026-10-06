.class public Lcom/miui/earthquakewarning/model/SaveAreaResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/model/SaveAreaResult$Columns;
    }
.end annotation


# instance fields
.field private city:Ljava/lang/String;

.field private cityCode:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private counties:Ljava/lang/String;

.field private isSelect:Z

.field private province:Ljava/lang/String;

.field private subscribeTime:J

.field private support:I

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getCounties()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->counties:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscribeTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->subscribeTime:J

    return-wide v0
.end method

.method public getSupport()I
    .locals 1

    iget v0, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->support:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->updateTime:J

    return-wide v0
.end method

.method public isSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->isSelect:Z

    return v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->city:Ljava/lang/String;

    return-void
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->cityCode:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->code:Ljava/lang/String;

    return-void
.end method

.method public setCounties(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->counties:Ljava/lang/String;

    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->province:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->isSelect:Z

    return-void
.end method

.method public setSubscribeTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->subscribeTime:J

    return-void
.end method

.method public setSupport(I)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->support:I

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/earthquakewarning/model/SaveAreaResult;->updateTime:J

    return-void
.end method
