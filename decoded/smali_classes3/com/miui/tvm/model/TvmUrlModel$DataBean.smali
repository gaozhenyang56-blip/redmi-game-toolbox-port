.class public Lcom/miui/tvm/model/TvmUrlModel$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/tvm/model/TvmUrlModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private age:I

.field private file:Ljava/lang/String;

.field private sha256sum:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private size:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    iget v0, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->age:I

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getSha256sum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->sha256sum:Ljava/lang/String;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->size:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAge(I)V
    .locals 0

    iput p1, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->age:I

    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->file:Ljava/lang/String;

    return-void
.end method

.method public setSha256sum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->sha256sum:Ljava/lang/String;

    return-void
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->sign:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->size:I

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataBean{file=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sha256sum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->sha256sum:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sign=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->sign:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/tvm/model/TvmUrlModel$DataBean;->age:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
