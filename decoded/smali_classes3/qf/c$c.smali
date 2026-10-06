.class Lqf/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqf/c;->e0(Lcom/miui/common/card/models/BaseCardModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/common/card/models/BaseCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 0

    iput-object p1, p0, Lqf/c$c;->a:Lcom/miui/common/card/models/BaseCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lqf/c$c;->a:Lcom/miui/common/card/models/BaseCardModel;

    instance-of v1, v0, Lcom/miui/common/card/models/AdvCardModel;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getDataId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lqf/c;->m(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    instance-of v1, v0, Lcom/miui/common/card/models/NewsCardModel;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/miui/common/card/models/NewsCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->getDataId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqf/c;->n(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    instance-of v1, v0, Lcom/miui/common/card/models/ActivityCardModel;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/miui/common/card/models/ActivityCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/BaseCardModel;->getDataId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqf/c;->o(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lcom/miui/common/card/models/FunctionCardModel;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/miui/common/card/models/FunctionCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/FunctionCardModel;->getCurModel()Lcom/miui/securityscan/model/AbsModel;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->getGroup()Lcom/miui/securityscan/model/GroupModel;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/securityscan/model/GroupModel;->getModelList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Lqf/c;->e(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    instance-of v1, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->getCurModel()Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_1

    :cond_6
    instance-of v1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    if-eqz v1, :cond_7

    check-cast v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->getCurModel()Lcom/miui/securityscan/model/AbsModel;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_1
    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqf/c;->d(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method
