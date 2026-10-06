.class public Lc2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "antispam"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "antispam"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static c(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "antispam"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "antispam"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "phone_list_type"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "phone_list_from"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "add_phone_list"

    invoke-static {p0, v0}, Lc2/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "homepage_click"

    invoke-static {p0, v0}, Lc2/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "anti_event"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "intercept_event"

    invoke-static {p0, v0}, Lc2/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static h(J)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-wide/16 v1, 0x1f4

    cmp-long v1, p0, v1

    const-string v2, "time"

    if-gez v1, :cond_0

    const-string p0, "fast"

    :goto_0
    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x3e8

    cmp-long v1, p0, v3

    if-gez v1, :cond_1

    const-string p0, "medium"

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x5dc

    cmp-long v1, p0, v3

    if-gez v1, :cond_2

    const-string p0, "slow"

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x7d0

    cmp-long p0, p0, v3

    if-gez p0, :cond_3

    const-string p0, "optimaze"

    goto :goto_0

    :cond_3
    const-string p0, "timeout"

    goto :goto_0

    :goto_1
    const-string p0, "intercept_time"

    invoke-static {p0, v0}, Lc2/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "antispam_main_open"

    invoke-static {v0, p0}, Lc2/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lc2/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static k(IJ)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "time"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "intercept_time_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lc2/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static l(Landroid/content/Context;I)V
    .locals 8

    invoke-static {p0, p1}, Le2/b;->i(Landroid/content/Context;I)Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-string v0, "toggle_intercept_swindle"

    invoke-static {v0, v5, v6}, Lc2/a;->c(Ljava/lang/String;J)V

    invoke-static {p0, p1}, Le2/b;->f(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    const-string v0, "toggle_intercept_intermediary"

    invoke-static {v0, v5, v6}, Lc2/a;->c(Ljava/lang/String;J)V

    invoke-static {p0, p1}, Le2/b;->m(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-wide v5, v1

    goto :goto_2

    :cond_2
    move-wide v5, v3

    :goto_2
    const-string v0, "toggle_intercept_peddle"

    invoke-static {v0, v5, v6}, Lc2/a;->c(Ljava/lang/String;J)V

    invoke-static {p0, p1}, Le2/b;->j(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide v5, v1

    goto :goto_3

    :cond_3
    move-wide v5, v3

    :goto_3
    const-string v0, "toggle_intercept_spam"

    invoke-static {v0, v5, v6}, Lc2/a;->c(Ljava/lang/String;J)V

    invoke-static {p1}, Le2/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-wide v5, v1

    goto :goto_4

    :cond_4
    move-wide v5, v3

    :goto_4
    const-string v0, "toggle_not_limited_repeated_calls"

    invoke-static {v0, v5, v6}, Lc2/a;->c(Ljava/lang/String;J)V

    invoke-static {p1}, Le2/b;->g(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-wide v5, v1

    goto :goto_5

    :cond_5
    move-wide v5, v3

    :goto_5
    const-string v0, "toggle_intercept_call_transfer"

    invoke-static {v0, v5, v6}, Lc2/a;->c(Ljava/lang/String;J)V

    const-string v0, "stranger_call_mode"

    const/4 v5, 0x1

    invoke-static {p0, v0, p1, v5}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v5, :cond_6

    move-wide v6, v3

    goto :goto_6

    :cond_6
    move-wide v6, v1

    :goto_6
    const-string v0, "toggle_stranger_call"

    invoke-static {v0, v6, v7}, Lc2/a;->c(Ljava/lang/String;J)V

    const-string v0, "oversea_call_mode"

    invoke-static {p0, v0, p1, v5}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v5, :cond_7

    move-wide v6, v3

    goto :goto_7

    :cond_7
    move-wide v6, v1

    :goto_7
    const-string v0, "toggle_overseas_call"

    invoke-static {v0, v6, v7}, Lc2/a;->c(Ljava/lang/String;J)V

    const-string v0, "contact_call_mode"

    invoke-static {p0, v0, p1, v5}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v5, :cond_8

    move-wide v6, v3

    goto :goto_8

    :cond_8
    move-wide v6, v1

    :goto_8
    const-string v0, "toggle_contacts_call"

    invoke-static {v0, v6, v7}, Lc2/a;->c(Ljava/lang/String;J)V

    const-string v0, "empty_call_mode"

    invoke-static {p0, v0, p1, v5}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v5, :cond_9

    move-wide v6, v3

    goto :goto_9

    :cond_9
    move-wide v6, v1

    :goto_9
    const-string v0, "toggle_empty_number"

    invoke-static {v0, v6, v7}, Lc2/a;->c(Ljava/lang/String;J)V

    const-string v0, "contact_sms_mode"

    invoke-static {p0, v0, p1, v5}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v5, :cond_a

    move-wide v6, v3

    goto :goto_a

    :cond_a
    move-wide v6, v1

    :goto_a
    const-string v0, "toggle_sms_contact"

    invoke-static {v0, v6, v7}, Lc2/a;->c(Ljava/lang/String;J)V

    invoke-static {p0, p1}, Lm2/f;->h(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_b

    move-wide v6, v1

    goto :goto_b

    :cond_b
    move-wide v6, v3

    :goto_b
    const-string v0, "toggle_black_number"

    invoke-static {v0, v6, v7}, Lc2/a;->c(Ljava/lang/String;J)V

    invoke-static {p0, p1}, Lm2/f;->v(Landroid/content/Context;I)I

    move-result v0

    if-lez v0, :cond_c

    move-wide v6, v1

    goto :goto_c

    :cond_c
    move-wide v6, v3

    :goto_c
    const-string v0, "toggle_white_number"

    invoke-static {v0, v6, v7}, Lc2/a;->c(Ljava/lang/String;J)V

    invoke-static {p0, v5, p1}, Lm2/f;->q(Landroid/content/Context;II)I

    move-result v0

    if-lez v0, :cond_d

    move-wide v6, v1

    goto :goto_d

    :cond_d
    move-wide v6, v3

    :goto_d
    const-string v0, "toggle_sms_keyword_black"

    invoke-static {v0, v6, v7}, Lc2/a;->c(Ljava/lang/String;J)V

    const/4 v0, 0x4

    invoke-static {p0, v0, p1}, Lm2/f;->q(Landroid/content/Context;II)I

    move-result v0

    if-lez v0, :cond_e

    move-wide v6, v1

    goto :goto_e

    :cond_e
    move-wide v6, v3

    :goto_e
    const-string v0, "toggle_sms_keyword_white"

    invoke-static {v0, v6, v7}, Lc2/a;->c(Ljava/lang/String;J)V

    invoke-static {p0}, Lm2/a;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_f

    :cond_f
    move-wide v1, v3

    :goto_f
    const-string v0, "toggle_auto_update"

    invoke-static {v0, v1, v2}, Lc2/a;->c(Ljava/lang/String;J)V

    const-string v0, "busy_tone"

    const-string v1, "absentee"

    const-string v2, "power_off"

    const-string v3, "halt"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Le2/b;->b(I)I

    move-result v1

    if-gez v1, :cond_10

    const/4 v1, 0x0

    :cond_10
    aget-object v0, v0, v1

    const-string v1, "toggle_back_sound"

    invoke-static {v1, v0}, Lc2/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "all"

    const-string v1, "non_black"

    const-string v2, "off"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lm2/a;->d(Landroid/content/Context;I)I

    move-result v1

    aget-object v0, v0, v1

    const-string v1, "toggle_noti"

    invoke-static {v1, v0}, Lc2/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "intercept"

    const-string v1, "smart_intercept"

    const-string v2, "pass"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "stranger_sms_mode"

    invoke-static {p0, v1, p1, v5}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    aget-object v1, v0, v1

    const-string v2, "toggle_sms_stranger"

    invoke-static {v2, v1}, Lc2/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "service_sms_mode"

    invoke-static {p0, v1, p1, v5}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    aget-object v1, v0, v1

    const-string v2, "toggle_sms_noti"

    invoke-static {v2, v1}, Lc2/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "mms_mode"

    invoke-static {p0, v2, p1, v1}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p0

    aget-object p0, v0, p0

    const-string p1, "toggle_sms_mms"

    invoke-static {p1, p0}, Lc2/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    const-string v5, "toggle_antispam"

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    invoke-static {p0, v6}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, v3

    :goto_0
    invoke-static {v5, v1, v2}, Lc2/a;->c(Ljava/lang/String;J)V

    invoke-static {p0, v6}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v6}, Lc2/a;->l(Landroid/content/Context;I)V

    :cond_1
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lm2/a;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lc2/a;->l(Landroid/content/Context;I)V

    goto :goto_3

    :cond_3
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lmiui/telephony/SubscriptionManager;->getSubscriptionInfoForSlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p0, v6}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move-wide v1, v3

    :goto_1
    invoke-static {v5, v1, v2}, Lc2/a;->c(Ljava/lang/String;J)V

    invoke-static {p0, v6}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    invoke-static {p0, v6}, Lc2/a;->l(Landroid/content/Context;I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public static n()V
    .locals 1

    const-string v0, "show_sms_log"

    invoke-static {v0}, Lc2/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static o(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "main_module"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "200_num_check_black"

    invoke-static {p0, v0}, Lc2/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static p()V
    .locals 1

    const-string v0, "sms_log_delete_all_confirm"

    invoke-static {v0}, Lc2/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static q()V
    .locals 1

    const-string v0, "sms_log_delete_all_click"

    invoke-static {v0}, Lc2/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static r()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "short_link_check"

    const-string v2, "short_link"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "200_num_check"

    invoke-static {v1, v0}, Lc2/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static s()V
    .locals 1

    const-string v0, "sms_url_scan"

    invoke-static {v0}, Lc2/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "name_list_result"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "200_num_check"

    invoke-static {p0, v0}, Lc2/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "main_module"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "200_num_check_unkown"

    invoke-static {p0, v0}, Lc2/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "res_version"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "%s_%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "update_state"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "sms_engine_update"

    invoke-static {p0, v0}, Lc2/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
