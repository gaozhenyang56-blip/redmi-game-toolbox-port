.class public Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# static fields
.field public static final CLEAN_VALUE:J = 0x5f5e100L

.field public static final MB:J = 0xf4240L


# instance fields
.field private mScoreManager:Lcom/miui/securityscan/scanner/ScoreManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setDelayOptimized(Z)V

    const-string p1, "garbage_clean"

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securityscan/scanner/ScoreManager;->j()Lcom/miui/securityscan/scanner/ScoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->mScoreManager:Lcom/miui/securityscan/scanner/ScoreManager;

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

    const/16 v0, 0x26

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1218c4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->mScoreManager:Lcom/miui/securityscan/scanner/ScoreManager;

    invoke-virtual {v3}, Lcom/miui/securityscan/scanner/ScoreManager;->e()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lsm/a;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f121a2c

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enter_homepage_way"

    const-string v2, "00006"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "force_clean"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc4/e;->b(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x67

    if-eqz v1, :cond_0

    invoke-static {p1, v0, v2}, Lx4/f1;->S(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f120210

    invoke-static {p1, v0}, Lx4/y1;->j(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1}, Lc4/f;->i(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public scan()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/GarbageCleanModel;->mScoreManager:Lcom/miui/securityscan/scanner/ScoreManager;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/ScoreManager;->e()J

    move-result-wide v0

    const-wide/32 v2, 0x5f5e100

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    if-ne v0, v1, :cond_1

    new-instance v0, Lzf/e;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121a2d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzf/e;-><init>(Ljava/lang/String;Z)V

    invoke-static {}, Lzf/f;->c()Lzf/f;

    move-result-object v1

    sget-object v2, Lzf/f$a;->b:Lzf/f$a;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lzf/f;->d(Lzf/f$a;Ljava/lang/String;Lzf/e;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lzf/f;->c()Lzf/f;

    move-result-object v0

    sget-object v1, Lzf/f$a;->b:Lzf/f$a;

    invoke-virtual {v0, v1}, Lzf/f;->b(Lzf/f$a;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
