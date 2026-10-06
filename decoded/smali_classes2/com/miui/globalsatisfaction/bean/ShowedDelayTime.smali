.class public Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private delayTime:I

.field private displayTimeStamp:Ljava/lang/String;

.field private isValid:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->delayTime:I

    iput-object p2, p0, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->displayTimeStamp:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->isValid:Z

    return-void
.end method


# virtual methods
.method public getDelayTime()I
    .locals 1

    iget v0, p0, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->delayTime:I

    return v0
.end method

.method public getDisplayTimeStamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->displayTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->isValid:Z

    return v0
.end method

.method public setDelayTime(I)V
    .locals 0

    iput p1, p0, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->delayTime:I

    return-void
.end method

.method public setDisplayTimeStamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->displayTimeStamp:Ljava/lang/String;

    return-void
.end method

.method public setValid(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->isValid:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShowedDelayTime{delayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->delayTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayTimeStamp=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->displayTimeStamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
