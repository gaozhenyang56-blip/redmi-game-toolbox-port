.class public Lcom/miui/networkassistant/service/tm/TetherStatsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TetherStatsManager"

.field private static final TETHER_LIMIT_STOP_NETWORK:I = 0x0

.field private static final TETHER_LIMIT_WARNING:I = 0x1


# instance fields
.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mIsWifiApEnabled:Z

.field private mTetheringLimitEnable:Z

.field private mTetheringLimitTraffic:J

.field private mTetheringStartStats:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringStartStats:J

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-void
.end method


# virtual methods
.method checkTetheringTrafficStatus(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mIsWifiApEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringLimitEnable:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringLimitTraffic:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getTodayDataUsageForUidHotPot()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringStartStats:J

    cmp-long p1, v4, v2

    if-gtz p1, :cond_0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringStartStats:J

    return-void

    :cond_0
    sub-long/2addr v0, v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u539f\u6709\u6570\u636e\u7edf\u8ba12\uff1a"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lx4/j0;->b(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TetherStatsManager"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringLimitTraffic:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringOverLimitOptType()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringDataUsageOverLimit()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringDataUsageOverLimit(Z)Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendTetherOverLimitWaringNotify(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringDataUsageOverLimit()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringDataUsageOverLimit(Z)Z

    invoke-virtual {p0}, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->onTetherStatsOverLimit()V

    :cond_3
    :goto_0
    return-void
.end method

.method initTetheringStatus()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lp4/d;->g(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->initTetheringStatus(Z)V

    return-void
.end method

.method initTetheringStatus(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mIsWifiApEnabled:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ap enable "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mIsWifiApEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TetherStatsManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mIsWifiApEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringLimitEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringLimitEnable:Z

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringLimitTraffic()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringLimitTraffic:J

    iget-object p1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringDataUsageOverLimit(Z)Z

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mTetheringStartStats:J

    :goto_0
    return-void
.end method

.method public onTetherStatsOverLimit()V
    .locals 10

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lp4/j;->b(Landroid/content/Context;Z)V

    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const v0, 0x7f1219ab

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    const v5, 0x7f1219aa

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static/range {v1 .. v9}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/networkassistant/ui/activity/TetherStatsOverLimitActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TetherStatsManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lx4/z1;->d()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
