.class Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/service/tm/TrafficSimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateBillInfo(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$1000(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$1100(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$400(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isBrandSetted()Z

    move-result v0

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/miui/networkassistant/utils/BroadCastUtil;->sendCorrectionSucceedToCarrier(Landroid/content/Context;IZ)V

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object p1, p1, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillCorrectionSuccessTime(J)Z

    return-void
.end method

.method private updateTrafficInfo(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$1200(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z

    move-result v0

    const-string v1, "TrafficManageService-TrafficSimManager"

    if-eqz v0, :cond_0

    const-string p1, "\u51fa\u95ee\u98981"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$1300(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Lcom/miui/networkassistant/model/TrafficUsedStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "\u51fa\u95ee\u98982"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$1400(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$400(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isBrandSetted()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/utils/BroadCastUtil;->sendCorrectionSucceedToCarrier(Landroid/content/Context;IZ)V

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficCorrectionSuccessTime(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveCorrectedPkgsAndUsageValues(Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V

    return-void
.end method


# virtual methods
.method public onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 13

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$200(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrafficCorrected: status.getReturnCode()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrafficManageService-TrafficSimManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_d

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const/4 v3, 0x5

    const-string v4, "track_key_send_bill_arrears_telephone"

    const-string v5, "operator"

    const-string v6, "true"

    const-string v7, "track_key_last_correction_result_status"

    const-string v8, "false"

    const-string v9, "track_key_this_correction_result_status"

    const-wide/16 v10, 0x0

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$400(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCurrentCorrectionType()I

    move-result v3

    iget-object v12, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v12, v12, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v12}, Lcom/miui/networkassistant/config/SimUserInfo;->isBrandSetted()Z

    move-result v12

    invoke-static {v0, v3, v12}, Lcom/miui/networkassistant/utils/BroadCastUtil;->sendCorrectionFailedToCarrier(Landroid/content/Context;IZ)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCurrentCorrectionType()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v10, v11}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficCorrectionSuccessTime(J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v10, v11}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillCorrectionSuccessTime(J)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLastBillArrears()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getSlotNum()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TrafficUpdateUtil;->arrearsBill(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v2, v2, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$800(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLastBillArrears()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getSlotNum()I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TrafficUpdateUtil;->arrearsBill(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v3, v3, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$300(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$400(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v4, v4, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$500(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Landroid/content/Context;I)V

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-static {v0}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$400(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCurrentCorrectionType()I

    move-result v3

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v4, v4, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->isBrandSetted()Z

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/miui/networkassistant/utils/BroadCastUtil;->sendCorrectionFailedToCarrier(Landroid/content/Context;IZ)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCurrentCorrectionType()I

    move-result v0

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v10, v11}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficCorrectionSuccessTime(J)Z

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, v10, v11}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillCorrectionSuccessTime(J)Z

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getSlotNum()I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$600(Lcom/miui/networkassistant/service/tm/TrafficSimManager;I)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isLastStatus()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$700(Lcom/miui/networkassistant/service/tm/TrafficSimManager;Z)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MIMOBILE"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->updateBillInfo(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    const-string v0, "onTrafficCorrected: RETURN_CODE_OK"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->updateTrafficInfo(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCurrentCorrectionType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->updateBillInfo(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    const-string v0, "onTrafficCorrected: getCurrentCorrectionType:TC_TYPE_BILL"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getCurrentCorrectionType()I

    move-result v0

    if-ne v0, v2, :cond_b

    goto :goto_2

    :cond_b
    :goto_3
    invoke-static {}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->access$900()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "onTrafficCorrected: codeSet"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->checkBillArrears(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    :cond_c
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficSimManager$4;->this$0:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->saveCorrectionResult(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    :cond_d
    return-void
.end method
