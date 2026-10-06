.class public Lcom/miui/securityscan/model/system/VirusScanModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# static fields
.field public static final KEY_DEFAULT:Ljava/lang/String; = "VIRUS"

.field private static final TAG:Ljava/lang/String; = "VirusScanModel"


# instance fields
.field private scoreManager:Lcom/miui/securityscan/scanner/ScoreManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setDelayOptimized(Z)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/model/system/VirusScanModel;->scoreManager:Lcom/miui/securityscan/scanner/ScoreManager;

    const-string p1, "virus_scan"

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lx4/t;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120dc6

    goto :goto_0

    :cond_0
    const v1, 0x7f120dc5

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x42

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1218dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/model/system/VirusScanModel;->scoreManager:Lcom/miui/securityscan/scanner/ScoreManager;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100140

    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 4

    const-string v0, "VirusScanModel"

    const-string v1, "optimize start "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/securityscan/model/system/VirusScanModel;->scoreManager:Lcom/miui/securityscan/scanner/ScoreManager;

    invoke-virtual {v1}, Lcom/miui/securityscan/scanner/ScoreManager;->u()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.ANTI_VIRUS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "key_auto_to_result_page"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "key_risk_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "com.miui.securitycenter"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    check-cast p1, Landroid/app/Activity;

    const/16 v0, 0x64

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public scan()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/model/system/VirusScanModel;->scoreManager:Lcom/miui/securityscan/scanner/ScoreManager;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSafe = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VirusScanModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateModelState(Lcom/miui/securityscan/model/AbsModel$State;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void
.end method
