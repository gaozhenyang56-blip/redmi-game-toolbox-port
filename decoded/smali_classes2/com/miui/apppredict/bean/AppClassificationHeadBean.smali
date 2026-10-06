.class public Lcom/miui/apppredict/bean/AppClassificationHeadBean;
.super Lcom/miui/apppredict/bean/AppClassificationBaseBean;
.source "SourceFile"


# instance fields
.field private headName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/bean/AppClassificationBaseBean;-><init>()V

    iput-object p1, p0, Lcom/miui/apppredict/bean/AppClassificationHeadBean;->headName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFirstChar()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/apppredict/bean/AppClassificationHeadBean;->getHeadName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "!"

    :cond_0
    return-object v0
.end method

.method public getHeadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/bean/AppClassificationHeadBean;->headName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setHeadName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/bean/AppClassificationHeadBean;->headName:Ljava/lang/String;

    return-void
.end method
