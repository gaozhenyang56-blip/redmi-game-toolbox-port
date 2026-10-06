.class public Lh9/e;
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


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lh9/a;-><init>()V

    iput-object p1, p0, Lh9/e;->c:Landroid/content/Context;

    return-void
.end method

.method private e(J)Z
    .locals 7

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getShowTime()I

    move-result v0

    iget-object v1, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v1, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v1}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getLastDelayTime()I

    move-result v1

    iget-object v2, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v2, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v2}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getValidPeriod()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2

    sget-object v0, Ll9/g;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, p1, v5

    if-nez v0, :cond_0

    return v4

    :cond_0
    invoke-static {p1, p2}, Ll9/b;->b(J)I

    move-result p1

    add-int/2addr v1, v2

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    return v3

    :cond_2
    if-eq v0, v3, :cond_4

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    goto :goto_1

    :cond_3
    return v4

    :cond_4
    :goto_1
    iget-object p1, p0, Lh9/e;->c:Landroid/content/Context;

    invoke-static {p1}, Ll9/g;->b(Landroid/content/Context;)J

    move-result-wide p1

    sget-object v0, Ll9/g;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, p1, v5

    if-nez v0, :cond_5

    return v4

    :cond_5
    invoke-static {p1, p2}, Ll9/b;->b(J)I

    move-result p1

    add-int/2addr v1, v2

    if-le p1, v1, :cond_6

    goto :goto_2

    :cond_6
    move v3, v4

    :goto_2
    return v3
.end method


# virtual methods
.method public b()Z
    .locals 8

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->isWhiteDevice()Z

    move-result v0

    const-string v1, "globalsatisfaction_OutDateCondition"

    if-eqz v0, :cond_0

    const-string v0, "white device jump OutDateCondition"

    invoke-static {v1, v0}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lh9/a;->a()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getShowTime()I

    move-result v0

    const/4 v2, 0x2

    const-string v3, " reason = out date"

    const-string v4, "intercept: questionnaire = "

    const/4 v5, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getShowed_delay_time()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->getDisplayTimeStamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ll9/b;->b(J)I

    move-result v0

    iget-object v2, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v2, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v2}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getValidPeriod()I

    move-result v2

    if-le v0, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_1
    if-ne v0, v5, :cond_2

    sget-object v0, Ll9/g;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    invoke-direct {p0, v6, v7}, Lh9/e;->e(J)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lh9/e;->c:Landroid/content/Context;

    invoke-static {v0}, Ll9/g;->a(Landroid/content/Context;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lh9/e;->e(J)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lh9/a;->a()Z

    move-result v0

    return v0
.end method
