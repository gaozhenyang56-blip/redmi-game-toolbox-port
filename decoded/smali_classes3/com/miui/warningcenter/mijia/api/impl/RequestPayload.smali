.class final Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final messageAlertList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/api/impl/RequestBodyMessageAlertList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final warning:Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;Ljava/util/List;)V
    .locals 1
    .param p1    # Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/api/impl/RequestBodyMessageAlertList;",
            ">;)V"
        }
    .end annotation

    const-string v0, "warning"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAlertList"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->warning:Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;

    iput-object p2, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->messageAlertList:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;Ljava/util/List;ILjava/lang/Object;)Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->warning:Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->messageAlertList:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->copy(Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;Ljava/util/List;)Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->warning:Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/api/impl/RequestBodyMessageAlertList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->messageAlertList:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;Ljava/util/List;)Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;
    .locals 1
    .param p1    # Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/api/impl/RequestBodyMessageAlertList;",
            ">;)",
            "Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "warning"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAlertList"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;

    invoke-direct {v0, p1, p2}, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;-><init>(Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;

    iget-object v1, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->warning:Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;

    iget-object v3, p1, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->warning:Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;

    invoke-static {v1, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->messageAlertList:Ljava/util/List;

    iget-object p1, p1, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->messageAlertList:Ljava/util/List;

    invoke-static {v1, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getMessageAlertList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/mijia/api/impl/RequestBodyMessageAlertList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->messageAlertList:Ljava/util/List;

    return-object v0
.end method

.method public final getWarning()Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->warning:Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->warning:Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;

    invoke-virtual {v0}, Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->messageAlertList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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

    const-string v1, "RequestPayload(warning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->warning:Lcom/miui/warningcenter/mijia/api/impl/RequestBodyWarning;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageAlertList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/warningcenter/mijia/api/impl/RequestPayload;->messageAlertList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
