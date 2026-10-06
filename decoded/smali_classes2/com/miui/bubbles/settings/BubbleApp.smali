.class public Lcom/miui/bubbles/settings/BubbleApp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field appName:Ljava/lang/CharSequence;

.field isChecked:Z

.field pkg:Ljava/lang/String;

.field uid:I

.field userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/bubbles/settings/BubbleApp;->pkg:Ljava/lang/String;

    iput p2, p0, Lcom/miui/bubbles/settings/BubbleApp;->userId:I

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubbleApp;->appName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubbleApp;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getSpString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/bubbles/settings/BubbleApp;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/bubbles/settings/BubbleApp;->isChecked:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/miui/bubbles/settings/BubbleApp;->uid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/miui/bubbles/settings/BubbleApp;->userId:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/bubbles/settings/BubbleApp;->isChecked:Z

    return v0
.end method

.method public setAppName(Ljava/lang/CharSequence;)Lcom/miui/bubbles/settings/BubbleApp;
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/settings/BubbleApp;->appName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setChecked(Z)Lcom/miui/bubbles/settings/BubbleApp;
    .locals 0

    iput-boolean p1, p0, Lcom/miui/bubbles/settings/BubbleApp;->isChecked:Z

    return-object p0
.end method

.method public setPkg(Ljava/lang/String;)Lcom/miui/bubbles/settings/BubbleApp;
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/settings/BubbleApp;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method public setUid(I)Lcom/miui/bubbles/settings/BubbleApp;
    .locals 0

    iput p1, p0, Lcom/miui/bubbles/settings/BubbleApp;->uid:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BubbleApp{pkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/bubbles/settings/BubbleApp;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/bubbles/settings/BubbleApp;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/bubbles/settings/BubbleApp;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/bubbles/settings/BubbleApp;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/bubbles/settings/BubbleApp;->isChecked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toggleChecked()Lcom/miui/bubbles/settings/BubbleApp;
    .locals 1

    iget-boolean v0, p0, Lcom/miui/bubbles/settings/BubbleApp;->isChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/bubbles/settings/BubbleApp;->isChecked:Z

    return-object p0
.end method
