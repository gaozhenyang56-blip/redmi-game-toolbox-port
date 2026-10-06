.class public Lcom/miui/common/card/models/ListTitleCheckboxCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;
    }
.end annotation


# instance fields
.field private amoListener:Lcom/miui/securityscan/scanner/k$i;

.field private btnText:Ljava/lang/String;

.field private dangerModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/AbsModel;",
            ">;"
        }
    .end annotation
.end field

.field private group:Lcom/miui/securityscan/model/GroupModel;

.field private groupToast:Ljava/lang/String;

.field private needRefreshManualItem:Z

.field private resId:I


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/GroupModel;)V
    .locals 3

    const v0, 0x7f0e00e2

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    iput-object p2, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->group:Lcom/miui/securityscan/model/GroupModel;

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->amoListener:Lcom/miui/securityscan/scanner/k$i;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    iget-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->group:Lcom/miui/securityscan/model/GroupModel;

    invoke-virtual {p1}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {p2}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p2, v0}, Lcom/miui/securityscan/model/AbsModel;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/miui/common/card/models/BaseCardModel;->noConvertView:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->btnText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/k$i;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->amoListener:Lcom/miui/securityscan/scanner/k$i;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->needRefreshManualItem:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->groupToast:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)I
    .locals 0

    iget p0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->resId:I

    return p0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getBtnText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->btnText:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup()Lcom/miui/securityscan/model/GroupModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->group:Lcom/miui/securityscan/model/GroupModel;

    return-object v0
.end method

.method public getGroupToast()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->groupToast:Ljava/lang/String;

    return-object v0
.end method

.method public getResId()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->resId:I

    return v0
.end method

.method public getScore()I
    .locals 4

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v2}, Lcom/miui/securityscan/model/AbsModel;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public ignoreAbsModel(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->group:Lcom/miui/securityscan/model/GroupModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public isNeedRefreshManualItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->needRefreshManualItem:Z

    return v0
.end method

.method public isSafe()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->dangerModelList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBtnText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->btnText:Ljava/lang/String;

    return-void
.end method

.method public setGroupToast(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->groupToast:Ljava/lang/String;

    return-void
.end method

.method public setNeedRefreshManualItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->needRefreshManualItem:Z

    return-void
.end method

.method public setResId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->resId:I

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
