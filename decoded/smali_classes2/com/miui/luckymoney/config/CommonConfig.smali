.class public Lcom/miui/luckymoney/config/CommonConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/miui/luckymoney/config/CommonConfig;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/config/CommonConfig;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;
    .locals 2

    const-class v0, Lcom/miui/luckymoney/config/CommonConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/luckymoney/config/CommonConfig;->sInstance:Lcom/miui/luckymoney/config/CommonConfig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/luckymoney/config/CommonConfig;

    invoke-direct {v1, p0}, Lcom/miui/luckymoney/config/CommonConfig;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/luckymoney/config/CommonConfig;->sInstance:Lcom/miui/luckymoney/config/CommonConfig;

    :cond_0
    sget-object p0, Lcom/miui/luckymoney/config/CommonConfig;->sInstance:Lcom/miui/luckymoney/config/CommonConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getAdsConfig()Ljava/lang/String;
    .locals 2

    const-string v0, "ads_config"

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDNDModeLevel()I
    .locals 2

    sget v0, Lcom/miui/luckymoney/config/CommonPerConstants$DEFAULT;->DO_NOT_DISTURB_MODE_LEVEL_DEFAULT:I

    const-string v1, "do_not_disturb_mode_level"

    invoke-static {v1, v0}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDNDStartTime()J
    .locals 3

    const-string v0, "dnd_start_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDNDStopTime()J
    .locals 3

    const-string v0, "dnd_stop_time"

    const-wide/32 v1, 0x1808580

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUpdateFrequency()J
    .locals 3

    const-string v0, "default_update_frequency"

    const-wide/32 v1, 0xa4cb800

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized getFastOpenConfig()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenConfigFirstLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/config/CommonConfig;->setFastOpenConfigFirstLoad(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "fast_open_config"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHotEndTime()J
    .locals 3

    const-string v0, "hot_end_time"

    const-wide/16 v1, 0x1

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHotFrequency()J
    .locals 3

    const-string v0, "hot_update_frequency"

    const-wide/32 v1, 0x1499700

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHotStartTime()J
    .locals 3

    const-string v0, "hot_start_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastTimeCheckUpdateConfig()J
    .locals 3

    const-string v0, "last_time_check_update_config"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLuckySoundWarningEnable()Z
    .locals 2

    const-string v0, "lucky_sound_warning_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getLuckySoundWarningLevel()I
    .locals 2

    const-string v0, "lucky_sound_warning_level"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMasterSwitchConfig()Ljava/lang/String;
    .locals 2

    const-string v0, "master_switch_config"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnlyNotiGroupLuckuMoneyConfig()Z
    .locals 2

    const-string v0, "only_noti_group_lucky_money"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getQQLuckyWarningEnable()Z
    .locals 2

    const-string v0, "qq_lucky_warning_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getSettingSwitchUpdateTime()J
    .locals 3

    const-string v0, "setting_switch_state_upload_time"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningLuckyMoneyCount()J
    .locals 3

    const-string v0, "warning_lucky_money_count"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWeChatLuckyWarningEnable()Z
    .locals 2

    const-string v0, "lucky_warning_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getXiaomiLuckyMoneyEnable()Z
    .locals 2

    const-string v0, "xiaomi_lucky_money_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isConfigChanged()Z
    .locals 2

    const-string v0, "is_config_changed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDNDModeEffective()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->isDuringDNDTime()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDNDModeOpen()Z
    .locals 2

    const-string v0, "do_not_disturb_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isDuringDNDTime()Z
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/luckymoney/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDStartTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDStopTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    cmp-long v2, v0, v2

    if-gtz v6, :cond_1

    if-ltz v2, :cond_0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    return v7

    :cond_1
    if-ltz v2, :cond_2

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    :cond_2
    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    goto :goto_1

    :cond_3
    move v7, v8

    :cond_4
    :goto_1
    return v7
.end method

.method public declared-synchronized isFastOpenConfigFirstLoad()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "fast_open_config_first_load"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFastOpenEnable()Z
    .locals 2

    const-string v0, "fast_open_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstStartUp()Z
    .locals 2

    const-string v0, "first_start_up"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isShouldUserTips()Z
    .locals 2

    const-string v0, "should_tips"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAdsConfig(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ads_config"

    invoke-static {v0, p1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setConfigChanged(Z)V
    .locals 1

    const-string v0, "is_config_changed"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDNDModeEnable(Z)V
    .locals 1

    const-string v0, "do_not_disturb_mode"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDNDModeLevel(I)V
    .locals 1

    const-string v0, "do_not_disturb_mode_level"

    invoke-static {v0, p1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public setDNDStartTime(J)V
    .locals 1

    const-string v0, "dnd_start_time"

    invoke-static {v0, p1, p2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public setDNDStopTime(J)V
    .locals 1

    const-string v0, "dnd_stop_time"

    invoke-static {v0, p1, p2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public setDefaultUpdateFrequency(J)V
    .locals 1

    const-string v0, "default_update_frequency"

    invoke-static {v0, p1, p2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public declared-synchronized setFastOpenConfig(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "fast_open_config"

    invoke-static {v0, p1}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFastOpenConfigFirstLoad(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "fast_open_config_first_load"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFastOpenEnable(Z)V
    .locals 1

    const-string v0, "fast_open_mode"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFirstStartUp(Z)V
    .locals 1

    const-string v0, "first_start_up"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public setHotEndTime(J)V
    .locals 1

    const-string v0, "hot_end_time"

    invoke-static {v0, p1, p2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public setHotFrequency(J)V
    .locals 1

    const-string v0, "hot_update_frequency"

    invoke-static {v0, p1, p2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public setHotStartTime(J)V
    .locals 1

    const-string v0, "hot_start_time"

    invoke-static {v0, p1, p2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public setLastTimeCheckUpdateConfig(J)V
    .locals 1

    const-string v0, "last_time_check_update_config"

    invoke-static {v0, p1, p2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public setLuckySoundWarningEnable(Z)V
    .locals 1

    const-string v0, "lucky_sound_warning_enable"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLuckySoundWarningLevel(I)V
    .locals 1

    const-string v0, "lucky_sound_warning_level"

    invoke-static {v0, p1}, Lr4/a;->p(Ljava/lang/String;I)V

    return-void
.end method

.method public setMasterSwitchConfig(Ljava/lang/String;)V
    .locals 1

    const-string v0, "master_switch_config"

    invoke-static {v0, p1}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnlyNotiGroupLuckuMoneyConfig(Z)V
    .locals 1

    const-string v0, "only_noti_group_lucky_money"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public setQQLuckyWarningEnable(Z)V
    .locals 1

    const-string v0, "qq_lucky_warning_enable"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSettingSwitchUpdateTime(J)V
    .locals 1

    const-string v0, "setting_switch_state_upload_time"

    invoke-static {v0, p1, p2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public setShouldCleanResDir(Z)V
    .locals 1

    const-string v0, "should_clean_res_dir"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public setShouldUserTips(Z)V
    .locals 1

    const-string v0, "should_tips"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWarningLuckyMoneyCount(J)V
    .locals 1

    const-string v0, "warning_lucky_money_count"

    invoke-static {v0, p1, p2}, Lr4/a;->q(Ljava/lang/String;J)V

    return-void
.end method

.method public setWeChatLuckyWarningEnable(Z)V
    .locals 1

    const-string v0, "lucky_warning_enable"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public setXiaomiLuckyMoneyEnable(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/config/CommonConfig;->setConfigChanged(Z)V

    :cond_0
    const-string v0, "xiaomi_lucky_money_enable"

    invoke-static {v0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldCleanResDir()Z
    .locals 2

    const-string v0, "should_clean_res_dir"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
