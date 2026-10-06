.class public Lcom/miui/globalsatisfaction/bean/WrapQuestionnaire;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private questionnaire:Lcom/miui/globalsatisfaction/bean/Questionnaire;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuestionnaire()Lcom/miui/globalsatisfaction/bean/Questionnaire;
    .locals 1

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/WrapQuestionnaire;->questionnaire:Lcom/miui/globalsatisfaction/bean/Questionnaire;

    return-object v0
.end method

.method public setQuestionnaire(Lcom/miui/globalsatisfaction/bean/Questionnaire;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/WrapQuestionnaire;->questionnaire:Lcom/miui/globalsatisfaction/bean/Questionnaire;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WrapQuestionnaire{questionnaire="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/WrapQuestionnaire;->questionnaire:Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
