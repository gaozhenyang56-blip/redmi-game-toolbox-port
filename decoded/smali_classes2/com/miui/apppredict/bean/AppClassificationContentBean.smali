.class public Lcom/miui/apppredict/bean/AppClassificationContentBean;
.super Lcom/miui/apppredict/bean/AppClassificationBaseBean;
.source "SourceFile"


# instance fields
.field private iconPath:Ljava/lang/String;

.field private installTime:J

.field private name:Ljava/lang/String;

.field private namePinYin:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/bean/AppClassificationBaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirstChar()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/apppredict/bean/AppClassificationContentBean;->getNamePinYin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "!"

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "#"

    return-object v0

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/bean/AppClassificationContentBean;->iconPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInstallTime()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/apppredict/bean/AppClassificationContentBean;->installTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/bean/AppClassificationContentBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamePinYin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/bean/AppClassificationContentBean;->namePinYin:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/bean/AppClassificationContentBean;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, Lcom/miui/apppredict/bean/AppClassificationContentBean;->userId:I

    return v0
.end method

.method public setIconPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/bean/AppClassificationContentBean;->iconPath:Ljava/lang/String;

    return-void
.end method

.method public setInstallTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/apppredict/bean/AppClassificationContentBean;->installTime:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/bean/AppClassificationContentBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNamePinYin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/bean/AppClassificationContentBean;->namePinYin:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/bean/AppClassificationContentBean;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/apppredict/bean/AppClassificationContentBean;->userId:I

    return-void
.end method
