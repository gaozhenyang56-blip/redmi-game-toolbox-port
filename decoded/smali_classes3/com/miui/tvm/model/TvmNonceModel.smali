.class public Lcom/miui/tvm/model/TvmNonceModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/tvm/model/TvmNonceModel$DataBean;
    }
.end annotation


# instance fields
.field private code:I

.field private data:Lcom/miui/tvm/model/TvmNonceModel$DataBean;

.field private description:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private retriable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/miui/tvm/model/TvmNonceModel;->code:I

    return v0
.end method

.method public getData()Lcom/miui/tvm/model/TvmNonceModel$DataBean;
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/model/TvmNonceModel;->data:Lcom/miui/tvm/model/TvmNonceModel$DataBean;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/model/TvmNonceModel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/tvm/model/TvmNonceModel;->result:Ljava/lang/String;

    return-object v0
.end method

.method public isRetriable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/tvm/model/TvmNonceModel;->retriable:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0

    iput p1, p0, Lcom/miui/tvm/model/TvmNonceModel;->code:I

    return-void
.end method

.method public setData(Lcom/miui/tvm/model/TvmNonceModel$DataBean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/tvm/model/TvmNonceModel;->data:Lcom/miui/tvm/model/TvmNonceModel$DataBean;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/tvm/model/TvmNonceModel;->description:Ljava/lang/String;

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/tvm/model/TvmNonceModel;->result:Ljava/lang/String;

    return-void
.end method

.method public setRetriable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/tvm/model/TvmNonceModel;->retriable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TuiNonceModel{result=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/tvm/model/TvmNonceModel;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", retriable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/tvm/model/TvmNonceModel;->retriable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", code="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/tvm/model/TvmNonceModel;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/tvm/model/TvmNonceModel;->data:Lcom/miui/tvm/model/TvmNonceModel$DataBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/tvm/model/TvmNonceModel;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
