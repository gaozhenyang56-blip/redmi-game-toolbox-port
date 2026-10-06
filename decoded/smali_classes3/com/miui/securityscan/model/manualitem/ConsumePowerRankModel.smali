.class public Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel$a;
    }
.end annotation


# static fields
.field private static final ACTION_QUICK_OPTIMIZE_POWERCENTER:Ljava/lang/String; = "android.intent.action.POWER_USAGE_SUMMARY"

.field private static appConsumeInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhe/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isTaskFinished:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setDelayOptimized(Z)V

    const-string p1, "consume_power_rank"

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->isTaskFinished:Z

    return p1
.end method

.method static synthetic access$102(Ljava/util/List;)Ljava/util/List;
    .locals 0

    sput-object p0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->appConsumeInfoList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getAppConsumeInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lhe/a;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->appConsumeInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x21

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121a1a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 2

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public scan()V
    .locals 2

    new-instance v0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel$a;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel$a;-><init>(Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-boolean v0, p0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->isTaskFinished:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/manualitem/ConsumePowerRankModel;->appConsumeInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_1
    return-void
.end method
