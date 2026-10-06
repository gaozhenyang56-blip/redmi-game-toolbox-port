.class public Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# instance fields
.field private cloudScanKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "virus_cloudscan"

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f121400

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;->cloudScanKey:Ljava/lang/String;

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

    const/16 v0, 0x1f

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1218dc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121a6a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;->cloudScanKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->n(Ljava/lang/String;Z)V

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    new-instance v0, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel$a;-><init>(Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scan()V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/VirusCloudScanModel;->cloudScanKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void
.end method
