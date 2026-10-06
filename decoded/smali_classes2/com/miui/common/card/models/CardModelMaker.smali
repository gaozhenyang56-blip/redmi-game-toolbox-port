.class public Lcom/miui/common/card/models/CardModelMaker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cardModelMaker:Lcom/miui/common/card/models/CardModelMaker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/common/card/models/CardModelMaker;
    .locals 2

    const-class v0, Lcom/miui/common/card/models/CardModelMaker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/common/card/models/CardModelMaker;->cardModelMaker:Lcom/miui/common/card/models/CardModelMaker;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/common/card/models/CardModelMaker;

    invoke-direct {v1}, Lcom/miui/common/card/models/CardModelMaker;-><init>()V

    sput-object v1, Lcom/miui/common/card/models/CardModelMaker;->cardModelMaker:Lcom/miui/common/card/models/CardModelMaker;

    :cond_0
    sget-object v1, Lcom/miui/common/card/models/CardModelMaker;->cardModelMaker:Lcom/miui/common/card/models/CardModelMaker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getFuncBtnBottomCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncBtnBottomCardModel;
    .locals 3

    new-instance v0, Lcom/miui/common/card/models/FuncBtnBottomCardModel;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncBtnBottomCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getSpannedTitle()Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/BaseCardModel;->setSpannedTitle(Landroid/text/Spanned;)V

    :goto_0
    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/FuncBtnBottomCardModel;->setAbsModelIndex(I)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/BaseCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/common/card/models/BaseCardModel;->setButton(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/BaseCardModel;->setIcon(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/miui/common/card/models/FunctionCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;->setScore(I)V

    return-object v0
.end method

.method public getFuncCloudSpaceCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncCloudSpaceCardModel;
    .locals 2

    new-instance v0, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncCloudSpaceCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/BaseCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/common/card/models/BaseCardModel;->setButton(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/FunctionCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;->setScore(I)V

    return-object v0
.end method

.method public getFuncLeftBannerCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FuncLeftBannerCardModel;
    .locals 2

    new-instance v0, Lcom/miui/common/card/models/FuncLeftBannerCardModel;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncLeftBannerCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getSummary()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/BaseCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/common/card/models/BaseCardModel;->setButton(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/BaseCardModel;->setIcon(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/miui/common/card/models/FunctionCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    return-object v0
.end method

.method public getFuncTopBannerCardModel(Lcom/miui/securityscan/model/AbsModel;Ljava/lang/String;Lcom/miui/common/card/functions/BaseFunction;)Lcom/miui/common/card/models/FunNoIconCardModel;
    .locals 2

    new-instance v0, Lcom/miui/common/card/models/FunNoIconCardModel;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FunNoIconCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/BaseCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/common/card/models/BaseCardModel;->setButton(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/FunctionCardModel;->setFunction(Lcom/miui/common/card/functions/BaseFunction;)V

    invoke-virtual {p1}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;->setScore(I)V

    return-object v0
.end method

.method public getListTitleCheckboxCardModel(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/GroupModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/miui/common/card/models/ListTitleCheckboxCardModel;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-direct {v0, p1, p2}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/GroupModel;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/miui/common/card/models/BaseCardModel;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->setBtnText(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->setGroupToast(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->setNeedRefreshManualItem(Z)V

    if-eqz p8, :cond_0

    invoke-virtual {v0, p8}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->setResId(I)V

    :cond_0
    return-object v0
.end method

.method public getListTitleConsumePowerRankCardModel(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;Ljava/lang/String;)Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-direct {v0, p1, p2}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/BaseCardModel;->setButton(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->getAppConsumeInfoList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->setAppConsumeInfoList(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->setScore(I)V

    return-object v0
.end method

.method public getListTitleFlowRankCardModel(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/manualitem/FlowRankModel;Ljava/lang/String;)Lcom/miui/common/card/models/ListTitleFlowRankCardModel;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-direct {v0, p1, p2}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;-><init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V

    invoke-virtual {p2}, Lcom/miui/securityscan/model/manualitem/FlowRankModel;->getFlowRankDataModels()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->setFlowRankDataModels(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/miui/securityscan/model/manualitem/FlowRankModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/BaseCardModel;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/miui/common/card/models/BaseCardModel;->setButton(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->setScore(I)V

    return-object v0
.end method
