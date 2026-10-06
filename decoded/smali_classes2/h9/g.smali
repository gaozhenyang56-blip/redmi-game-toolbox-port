.class public Lh9/g;
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

.field private d:Lh9/b;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lh9/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh9/g;->e:I

    iput-object p1, p0, Lh9/g;->c:Landroid/content/Context;

    new-instance p1, Lh9/b;

    invoke-direct {p1}, Lh9/b;-><init>()V

    iput-object p1, p0, Lh9/g;->d:Lh9/b;

    return-void
.end method

.method private e(JI)Z
    .locals 5

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

    invoke-virtual {v1}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getMiuiVersion()Ljava/util/List;

    move-result-object v1

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

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    invoke-static {p1, p2}, Ll9/b;->b(J)I

    move-result p1

    if-lt p1, p3, :cond_1

    add-int/2addr p3, v2

    if-gt p1, p3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    return v3

    :cond_2
    if-ne v0, v3, :cond_6

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Ldb/c;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lh9/g;->c:Landroid/content/Context;

    invoke-static {p1}, Ll9/g;->b(Landroid/content/Context;)J

    move-result-wide p1

    sget-object v0, Ll9/g;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    return v4

    :cond_4
    invoke-static {p1, p2}, Ll9/b;->b(J)I

    move-result p1

    if-lt p1, p3, :cond_5

    add-int/2addr p3, v2

    if-gt p1, p3, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    return v3

    :cond_6
    :goto_2
    return v4
.end method

.method private f(Lcom/miui/globalsatisfaction/bean/RomCondition;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/RomCondition;->getRomVersionStart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/RomCondition;->getRomVersionEnd()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/RomCondition;->getRomVersionStart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/RomCondition;->getRomVersionEnd()Ljava/lang/String;

    move-result-object p1

    sget-boolean v2, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1}, Lh9/g;->g(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-direct {p0, p1}, Lh9/g;->g(Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private g(Ljava/lang/String;)I
    .locals 6

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {p0, v0}, Lh9/g;->i(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lh9/g;->i(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, v0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v4, v5, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v4, v5, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private h()Z
    .locals 2

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getRomConditions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/globalsatisfaction/bean/RomConditions;

    invoke-virtual {v1}, Lcom/miui/globalsatisfaction/bean/RomConditions;->getRomCondition()Lcom/miui/globalsatisfaction/bean/RomCondition;

    move-result-object v1

    invoke-direct {p0, v1}, Lh9/g;->f(Lcom/miui/globalsatisfaction/bean/RomCondition;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private i(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "\\D+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array p1, v1, [Ljava/lang/String;

    return-object p1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private j(Ljava/lang/String;I)Z
    .locals 5

    invoke-static {}, Ll9/d;->d()Ll9/d;

    move-result-object v0

    invoke-virtual {v0}, Ll9/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ll9/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1, p2}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->productSettingsId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lh9/a;->a()Z

    move-result p1

    return p1

    :cond_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ll9/b;->b(J)I

    move-result p1

    invoke-virtual {v0}, Ll9/d;->c()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method private k(J)Z
    .locals 4

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

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

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

    invoke-virtual {v3}, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-direct {p0, p1, p2, v2}, Lh9/g;->e(JI)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v3, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v3}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lh9/g;->j(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intercept: questionnaire = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason = is less than gap days"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "globalsatisfaction_ShowCondition"

    invoke-static {v3, v2}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput v2, p0, Lh9/g;->e:I

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public b()Z
    .locals 7

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    const-string v1, "intercept: questionnaire = "

    const-string v2, "globalsatisfaction_ShowCondition"

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getIsValid()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->isWhiteDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "white device jump ShowCondition"

    invoke-static {v2, v0}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lh9/a;->a()Z

    move-result v0

    return v0

    :cond_1
    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason = netWork disConnected"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    iget-object v4, p0, Lh9/g;->c:Landroid/content/Context;

    invoke-static {v0, v4}, Ll9/b;->g(Lcom/miui/globalsatisfaction/bean/Questionnaire;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason = language not support"

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getRegion()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ll9/b;->h(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason = region not support"

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getShowTime()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getIsValid()I

    move-result v0

    if-eq v0, v3, :cond_5

    return v3

    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lh9/g;->e:I

    goto :goto_4

    :cond_6
    const-string v4, " reason = not allowed to show"

    if-ne v0, v3, :cond_7

    sget-object v0, Ll9/g;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    invoke-direct {p0, v5, v6}, Lh9/g;->k(J)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    if-nez v0, :cond_8

    iget-object v0, p0, Lh9/g;->c:Landroid/content/Context;

    invoke-static {v0}, Ll9/g;->a(Landroid/content/Context;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lh9/g;->k(J)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_8
    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    invoke-direct {p0}, Lh9/g;->h()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Ll9/g;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-direct {p0, v4, v5}, Lh9/g;->k(J)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason = rom version not match"

    goto/16 :goto_1

    :cond_9
    :goto_4
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;

    move-result-object v0

    iget v1, p0, Lh9/g;->e:I

    invoke-virtual {v0, v1}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->setValidDelayTime(I)V

    iget-object v0, p0, Lh9/g;->d:Lh9/b;

    invoke-virtual {v0}, Lh9/b;->b()Z

    goto/16 :goto_0

    :cond_a
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason = invalid"

    goto/16 :goto_1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {p0, p1}, Lh9/g;->l(Lcom/miui/globalsatisfaction/bean/Questionnaire;)V

    return-void
.end method

.method public l(Lcom/miui/globalsatisfaction/bean/Questionnaire;)V
    .locals 1

    invoke-super {p0, p1}, Lh9/a;->d(Ljava/lang/Object;)V

    const/4 p1, -0x1

    iput p1, p0, Lh9/g;->e:I

    iget-object p1, p0, Lh9/g;->d:Lh9/b;

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {p1, v0}, Lh9/a;->d(Ljava/lang/Object;)V

    return-void
.end method
