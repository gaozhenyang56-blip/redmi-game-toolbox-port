.class public Lh9/d;
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


# virtual methods
.method public b()Z
    .locals 4

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    const-string v1, "globalsatisfaction_NotificationCondition"

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

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getWhiteDeviceInfo()Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->getDisplayTimeStampNotification()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "white device has notification"

    :goto_0
    invoke-static {v1, v0}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lh9/a;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getDisplayMode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "notification"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intercept: questionnaire = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reason = not notification"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lh9/a;->a()Z

    move-result v0

    return v0

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jump: questionnaire = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh9/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason = invalid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lh9/a;->a()Z

    move-result v0

    return v0
.end method
