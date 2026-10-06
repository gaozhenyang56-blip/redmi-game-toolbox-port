.class public Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BlockCallsFromStrangersModel"


# instance fields
.field private currentSimId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setDelayOptimized(Z)V

    const-string p1, "block_calls_from_strangers"

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_ignore"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackIgnoreStr(Ljava/lang/String;)V

    new-instance p1, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel$a;

    invoke-direct {p1, p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel$a;-><init>(Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;)V

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setOnAbsModelDisplayListener(Lcom/miui/securityscan/model/AbsModel$AbsModelDisplayListener;)V

    return-void
.end method

.method private setMultiSimState()V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "stranger_call_mode"

    invoke-static {v2, v3, v1, v1}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3, v5, v1}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lm2/a;->k(Landroid/content/Context;)Z

    move-result v6

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v2, :cond_3

    if-nez v6, :cond_3

    if-eqz v3, :cond_3

    move v4, v1

    :cond_3
    if-nez v0, :cond_5

    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_4

    :cond_5
    :goto_3
    sget-object v2, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_4
    invoke-virtual {p0, v2}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lm2/a;->k(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iput v1, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    goto :goto_5

    :cond_7
    if-nez v0, :cond_6

    if-eqz v4, :cond_6

    iput v5, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    :goto_5
    return-void
.end method

.method private setSingleSimState(I)V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "stranger_call_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    sget-object p1, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void
.end method


# virtual methods
.method public getButtonTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120465

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12189d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1219fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignore()V
    .locals 0

    return-void
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.CALL_FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    const-string v2, "key_sim_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lx4/f1;->S(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f120210

    invoke-static {p1, v0}, Lx4/y1;->j(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public scan()V
    .locals 6

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    invoke-static {}, Lm2/f;->t()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multiSimEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "   simSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BlockCallsFromStrangersModel"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-ne v3, v4, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/telephony/SubscriptionInfo;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lm2/a;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v4, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v0

    add-int/2addr v0, v4

    iput v0, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    :goto_1
    iget v0, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    invoke-direct {p0, v0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->setSingleSimState(I)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    if-ne v3, v0, :cond_4

    invoke-direct {p0}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->setMultiSimState()V

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    iput v4, p0, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->currentSimId:I

    invoke-direct {p0, v4}, Lcom/miui/firstaidkit/model/operation/BlockCallsFromStrangersModel;->setSingleSimState(I)V

    :cond_4
    :goto_2
    return-void
.end method
