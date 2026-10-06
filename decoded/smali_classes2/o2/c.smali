.class public Lo2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)J
    .locals 3

    const-string v0, "antivirusscan_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_anti_fraud_scan_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Luf/b;->f(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    const-string v0, "antivirusscan_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_antivirus_notification_show_count"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Luf/b;->e(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)J
    .locals 3

    const-string v0, "antivirusscan_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_antivirus_notification_show_time"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Luf/b;->f(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 3

    const-string v0, "antivirusscan_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_antivirus_privacy_dialog_count"

    invoke-virtual {p0, v0}, Luf/b;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0, v2}, Lr4/a;->h(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Luf/b;->j(Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0, v0, v2}, Luf/b;->e(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 6

    const-string v0, "antivirusscan_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_antivirus_show_privacy_dialog_time"

    invoke-virtual {p0, v0}, Luf/b;->b(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {v0, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {p0, v0, v4, v5}, Luf/b;->k(Ljava/lang/String;J)Z

    :cond_0
    invoke-virtual {p0, v0, v2, v3}, Luf/b;->f(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "antivirusscan_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_is_background_anti_fraud_scan"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "antivirusscan_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_antivirus_ignore_virus_dialog"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Luf/b;->h(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static h(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "antivirusscan_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_anti_fraud_scan_time"

    invoke-virtual {p0, v0, p1, p2}, Luf/b;->k(Ljava/lang/String;J)Z

    return-void
.end method

.method public static i(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "antivirusscan_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_antivirus_notification_show_count"

    invoke-virtual {p0, v0, p1}, Luf/b;->j(Ljava/lang/String;I)Z

    return-void
.end method

.method public static j(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "antivirusscan_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_antivirus_notification_show_time"

    invoke-virtual {p0, v0, p1, p2}, Luf/b;->k(Ljava/lang/String;J)Z

    return-void
.end method

.method public static k(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "antivirusscan_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_antivirus_privacy_dialog_count"

    invoke-virtual {p0, v0, p1}, Luf/b;->j(Ljava/lang/String;I)Z

    return-void
.end method

.method public static l(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "antivirusscan_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_antivirus_show_privacy_dialog_time"

    invoke-virtual {p0, v0, p1, p2}, Luf/b;->k(Ljava/lang/String;J)Z

    return-void
.end method

.method public static m(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "antivirusscan_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_antivirus_ignore_virus_dialog"

    invoke-virtual {p0, v0, p1}, Luf/b;->m(Ljava/lang/String;Z)Z

    return-void
.end method
