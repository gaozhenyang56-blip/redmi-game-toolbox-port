.class public Lcom/miui/common/card/models/ListTitleFlowRankCardModel;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;,
        Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;
    }
.end annotation


# instance fields
.field private amoListener:Lcom/miui/securityscan/scanner/k$i;

.field private curModel:Lcom/miui/securityscan/model/AbsModel;

.field private flowRankDataModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private score:I


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/scanner/k$i;Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f0e00d9

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->amoListener:Lcom/miui/securityscan/scanner/k$i;

    iput-object p2, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->flowRankDataModels:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Lcom/miui/securityscan/scanner/k$i;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->amoListener:Lcom/miui/securityscan/scanner/k$i;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Lcom/miui/securityscan/model/AbsModel;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-object p0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getCurModel()Lcom/miui/securityscan/model/AbsModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->curModel:Lcom/miui/securityscan/model/AbsModel;

    return-object v0
.end method

.method public getFlowRankDataModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->flowRankDataModels:Ljava/util/List;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->score:I

    return v0
.end method

.method public setFlowRankDataModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->flowRankDataModels:Ljava/util/List;

    return-void
.end method

.method public setScore(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->score:I

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
