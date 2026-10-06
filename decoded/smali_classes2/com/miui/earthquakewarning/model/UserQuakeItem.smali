.class public Lcom/miui/earthquakewarning/model/UserQuakeItem;
.super Lcom/miui/earthquakewarning/model/QuakeItem;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UserQuakeItem"


# instance fields
.field private cityCode:Ljava/lang/String;

.field private countTruth:I

.field private countdown:I

.field private distance:F

.field private intensity:F

.field private isMyCity:I

.field private isReceiveOneMinLater:Z

.field private isTrigger:Z

.field private location:Lcom/miui/earthquakewarning/model/LocationModel;

.field private subscribe:I

.field private xmUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/earthquakewarning/model/QuakeItem;-><init>()V

    new-instance v0, Lcom/miui/earthquakewarning/model/LocationModel;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/model/LocationModel;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->location:Lcom/miui/earthquakewarning/model/LocationModel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->isReceiveOneMinLater:Z

    return-void
.end method


# virtual methods
.method public calIC(Lcom/miui/earthquakewarning/IntensityTransformer;)Z
    .locals 10

    new-instance v9, Lcom/miui/earthquakewarning/soundplay/CalcCountdown;

    invoke-direct {v9}, Lcom/miui/earthquakewarning/soundplay/CalcCountdown;-><init>()V

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/LocationModel;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/LocationModel;->getLongitude()D

    move-result-wide v3

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->location:Lcom/miui/earthquakewarning/model/LocationModel;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/LocationModel;->getLatitude()D

    move-result-wide v5

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->location:Lcom/miui/earthquakewarning/model/LocationModel;

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/model/LocationModel;->getLongitude()D

    move-result-wide v7

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Lcom/miui/earthquakewarning/soundplay/CalcCountdown;->distance(DDDD)F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getMagnitude()F

    move-result v1

    invoke-virtual {v9, v1, v0}, Lcom/miui/earthquakewarning/soundplay/CalcCountdown;->getIntensity(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/miui/earthquakewarning/IntensityTransformer;->transform(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->intensity:F

    invoke-virtual {p0, v0}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->setDistance(F)V

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getDepth()F

    move-result p1

    invoke-virtual {v9, p1, v0}, Lcom/miui/earthquakewarning/soundplay/CalcCountdown;->getCountDownSeconds(FF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->countdown:I

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->setCountTruth(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->countdown:I

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->countdown:I

    const/4 v0, 0x0

    const/16 v1, 0x12c

    if-gt p1, v1, :cond_1

    const/16 v1, -0x12c

    if-ge p1, v1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "countdown is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->countdown:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "seconds,too long!"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UserQuakeItem"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getCityCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->cityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCountTruth()I
    .locals 1

    iget v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->countTruth:I

    return v0
.end method

.method public getCountdown()I
    .locals 1

    iget v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->countdown:I

    return v0
.end method

.method public getDistance()F
    .locals 1

    iget v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->distance:F

    return v0
.end method

.method public getIntensity()F
    .locals 1

    iget v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->intensity:F

    return v0
.end method

.method public getIsMyCity()I
    .locals 1

    iget v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->isMyCity:I

    return v0
.end method

.method public getLocation()Lcom/miui/earthquakewarning/model/LocationModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->location:Lcom/miui/earthquakewarning/model/LocationModel;

    return-object v0
.end method

.method public getReceiveOneMinLater()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/model/QuakeItem;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/earthquakewarning/model/UserQuakeItem;->setReceiveOneMinLater(Z)V

    return-void
.end method

.method public getSubscribe()I
    .locals 1

    iget v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->subscribe:I

    return v0
.end method

.method public getXmUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->xmUpdateTime:J

    return-wide v0
.end method

.method public isReceiveOneMinLater()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->isReceiveOneMinLater:Z

    return v0
.end method

.method public isTrigger()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->isTrigger:Z

    return v0
.end method

.method public setCityCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->cityCode:Ljava/lang/String;

    return-void
.end method

.method public setCountTruth(I)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->countTruth:I

    return-void
.end method

.method public setCountdown(I)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->countdown:I

    return-void
.end method

.method public setDistance(F)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->distance:F

    return-void
.end method

.method public setIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->intensity:F

    return-void
.end method

.method public setIsMyCity(I)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->isMyCity:I

    return-void
.end method

.method public setLocation(Lcom/miui/earthquakewarning/model/LocationModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->location:Lcom/miui/earthquakewarning/model/LocationModel;

    return-void
.end method

.method public setReceiveOneMinLater(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->isReceiveOneMinLater:Z

    return-void
.end method

.method public setSubscribe(I)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->subscribe:I

    return-void
.end method

.method public setTrigger(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->isTrigger:Z

    return-void
.end method

.method public setXmUpdateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/earthquakewarning/model/UserQuakeItem;->xmUpdateTime:J

    return-void
.end method
