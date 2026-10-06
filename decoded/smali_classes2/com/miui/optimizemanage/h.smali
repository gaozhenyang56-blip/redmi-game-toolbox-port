.class public Lcom/miui/optimizemanage/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)J
    .locals 3

    const-string v0, "optimizemanage_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_last_clean_memory_size_in_widget"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Luf/b;->f(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Landroid/content/Context;)J
    .locals 3

    const-string v0, "optimizemanage_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_last_clean_memory_time_in_widget"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Luf/b;->f(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Landroid/content/Context;)J
    .locals 3

    const-string v0, "optimizemanage_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_last_get_memory_time_in_widget"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Luf/b;->f(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Landroid/content/Context;)J
    .locals 3

    const-string v0, "optimizemanage_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_last_memory_occupied_in_widget"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Luf/b;->f(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 3

    const-string v0, "optimizemanage_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_last_memory_size_in_widget"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Luf/b;->f(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static f(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "optimizemanage_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_last_clean_memory_size_in_widget"

    invoke-virtual {p0, v0, p1, p2}, Luf/b;->n(Ljava/lang/String;J)V

    return-void
.end method

.method public static g(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "optimizemanage_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_last_clean_memory_time_in_widget"

    invoke-virtual {p0, v0, p1, p2}, Luf/b;->n(Ljava/lang/String;J)V

    return-void
.end method

.method public static h(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "optimizemanage_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_last_get_memory_time_in_widget"

    invoke-virtual {p0, v0, p1, p2}, Luf/b;->n(Ljava/lang/String;J)V

    return-void
.end method

.method public static i(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "optimizemanage_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_last_memory_occupied_in_widget"

    invoke-virtual {p0, v0, p1, p2}, Luf/b;->n(Ljava/lang/String;J)V

    return-void
.end method

.method public static j(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "optimizemanage_pref_data"

    invoke-static {p0, v0}, Luf/b;->d(Landroid/content/Context;Ljava/lang/String;)Luf/b;

    move-result-object p0

    const-string v0, "key_last_memory_size_in_widget"

    invoke-virtual {p0, v0, p1, p2}, Luf/b;->n(Ljava/lang/String;J)V

    return-void
.end method
