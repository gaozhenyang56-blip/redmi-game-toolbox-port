.class public Lq2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq2/b$b;,
        Lq2/b$a;
    }
.end annotation


# direct methods
.method static synthetic a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lq2/b;->h(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lq2/b;->g(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lq2/b;->f(Ljava/lang/String;J)V

    return-void
.end method

.method public static d(Lcom/miui/guardprovider/aidl/VirusInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/miui/guardprovider/aidl/VirusInfo;->packageName:Ljava/lang/String;

    const-string v2, "package_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "package_name_cn"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "install_source"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/guardprovider/aidl/VirusInfo;->extras:Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/guardprovider/aidl/VirusInfo;->engineName:Ljava/lang/String;

    invoke-static {p1, p2}, Lw2/t;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "engine"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "level"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/miui/guardprovider/aidl/VirusInfo;->virusDescription:Ljava/lang/String;

    const-string p1, "desc"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "signature_md5"

    invoke-interface {v0, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "engine_update_time"

    invoke-interface {v0, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "report_source"

    invoke-interface {v0, p0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "virus_name"

    invoke-interface {v0, p0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "app_version"

    invoke-interface {v0, p0, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object p0

    const-string p1, "scan_result"

    const-string p2, "antivirus"

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "package_name"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "package_name_cn"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "install_source"

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "engine"

    invoke-interface {v0, p0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "level"

    invoke-interface {v0, p0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "desc"

    invoke-interface {v0, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "signature_md5"

    invoke-interface {v0, p0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "engine_update_time"

    invoke-interface {v0, p0, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "report_source"

    invoke-interface {v0, p0, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "virus_name"

    invoke-interface {v0, p0, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "app_version"

    invoke-interface {v0, p0, p10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/analytics/StatManager;->getInstance()Lcom/miui/analytics/StatManager;

    move-result-object p0

    const-string p1, "scan_result"

    const-string p2, "antivirus"

    invoke-virtual {p0, p1, v0, p2}, Lcom/miui/analytics/StatManager;->track(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private static f(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "antivirus"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordCalculateEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static g(Ljava/lang/String;)V
    .locals 1

    const-string v0, "antivirus"

    invoke-static {v0, p0}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static h(Ljava/lang/String;Ljava/util/Map;)V
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

    const-string v0, "antivirus"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static i(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "antivirus"

    invoke-static {v0, p0, p1, p2}, Lcom/miui/analytics/AnalyticsUtil;->recordNumericEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "antivirus"

    invoke-static {v0, p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 7

    invoke-static {}, Lo2/h;->x()Z

    move-result v0

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-string v0, "toggle_ns_antivirus_whitelist"

    invoke-static {v0, v5, v6}, Lq2/b;->i(Ljava/lang/String;J)V

    invoke-static {}, Lo2/h;->b()Ljava/lang/String;

    move-result-object v0

    const-string v5, "toggle_ns_engine_one"

    invoke-static {v5, v0}, Lq2/b;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "TENCENT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v0, "key_database_auto_update_enabled_TENCENT"

    invoke-static {v0}, Lo2/h;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    const-string v0, "toggle_ns_tencent_update"

    invoke-static {v0, v5, v6}, Lq2/b;->i(Ljava/lang/String;J)V

    invoke-static {}, Lo2/h;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    move-wide v5, v1

    goto :goto_2

    :cond_2
    move-wide v5, v3

    :goto_2
    const-string v0, "toggle_ns_cloud_scan"

    goto :goto_4

    :cond_3
    const-string v5, "AVL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "key_database_auto_update_enabled_AVL"

    invoke-static {v0}, Lo2/h;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-wide v5, v1

    goto :goto_3

    :cond_4
    move-wide v5, v3

    :goto_3
    const-string v0, "toggle_ns_antiy_update"

    :goto_4
    invoke-static {v0, v5, v6}, Lq2/b;->i(Ljava/lang/String;J)V

    :cond_5
    invoke-static {p0}, Lw2/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-wide v5, v1

    goto :goto_5

    :cond_6
    move-wide v5, v3

    :goto_5
    const-string v0, "toggle_ns_installing_monitor"

    invoke-static {v0, v5, v6}, Lq2/b;->i(Ljava/lang/String;J)V

    invoke-static {}, Lo2/h;->r()Z

    move-result v0

    if-eqz v0, :cond_7

    move-wide v5, v1

    goto :goto_6

    :cond_7
    move-wide v5, v3

    :goto_6
    const-string v0, "toggle_ns_pay_environment_check"

    invoke-static {v0, v5, v6}, Lq2/b;->i(Ljava/lang/String;J)V

    invoke-static {}, Lo2/h;->r()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lo2/h;->u()Z

    move-result v0

    if-eqz v0, :cond_8

    move-wide v5, v1

    goto :goto_7

    :cond_8
    move-wide v5, v3

    :goto_7
    const-string v0, "toggle_ns_safe_input"

    invoke-static {v0, v5, v6}, Lq2/b;->i(Ljava/lang/String;J)V

    :cond_9
    invoke-static {}, Lo2/h;->y()Z

    move-result v0

    if-eqz v0, :cond_a

    move-wide v5, v1

    goto :goto_8

    :cond_a
    move-wide v5, v3

    :goto_8
    const-string v0, "toggle_ns_wlan_scan"

    invoke-static {v0, v5, v6}, Lq2/b;->i(Ljava/lang/String;J)V

    invoke-static {}, Lo2/h;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    move-wide v5, v1

    goto :goto_9

    :cond_b
    move-wide v5, v3

    :goto_9
    const-string v0, "toggle_ns_root_scan"

    invoke-static {v0, v5, v6}, Lq2/b;->i(Ljava/lang/String;J)V

    invoke-static {}, Lo2/h;->v()Z

    move-result v0

    if-eqz v0, :cond_c

    move-wide v5, v1

    goto :goto_a

    :cond_c
    move-wide v5, v3

    :goto_a
    const-string v0, "toggle_ns_update_scan"

    invoke-static {v0, v5, v6}, Lq2/b;->i(Ljava/lang/String;J)V

    invoke-static {p0}, Lw2/t;->v(Landroid/content/Context;)I

    move-result p0

    if-lez p0, :cond_d

    goto :goto_b

    :cond_d
    move-wide v1, v3

    :goto_b
    const-string p0, "toggle_ns_genuine_whitelist"

    invoke-static {p0, v1, v2}, Lq2/b;->i(Ljava/lang/String;J)V

    return-void
.end method
