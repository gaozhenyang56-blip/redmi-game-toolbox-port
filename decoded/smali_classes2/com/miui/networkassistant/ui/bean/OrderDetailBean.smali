.class public final Lcom/miui/networkassistant/ui/bean/OrderDetailBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;
    }
.end annotation


# instance fields
.field private final data:Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final errCode:I

.field private final errMsg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errCode:I

    iput-object p2, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->data:Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/networkassistant/ui/bean/OrderDetailBean;ILjava/lang/String;Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;ILjava/lang/Object;)Lcom/miui/networkassistant/ui/bean/OrderDetailBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errCode:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errMsg:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->data:Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->copy(ILjava/lang/String;Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;)Lcom/miui/networkassistant/ui/bean/OrderDetailBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errCode:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->data:Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;)Lcom/miui/networkassistant/ui/bean/OrderDetailBean;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;-><init>(ILjava/lang/String;Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;)V

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
    instance-of v1, p1, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;

    iget v1, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errCode:I

    iget v3, p1, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errMsg:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errMsg:Ljava/lang/String;

    invoke-static {v1, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->data:Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;

    iget-object p1, p1, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->data:Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;

    invoke-static {v1, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getData()Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->data:Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;

    return-object v0
.end method

.method public final getErrCode()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errCode:I

    return v0
.end method

.method public final getErrMsg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errCode:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errMsg:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->data:Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isSucceed()Z
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OrderDetailBean(errCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->errMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/bean/OrderDetailBean;->data:Lcom/miui/networkassistant/ui/bean/OrderDetailBean$OrderDetailInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
