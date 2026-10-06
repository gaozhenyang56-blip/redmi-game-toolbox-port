.class public Lh9/c;
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

    iput-object p1, p0, Lh9/c;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 6

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    const-string v2, "intercept: questionnaire = "

    const-string v3, "globalsatisfaction_FormatCondition"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason = null"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v3, v0}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getIsWhiteDevice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Ll9/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isWhiteDevice = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " reason = not white device"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->isWhiteDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "is white device. do not judge conditions"

    invoke-static {v3, v0}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lh9/a;->a()Z

    move-result v0

    return v0

    :cond_3
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getDisplayMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_6

    :cond_4
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getDelayTime()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->getDelayTime()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_5

    :cond_5
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    iget-object v4, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v4, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v4}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getDevices()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-static {v0}, Ll9/b;->f(Lcom/miui/globalsatisfaction/bean/Questionnaire;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getRegion()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ll9/b;->h(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason = region not support"

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getMemorySize()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getMemorySize()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getMemorySize()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ll9/b;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getStorageSize()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getStorageSize()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getStorageSize()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lh9/c;->c:Landroid/content/Context;

    invoke-static {v4}, Ll9/b;->d(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lh9/a;->a()Z

    move-result v0

    return v0

    :cond_b
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason = storage size not support"

    goto/16 :goto_0

    :cond_c
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason = memory size not support"

    goto/16 :goto_0

    :cond_d
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason = device not support"

    goto/16 :goto_0

    :cond_e
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason = showConditions error"

    goto/16 :goto_0

    :cond_f
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason = displaymode or showconditions error"

    goto/16 :goto_0

    :cond_10
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason = id or url error"

    goto/16 :goto_0
.end method
