.class public Lcom/miui/autotask/taskitem/ChargeConditionItem;
.super Lcom/miui/autotask/taskitem/SwitchTypeItem;
.source "SourceFile"


# static fields
.field private static final WIRED_CHARGE_STATE:I = 0x1

.field private static final WIRED_OR_NOT_IRRELEVANT:I = 0x0

.field private static final WIRELESS_CHARGE_STATE:I = 0x2

.field public static final WIRELESS_SUPPORT_NOT_CHARGE_OPTION:I = 0x3


# instance fields
.field private mState:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "d"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/autotask/taskitem/ChargeConditionItem;->mState:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const v0, 0x7f0803d6

    return v0
.end method

.method public c()I
    .locals 1

    const v0, 0x7f0803d5

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "key_charge_condition_item"

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f1218ab

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/autotask/taskitem/ChargeConditionItem;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const v0, 0x7f1218a8

    goto :goto_0

    :cond_1
    const v0, 0x7f1218b3

    goto :goto_0

    :cond_2
    const v0, 0x7f1218b2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const v0, 0x7f121a09

    invoke-virtual {p0, v0}, Lcom/miui/autotask/taskitem/TaskItem;->f(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    const v0, 0x7f0803d7

    return v0
.end method

.method public m()Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargeConditionItem meetTheCondition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/autotask/taskitem/ChargeConditionItem;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewAutoTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->P0()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    :cond_0
    invoke-static {}, Lme/w;->i0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    return v0

    :cond_1
    invoke-static {}, Lu3/h;->y0()Lu3/h;

    move-result-object v0

    invoke-virtual {v0}, Lu3/h;->S0()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChargeConditionItem meetTheCondition: isWired = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/miui/autotask/taskitem/ChargeConditionItem;->mState:I

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/miui/autotask/taskitem/SwitchTypeItem;->v()Z

    move-result v0

    return v0

    :cond_2
    xor-int/2addr v0, v2

    :cond_3
    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/miui/autotask/taskitem/ChargeConditionItem;->mState:I

    return v0
.end method

.method public z(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/taskitem/ChargeConditionItem;->mState:I

    return-void
.end method
