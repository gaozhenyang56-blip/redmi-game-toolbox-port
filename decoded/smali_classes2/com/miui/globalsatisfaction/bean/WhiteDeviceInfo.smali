.class public Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private displayTimeStampNotification:Ljava/lang/String;

.field private displayTimeStampSettings:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->displayTimeStampNotification:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->displayTimeStampSettings:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDisplayTimeStampNotification()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->displayTimeStampNotification:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTimeStampSettings()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->displayTimeStampSettings:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->displayTimeStampNotification:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->displayTimeStampSettings:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDisplayTimeStampNotification(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->displayTimeStampNotification:Ljava/lang/String;

    return-void
.end method

.method public setDisplayTimeStampSettings(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->displayTimeStampSettings:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WhiteDeviceInfo{displayTimeStampNotification=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->displayTimeStampNotification:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayTimeStampSettings=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/globalsatisfaction/bean/WhiteDeviceInfo;->displayTimeStampSettings:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
