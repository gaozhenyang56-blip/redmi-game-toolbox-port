.class public final Lcom/miui/permcenter/permissions/RiskAppResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final code:I

.field private final data:Lcom/miui/permcenter/permissions/Data;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final msg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/miui/permcenter/permissions/Data;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/miui/permcenter/permissions/Data;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "msg"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->code:I

    iput-object p2, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->msg:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->data:Lcom/miui/permcenter/permissions/Data;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/permcenter/permissions/RiskAppResponse;ILjava/lang/String;Lcom/miui/permcenter/permissions/Data;ILjava/lang/Object;)Lcom/miui/permcenter/permissions/RiskAppResponse;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->code:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->msg:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->data:Lcom/miui/permcenter/permissions/Data;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/permcenter/permissions/RiskAppResponse;->copy(ILjava/lang/String;Lcom/miui/permcenter/permissions/Data;)Lcom/miui/permcenter/permissions/RiskAppResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->code:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/miui/permcenter/permissions/Data;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->data:Lcom/miui/permcenter/permissions/Data;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Lcom/miui/permcenter/permissions/Data;)Lcom/miui/permcenter/permissions/RiskAppResponse;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/miui/permcenter/permissions/Data;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "msg"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/permcenter/permissions/RiskAppResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/permcenter/permissions/RiskAppResponse;-><init>(ILjava/lang/String;Lcom/miui/permcenter/permissions/Data;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/permcenter/permissions/RiskAppResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/permcenter/permissions/RiskAppResponse;

    iget v1, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->code:I

    iget v3, p1, Lcom/miui/permcenter/permissions/RiskAppResponse;->code:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->msg:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/permcenter/permissions/RiskAppResponse;->msg:Ljava/lang/String;

    invoke-static {v1, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->data:Lcom/miui/permcenter/permissions/Data;

    iget-object p1, p1, Lcom/miui/permcenter/permissions/RiskAppResponse;->data:Lcom/miui/permcenter/permissions/Data;

    invoke-static {v1, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->code:I

    return v0
.end method

.method public final getData()Lcom/miui/permcenter/permissions/Data;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->data:Lcom/miui/permcenter/permissions/Data;

    return-object v0
.end method

.method public final getMsg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->code:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->data:Lcom/miui/permcenter/permissions/Data;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/miui/permcenter/permissions/Data;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RiskAppResponse(code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/RiskAppResponse;->data:Lcom/miui/permcenter/permissions/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
