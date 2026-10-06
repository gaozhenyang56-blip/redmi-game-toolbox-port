.class public Lh9/b;
.super Lh9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh9/a<",
        "Lcom/miui/globalsatisfaction/bean/Questionnaire;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh9/a;-><init>()V

    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ll9/b;->b(J)I

    move-result p1

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public b()Z
    .locals 4

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getIsValid()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->isWhiteDevice()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getDelayTime()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v1, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v1}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getShowDelayTimeMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;

    invoke-virtual {v3}, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->getDisplayTimeStamp()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lh9/b;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->setValid(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lh9/a;->a()Z

    move-result v0

    return v0

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jump: questionnaire = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason = invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "globalsatisfaction_DisplayDaysCondition"

    invoke-static {v1, v0}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lh9/a;->a()Z

    move-result v0

    return v0
.end method
