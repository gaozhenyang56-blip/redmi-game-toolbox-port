.class public Ldf/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "tip"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lgl/a;->F()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "is_lite"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p0}, Lx4/i;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v1, 0x7f121a95

    goto :goto_0

    :cond_1
    const v1, 0x7f121a96

    :goto_0
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_direction"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_2

    const v1, 0x7f120e1b

    goto :goto_1

    :cond_2
    const v1, 0x7f120e1c

    :goto_1
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "model_type"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p2, Lsl/a;->d:Z

    const-string v1, "phone_type"

    if-nez p2, :cond_3

    const-string p0, "\u76f4\u677f"

    :goto_2
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-static {}, Lx4/y;->j()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p0}, Lbl/c;->q(Landroid/content/Context;)V

    invoke-static {p0}, Lsl/b;->d(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "\u5185\u5c4f"

    goto :goto_3

    :cond_4
    const-string p0, "\u5916\u5c4f"

    :goto_3
    const-string p2, "screen_type"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "fold"

    goto :goto_2

    :cond_5
    invoke-static {}, Lx4/y;->g()Z

    move-result p2

    if-nez p2, :cond_6

    return-void

    :cond_6
    const-string p2, "flip"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lsl/b;->c(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_8

    if-nez v0, :cond_8

    invoke-static {p0}, Lbl/c;->q(Landroid/content/Context;)V

    invoke-static {p0}, Lx4/i;->a(Landroid/content/Context;)I

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "\u6444\u50cf\u5934\u671d\u4e0a"

    goto :goto_4

    :cond_7
    const-string p0, "\u6444\u50cf\u5934\u671d\u4e0b"

    :goto_4
    invoke-interface {p1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Ldf/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ldf/h;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "current_ime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.baidu.input_mi"

    invoke-static {p0, v1}, Ldf/h;->M(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "\u5df2\u542f\u7528"

    const-string v3, "\u672a\u542f\u7528"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v4, "baidu_status"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-static {p0, v1}, Ldf/h;->M(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    const-string v4, "sogou_status"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "com.iflytek.inputmethod.miui"

    invoke-static {p0, v1}, Ldf/h;->M(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    const-string v1, "xunfei_status"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ldf/h;->y(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const-string v2, "other_status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ldf/h;->Q(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u5df2\u5f00\u542f"

    goto :goto_3

    :cond_3
    const-string v1, "\u5df2\u5173\u95ed"

    :goto_3
    const-string v2, "safe_status"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ldf/h;->N(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "\u5f00"

    const-string v3, "\u5173"

    if-eqz v1, :cond_4

    move-object v1, v2

    goto :goto_4

    :cond_4
    move-object v1, v3

    :goto_4
    const-string v4, "dark_status"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ldf/h;->O(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "\u662f"

    goto :goto_5

    :cond_5
    const-string v1, "\u5426"

    :goto_5
    const-string v4, "has_high"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ldf/h;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldf/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "left_function"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ldf/h;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldf/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "right_function"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ldf/h;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldf/h;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "middle_function"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Ldf/h;->S(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    move-object v2, v3

    :goto_6
    const-string p0, "screen_status"

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const-string v0, "current_input_method_new"

    invoke-static {p0}, Ldf/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcf/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current_input_method_name_version_new"

    invoke-static {p0}, Ldf/h;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcf/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "InputAnalyticsHelper"

    const-string v1, "trackCurrentInputMethod"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Ldf/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "default_input_method_provision_complete4"

    invoke-static {v0, p0}, Lcf/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "InputAnalyticsHelper"

    const-string v1, "trackDefaultImeProvisionComplete"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method protected static e(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Ldf/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lfe/m;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0}, Ldf/h;->o(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "collaborator"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_package_name"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "585.0.0.0.25970"

    invoke-static {p0, v2, v0}, Ldf/g;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    const-string p0, "open"

    invoke-static {p0, v2}, Lcom/miui/analytics/AnalyticsUtil;->trackImeEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static f(Landroid/content/Context;IJLjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "track_key_ime_statistics"

    invoke-static {p2, p2, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackImeEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ldf/g;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "585.0.0.0.25979"

    invoke-static {p0, p1, p2}, Ldf/g;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    const-string p0, "status"

    invoke-static {p0, p1}, Lcom/miui/analytics/AnalyticsUtil;->trackImeEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static g(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Ldf/h;->b:Ljava/util/List;

    invoke-static {p0}, Ldf/h;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {p0}, Ldf/h;->P(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {p0}, Ldf/h;->O(Landroid/content/Context;)Z

    move-result v0

    :try_start_0
    const-string v1, "is_miui_bottom_enable_new"

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v1, v2, v3}, Lcf/a;->i(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "InputAnalyticsHelper"

    const-string v3, "trackMiuiBottomEnable"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {p0}, Ldf/g;->h(Landroid/content/Context;)V

    invoke-static {p0}, Ldf/g;->j(Landroid/content/Context;)V

    invoke-static {p0}, Ldf/g;->i(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static h(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "left_function_new"

    invoke-static {p0}, Ldf/h;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcf/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "InputAnalyticsHelper"

    const-string v1, "trackMiuiBottomLeftFunction"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static i(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "middle_function_new"

    invoke-static {p0}, Ldf/h;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcf/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "InputAnalyticsHelper"

    const-string v1, "trackMiuiBottomMiddleFunction"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static j(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    const-string v0, "right_function_new"

    invoke-static {p0}, Ldf/h;->A(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcf/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "InputAnalyticsHelper"

    const-string v1, "trackMiuiBottomRightFunction"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Ldf/h;->j(Landroid/content/Context;)I

    move-result p0

    const-string v0, "quick_paste_cloud_mode"

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Lcf/a;->i(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "InputAnalyticsHelper"

    const-string v1, "trackQuickPasteCloudMode"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static l(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Ldf/h;->I(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "quick_paste_cloud_switch"

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcf/a;->i(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "InputAnalyticsHelper"

    const-string v1, "trackQuickPasteCloudSwitch"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static m(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Ldf/h;->F(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "quick_paste_switch"

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcf/a;->i(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "InputAnalyticsHelper"

    const-string v1, "trackQuickPasteSwitch"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Ldf/h;->G(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "quick_paste_taobao_switch"

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcf/a;->i(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "InputAnalyticsHelper"

    const-string v1, "trackQuickPasteTaobaoSwitch"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Ldf/h;->H(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "quick_paste_url_switch"

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcf/a;->i(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "InputAnalyticsHelper"

    const-string v1, "trackQuickPasteUrlSwitch"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static p(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Ldf/h;->Q(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "security_keyboard_switch"

    if-eqz p0, :cond_0

    const-wide/16 v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcf/a;->i(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "InputAnalyticsHelper"

    const-string v1, "trackSecurityKeyboardSwitch"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static q()V
    .locals 3

    :try_start_0
    const-string v0, "language"

    invoke-static {}, Ldf/h;->B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcf/a;->j(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InputAnalyticsHelper"

    const-string v2, "trackSystemLanguage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
