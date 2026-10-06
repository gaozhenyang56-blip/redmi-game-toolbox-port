.class public Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# instance fields
.field private freeStorage:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setDelayOptimized(Z)V

    const-string p1, "unable_install_app"

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

    return-void
.end method


# virtual methods
.method public getButtonTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12089d

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

    const/16 v0, 0x36

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;->freeStorage:J

    invoke-static {v2, v3}, Leg/g;->b(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f12089e

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12089f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enter_homepage_way"

    const-string v2, "security_firstaid_scanresult"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc4/e;->b(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x64

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
    .locals 7

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Leg/s;->a(Landroid/content/Context;)Leg/s$a;

    move-result-object v0

    iget-wide v1, v0, Leg/s$a;->b:J

    iget-wide v3, v0, Leg/s$a;->a:J

    long-to-float v0, v1

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v0, v5

    long-to-float v3, v3

    div-float/2addr v0, v3

    iput-wide v1, p0, Lcom/miui/firstaidkit/model/other/UnableInstallApplicationModel;->freeStorage:J

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v4

    const v5, 0x4f32d05e    # 3.0E9f

    cmpg-float v3, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gez v3, :cond_0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    goto :goto_0

    :cond_0
    const-wide v3, 0xb2d05e00L

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    if-eqz v5, :cond_2

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    return-void
.end method
