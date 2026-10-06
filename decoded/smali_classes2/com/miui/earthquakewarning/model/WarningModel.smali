.class public Lcom/miui/earthquakewarning/model/WarningModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/model/WarningModel$Columns;
    }
.end annotation


# instance fields
.field public _id:I

.field public cityCode:Ljava/lang/String;

.field public depth:I

.field public distance:D

.field public epicenter:Ljava/lang/String;

.field public eventID:J

.field public index_ew:I

.field public intensity:F

.field public isMyCity:I

.field public latitude:D

.field public longitude:D

.field public magnitude:F

.field public myLatitude:D

.field public myLongitude:D

.field public signature:Ljava/lang/String;

.field public startTime:J

.field public subscribe:I

.field public type:I

.field public updateTime:J

.field public warnTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/miui/earthquakewarning/model/WarningModel;

    iget v2, p0, Lcom/miui/earthquakewarning/model/WarningModel;->_id:I

    iget v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->_id:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/miui/earthquakewarning/model/WarningModel;->eventID:J

    iget-wide v4, p1, Lcom/miui/earthquakewarning/model/WarningModel;->eventID:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/miui/earthquakewarning/model/WarningModel;->index_ew:I

    iget v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->index_ew:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/miui/earthquakewarning/model/WarningModel;->magnitude:F

    iget v3, p0, Lcom/miui/earthquakewarning/model/WarningModel;->magnitude:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/miui/earthquakewarning/model/WarningModel;->longitude:D

    iget-wide v4, p0, Lcom/miui/earthquakewarning/model/WarningModel;->longitude:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/miui/earthquakewarning/model/WarningModel;->latitude:D

    iget-wide v4, p0, Lcom/miui/earthquakewarning/model/WarningModel;->latitude:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/miui/earthquakewarning/model/WarningModel;->myLongitude:D

    iget-wide v4, p0, Lcom/miui/earthquakewarning/model/WarningModel;->myLongitude:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/miui/earthquakewarning/model/WarningModel;->myLatitude:D

    iget-wide v4, p0, Lcom/miui/earthquakewarning/model/WarningModel;->myLatitude:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/miui/earthquakewarning/model/WarningModel;->startTime:J

    iget-wide v4, p1, Lcom/miui/earthquakewarning/model/WarningModel;->startTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/miui/earthquakewarning/model/WarningModel;->depth:I

    iget v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->depth:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/miui/earthquakewarning/model/WarningModel;->intensity:F

    iget v3, p0, Lcom/miui/earthquakewarning/model/WarningModel;->intensity:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p1, Lcom/miui/earthquakewarning/model/WarningModel;->distance:D

    iget-wide v4, p0, Lcom/miui/earthquakewarning/model/WarningModel;->distance:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/miui/earthquakewarning/model/WarningModel;->updateTime:J

    iget-wide v4, p1, Lcom/miui/earthquakewarning/model/WarningModel;->updateTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/miui/earthquakewarning/model/WarningModel;->type:I

    iget v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->type:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/miui/earthquakewarning/model/WarningModel;->warnTime:I

    iget v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->warnTime:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/miui/earthquakewarning/model/WarningModel;->subscribe:I

    iget v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->subscribe:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/miui/earthquakewarning/model/WarningModel;->isMyCity:I

    iget v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->isMyCity:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/miui/earthquakewarning/model/WarningModel;->epicenter:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->epicenter:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/earthquakewarning/model/WarningModel;->signature:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/earthquakewarning/model/WarningModel;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/earthquakewarning/model/WarningModel;->cityCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/earthquakewarning/model/WarningModel;->cityCode:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->_id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->eventID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->index_ew:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->magnitude:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->myLongitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->myLatitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->epicenter:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->startTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->signature:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->depth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->intensity:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->distance:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->updateTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->warnTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->cityCode:Ljava/lang/String;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->subscribe:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget v1, p0, Lcom/miui/earthquakewarning/model/WarningModel;->isMyCity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
