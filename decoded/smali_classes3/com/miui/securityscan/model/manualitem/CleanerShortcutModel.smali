.class public Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel$b;,
        Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CleanerShortcutModel"

.field private static final TIME_MINUTE:J = 0xea60L

.field private static mLastCreateTime:J


# instance fields
.field protected stat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "cleaner_shortcut_model"

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V

    const-string p1, "security_scan"

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;->stat:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->runOnUiThread(Ljava/lang/Runnable;)V

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

    const/16 v0, 0x3c

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120532

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120533

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyOptimize(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Lcom/miui/securityscan/MainActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {v0}, Lcom/miui/securityscan/MainActivity;->z0()V

    :cond_0
    const v0, 0x7f120534

    invoke-static {p1, v0}, Lx4/y1;->j(Landroid/content/Context;I)V

    return-void
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;->mLastCreateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;->mLastCreateTime:J

    new-instance v0, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel$a;

    iget-object v1, p0, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;->stat:Ljava/lang/String;

    invoke-direct {v0, p1, p0, v1}, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel$a;-><init>(Landroid/content/Context;Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scan()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;->mLastCreateTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    const-string v1, "CleanerShortcutModel"

    if-gez v0, :cond_1

    sget-object v0, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {p0, v0}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    sget-boolean v0, Luf/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastCreateTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;->mLastCreateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {v0, v2}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sget-boolean v2, Luf/a;->a:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\tmLastCreateTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;->mLastCreateTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;->stat:Ljava/lang/String;

    invoke-static {v0}, Lc4/i$a;->b(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
