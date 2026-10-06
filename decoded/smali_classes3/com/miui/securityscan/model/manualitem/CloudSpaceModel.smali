.class public Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudSpaceModel"


# instance fields
.field private status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->status:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setDelayOptimized(Z)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1218a1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1218a2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121a00

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121a01

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Lpf/g;->F(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmiui/cloud/CloudSyncUtils;->startMiCloudMemberActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CloudSpaceModel"

    const-string v1, "optimize error: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public scan()V
    .locals 5

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_6

    invoke-static {}, Lx4/z1;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/cloud/util/SyncStatusHelper;->getSyncStatus(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/model/manualitem/CloudSpaceModel;->status:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    move v1, v2

    :cond_2
    if-eqz v3, :cond_3

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER_MINOR:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-eq v0, v1, :cond_7

    if-eqz v3, :cond_5

    const-string v0, "cloud_space_almost_full"

    goto :goto_2

    :cond_5
    const-string v0, "cloud_space_full"

    :goto_2
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "CloudSpaceModel"

    const-string v2, "scan error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_6
    :goto_3
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    :cond_7
    :goto_4
    return-void
.end method
