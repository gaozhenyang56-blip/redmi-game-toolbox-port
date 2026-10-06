.class public final Lcom/miui/networkassistant/ui/bean/CarrierCode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CarrierData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rtnCode:I

.field private final rtnMsg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;ILjava/lang/String;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CarrierData;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtnMsg"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->data:Ljava/util/List;

    iput p2, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnCode:I

    iput-object p3, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnMsg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/networkassistant/ui/bean/CarrierCode;Ljava/util/List;ILjava/lang/String;ILjava/lang/Object;)Lcom/miui/networkassistant/ui/bean/CarrierCode;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->data:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnCode:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnMsg:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/bean/CarrierCode;->copy(Ljava/util/List;ILjava/lang/String;)Lcom/miui/networkassistant/ui/bean/CarrierCode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CarrierData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->data:Ljava/util/List;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnCode:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/util/List;ILjava/lang/String;)Lcom/miui/networkassistant/ui/bean/CarrierCode;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CarrierData;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/networkassistant/ui/bean/CarrierCode;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtnMsg"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/networkassistant/ui/bean/CarrierCode;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/networkassistant/ui/bean/CarrierCode;-><init>(Ljava/util/List;ILjava/lang/String;)V

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
    instance-of v1, p1, Lcom/miui/networkassistant/ui/bean/CarrierCode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/networkassistant/ui/bean/CarrierCode;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->data:Ljava/util/List;

    iget-object v3, p1, Lcom/miui/networkassistant/ui/bean/CarrierCode;->data:Ljava/util/List;

    invoke-static {v1, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnCode:I

    iget v3, p1, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnCode:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnMsg:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnMsg:Ljava/lang/String;

    invoke-static {v1, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/networkassistant/ui/bean/CarrierData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->data:Ljava/util/List;

    return-object v0
.end method

.method public final getRtnCode()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnCode:I

    return v0
.end method

.method public final getRtnMsg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnMsg:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->data:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnMsg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarrierCode(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rtnCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rtnMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/CarrierCode;->rtnMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
