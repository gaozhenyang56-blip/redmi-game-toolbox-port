.class public Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mSize:J

.field private mUsedCount:I

.field private mUsedTime:J


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mUsedCount:I

    iput-wide p2, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mUsedTime:J

    iput-object p4, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mPackageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mAppName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCount()V
    .locals 1

    iget v0, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mUsedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mUsedCount:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;

    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->getmPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mSize:J

    return-wide v0
.end method

.method public getmAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getmPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getmUsedCount()I
    .locals 1

    iget v0, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mUsedCount:I

    return v0
.end method

.method public getmUsedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mUsedTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mUsedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mSize:J

    return-void
.end method

.method public setmAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setmPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setmUsedCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mUsedCount:I

    return-void
.end method

.method public setmUsedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mUsedTime:J

    return-void
.end method

.method public toJson()Lcom/google/gson/JsonObject;
    .locals 3

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mPackageName:Ljava/lang/String;

    const-string v2, "pkg"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mUsedCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-wide v1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mUsedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-wide v1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsedPackageBean{mUsedCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mUsedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUsedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mUsedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mAppName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mSize=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->mSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
