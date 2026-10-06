.class public Ldd/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_last_click_newfeature_time"

    invoke-static {v1, v0}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_last_click_reddot_time"

    invoke-static {v1, v0}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)J
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_garbage_normal_size"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()Z
    .locals 2

    const-string v0, "pm_qq_subscript_visible"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 2

    const-string v0, "pm_wechat_subscript_visible"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)J
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_garbage_qq_size"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static g()Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_recommend_closed_time"

    invoke-static {v1, v0}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)J
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "key_garbage_wechat_size"

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static j(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static k(Z)V
    .locals 1

    const-string v0, "pm_qq_subscript_visible"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static l(Z)V
    .locals 1

    const-string v0, "pm_wechat_subscript_visible"

    invoke-static {v0, p0}, Lr4/a;->n(Ljava/lang/String;Z)V

    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_recommend_closed_time"

    invoke-static {v0, p0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
