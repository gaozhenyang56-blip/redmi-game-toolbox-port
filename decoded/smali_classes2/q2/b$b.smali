.class public Lq2/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static A()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "unofficial_app"

    const-string v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static B()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "update"

    const-string v2, "finish_update"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static C()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "update"

    const-string v2, "click_update"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static D()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "virus_app"

    const-string v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static E()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "network_security"

    const-string v2, "wifi_cut_off"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "safe"

    return-object p0

    :pswitch_0
    const-string p0, "risky_wifi"

    return-object p0

    :pswitch_1
    const-string p0, "risky_messaging"

    return-object p0

    :pswitch_2
    const-string p0, "risky_virus"

    return-object p0

    :pswitch_3
    const-string p0, "risky_sign"

    return-object p0

    :pswitch_4
    const-string p0, "risky_root"

    return-object p0

    :pswitch_5
    const-string p0, "risky_wifi_approve"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "toggle_antispam"

    const-string v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static c()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "system_sms_default"

    const-string v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "click_ok"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_guidance"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_guidance"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static f(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "risk_app_find"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_0

    const-string p0, "risk_app"

    goto :goto_0

    :cond_0
    const-string p0, "virus_app"

    :goto_0
    const-string p1, "risk_type"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "risk_scan_result"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static g(ZZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "ignore"

    goto :goto_0

    :cond_0
    const-string p1, "click_fix"

    :goto_0
    const-string v1, "risk_app_optimise"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "module_show"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    const-string p0, "risk_app"

    goto :goto_1

    :cond_1
    const-string p0, "virus_app"

    :goto_1
    const-string p1, "risk_type"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "risk_scan_event"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static h()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pay_environment_check"

    const-string v2, "click_add"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static i()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pay_environment_check"

    const-string v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static j()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "noti_sms_perm"

    const-string v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "source_package"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pay_package"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pay_event"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "source_package"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pay_package"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "antivirus_pay_event_total"

    invoke-static {p0, v0}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_background_popup_click"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static n()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "root_status"

    const-string v2, "click_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static o()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "root_status"

    const-string v2, "finish_fix"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ns_result_foreground"

    invoke-static {v1, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static p(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_action_activity"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p0, "activity"

    invoke-static {p0}, Lq2/b$b;->s(Ljava/lang/String;)V

    return-void
.end method

.method public static q(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_action_activity"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p0, "activity"

    invoke-static {p0}, Lq2/b$b;->x(Ljava/lang/String;)V

    return-void
.end method

.method public static r(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_action_ad"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p0, "ad"

    invoke-static {p0}, Lq2/b$b;->x(Ljava/lang/String;)V

    return-void
.end method

.method public static s(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_action"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static t(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_action_f"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p0, "function"

    invoke-static {p0}, Lq2/b$b;->s(Ljava/lang/String;)V

    return-void
.end method

.method public static u(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_action_f"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p0, "function"

    invoke-static {p0}, Lq2/b$b;->x(Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_click"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_action_news"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p0, "news"

    invoke-static {p0}, Lq2/b$b;->s(Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_action_news"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    const-string p0, "news"

    invoke-static {p0}, Lq2/b$b;->x(Ljava/lang/String;)V

    return-void
.end method

.method public static x(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "module_show"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_action"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static y(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_background"

    invoke-static {p0, v0}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static z(Landroid/content/Context;)V
    .locals 6

    invoke-static {p0}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lo2/g;->f0()Lw2/r;

    move-result-object v2

    sget-object v3, Lw2/r;->b:Lw2/r;

    if-ne v2, v3, :cond_0

    const-string v2, "safe"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo2/g;->f0()Lw2/r;

    move-result-object v2

    sget-object v3, Lw2/r;->c:Lw2/r;

    if-ne v2, v3, :cond_1

    const-string v2, "risk"

    goto :goto_0

    :cond_1
    const-string v2, "dangerous"

    :goto_0
    const-string v3, "network_security"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lo2/g;->j0()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "root_got"

    goto :goto_1

    :cond_2
    const-string v2, "root_not_yet"

    :goto_1
    const-string v3, "root_status"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lo2/g;->k0()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "update_available"

    goto :goto_2

    :cond_3
    const-string v2, "update_not_found"

    :goto_2
    const-string v3, "update"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo2/h;->r()Z

    move-result v2

    const-string v3, "on"

    const-string v4, "off"

    if-eqz v2, :cond_4

    move-object v2, v3

    goto :goto_3

    :cond_4
    move-object v2, v4

    :goto_3
    const-string v5, "pay_environment_check"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lo2/g;->R()Lcom/miui/antivirus/model/d;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, "system_sms"

    goto :goto_4

    :cond_5
    const-string v2, "third_party_sms"

    :goto_4
    const-string v5, "system_sms_default"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lm2/a;->i(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    move-object v3, v4

    :goto_5
    const-string p0, "toggle_antispam"

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lo2/g;->S()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "allowed"

    goto :goto_6

    :cond_7
    const-string p0, "no_allow"

    :goto_6
    const-string v2, "noti_sms_perm"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lo2/g;->b0()I

    move-result p0

    const-string v2, "not_found"

    const-string v3, "found"

    if-lez p0, :cond_8

    move-object p0, v2

    goto :goto_7

    :cond_8
    move-object p0, v3

    :goto_7
    const-string v4, "virus_app"

    invoke-interface {v1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lo2/g;->Z()I

    move-result p0

    if-lez p0, :cond_9

    move-object p0, v3

    goto :goto_8

    :cond_9
    move-object p0, v2

    :goto_8
    const-string v4, "unofficial_app"

    invoke-interface {v1, v4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lo2/g;->N()I

    move-result p0

    if-lez p0, :cond_a

    goto :goto_9

    :cond_a
    move-object v2, v3

    :goto_9
    const-string p0, "risk_app"

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ns_result_foreground"

    invoke-static {p0, v1}, Lq2/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
