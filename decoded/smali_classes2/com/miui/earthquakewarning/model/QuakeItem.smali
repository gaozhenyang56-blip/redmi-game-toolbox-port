.class public Lcom/miui/earthquakewarning/model/QuakeItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/model/QuakeItem$Type;
    }
.end annotation


# static fields
.field public static final TYPE_DEMO:I = 0x3

.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_TEST:I = 0x1

.field public static final TYPE_TEST_RUN:I = 0x2


# instance fields
.field private channel:Ljava/lang/String;

.field private depth:F

.field private epiLocation:Lcom/miui/earthquakewarning/model/LocationModel;

.field private eventID:J

.field private index:I

.field private isValidate:Z

.field private magnitude:F

.field private signature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private signatureText:Ljava/lang/String;

.field private startTime:J

.field private type:I

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/earthquakewarning/model/LocationModel;

    invoke-direct {v0}, Lcom/miui/earthquakewarning/model/LocationModel;-><init>()V

    iput-object v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->epiLocation:Lcom/miui/earthquakewarning/model/LocationModel;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->startTime:J

    iput-wide v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->updateTime:J

    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getDepth()F
    .locals 1

    iget v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->depth:F

    return v0
.end method

.method public getEpiLocation()Lcom/miui/earthquakewarning/model/LocationModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->epiLocation:Lcom/miui/earthquakewarning/model/LocationModel;

    return-object v0
.end method

.method public getEventID()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->eventID:J

    return-wide v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->index:I

    return v0
.end method

.method public getMagnitude()F
    .locals 1

    iget v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->magnitude:F

    return v0
.end method

.method public getSignature()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->signature:Ljava/util/List;

    return-object v0
.end method

.method public getSignatureText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->signatureText:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->startTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->type:I

    return v0
.end method

.method public getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->updateTime:J

    return-wide v0
.end method

.method public isValidate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->isValidate:Z

    return v0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->channel:Ljava/lang/String;

    return-void
.end method

.method public setDepth(F)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->depth:F

    return-void
.end method

.method public setEpiLocation(Lcom/miui/earthquakewarning/model/LocationModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->epiLocation:Lcom/miui/earthquakewarning/model/LocationModel;

    return-void
.end method

.method public setEventID(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->eventID:J

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->index:I

    return-void
.end method

.method public setMagnitude(F)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->magnitude:F

    return-void
.end method

.method public setSignature(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->signature:Ljava/util/List;

    return-void
.end method

.method public setSignatureText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->signatureText:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->startTime:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->type:I

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->updateTime:J

    return-void
.end method

.method public setValidate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/model/QuakeItem;->isValidate:Z

    return-void
.end method
