.class public Lcom/miui/luckymoney/stats/MiStatUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CATEGORY_LUCKY_MONEY:Ljava/lang/String; = "luckymoney"

.field public static final CLOSE:Ljava/lang/String; = "close"

.field private static final EVENT_LUCKY_TOGGLESTATE:Ljava/lang/String; = "luckymoney_toggle_state"

.field private static final GUIDE_PAGE_VISIT_OPEN:Ljava/lang/String; = "guide_page_visit_open"

.field private static final KEY_ADS:Ljava/lang/String; = "luckymoney_ad_show"

.field private static final KEY_DND_MODE_SWITCH:Ljava/lang/String; = "toggle_no_disturb"

.field private static final KEY_DND_WAY:Ljava/lang/String; = "toggle_no_disturb_way"

.field private static final KEY_FAST_OPEN_SHOW:Ljava/lang/String; = "quickly_model_show"

.field private static final KEY_FAST_OPEN_SWITCH:Ljava/lang/String; = "toggle_quickly_model"

.field private static final KEY_FUNC_NO_WORK:Ljava/lang/String; = "remind_abnormal_click"

.field private static final KEY_LUCKY_FAST_OPEN:Ljava/lang/String; = "quickly_model_packet_show"

.field private static final KEY_LUCKY_MONEY_LOCKED_NOTI:Ljava/lang/String; = "red_packet_popup_1"

.field private static final KEY_LUCKY_MONEY_NOTI:Ljava/lang/String; = "red_packet_popup_2"

.field private static final KEY_LUCKY_SOUND_SWITCH:Ljava/lang/String; = "red_packet_sound_remind"

.field public static final KEY_LUCK_MONEY_REMINDED_QQ_POSTFIX:Ljava/lang/String; = "qq"

.field public static final KEY_LUCK_MONEY_REMINDED_WEIXIN_POSTFIX:Ljava/lang/String; = "wechat"

.field private static final KEY_MASTER_SWITCH:Ljava/lang/String; = "toggle_red_packet"

.field private static final KEY_ONLY_GROUP_MESSAGE_SWITCH:Ljava/lang/String; = "toggle_group_only"

.field private static final KEY_QQ_SWITCH:Ljava/lang/String; = "toggle_qq"

.field private static final KEY_SHAKE_RANDOM_EXPRESSION:Ljava/lang/String; = "shake_expression"

.field private static final KEY_WECHAT_SWITCH:Ljava/lang/String; = "toggle_wechat"

.field private static final MODULE:Ljava/lang/String; = "module"

.field private static final MODULE_CLICK:Ljava/lang/String; = "module_click"

.field private static final MODULE_SHOW:Ljava/lang/String; = "module_show"

.field public static final SETTINGS:Ljava/lang/String; = "settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recordAds(J)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "ad_show"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "luckymoney"

    const-string p1, "luckymoney_ad_show"

    invoke-static {p0, p1, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordFastOpenShow()V
    .locals 2

    const-string v0, "luckymoney"

    const-string v1, "quickly_model_show"

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordFuncNoWork()V
    .locals 2

    const-string v0, "luckymoney"

    const-string v1, "remind_abnormal_click"

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordGuidePage(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module"

    if-eqz p0, :cond_0

    const-string p0, "open"

    goto :goto_0

    :cond_0
    const-string p0, "visit"

    :goto_0
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "luckymoney"

    const-string v1, "guide_page_visit_open"

    invoke-static {p0, v1, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordLuckyMoneyFastOpen(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "luckymoney"

    const-string v1, "quickly_model_packet_show"

    invoke-static {p0, v1, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordLuckyMoneyLockedNoti(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "module_click"

    goto :goto_0

    :cond_0
    const-string p1, "module_show"

    :goto_0
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "luckymoney"

    const-string p1, "red_packet_popup_1"

    invoke-static {p0, p1, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordLuckyMoneyNoti(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "module_click"

    goto :goto_0

    :cond_0
    const-string p1, "module_show"

    :goto_0
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "luckymoney"

    const-string p1, "red_packet_popup_2"

    invoke-static {p0, p1, v0}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordShakeRandomExpression()V
    .locals 2

    const-string v0, "luckymoney"

    const-string v1, "shake_expression"

    invoke-static {v0, v1}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static trackSettingSwitchState(Landroid/content/Context;)V
    .locals 7

    invoke-static {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getSettingSwitchUpdateTime()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_8

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v3

    const-string v4, "1"

    const-string v5, "0"

    if-eqz v3, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    const-string v6, "toggle_red_packet"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getXiaomiLuckyMoneyEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getWeChatLuckyWarningEnable()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    const-string v6, "toggle_wechat"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getQQLuckyWarningEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object v3, v5

    :goto_2
    const-string v6, "toggle_qq"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getOnlyNotiGroupLuckuMoneyConfig()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v4

    goto :goto_3

    :cond_3
    move-object v3, v5

    :goto_3
    const-string v6, "toggle_group_only"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getLuckySoundWarningLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "red_packet_sound_remind"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeOpen()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v4

    goto :goto_4

    :cond_4
    move-object v3, v5

    :goto_4
    const-string v6, "toggle_no_disturb"

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    move-object v4, v5

    :goto_5
    const-string v3, "toggle_quickly_model"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->isDNDModeOpen()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getDNDModeLevel()I

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "only_no_sound"

    goto :goto_6

    :cond_6
    const-string v3, "no_remind"

    :goto_6
    const-string v4, "toggle_no_disturb_way"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v3, "luckymoney_toggle_state"

    invoke-static {v3, v2}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/luckymoney/config/CommonConfig;->setSettingSwitchUpdateTime(J)V

    :cond_8
    return-void
.end method
