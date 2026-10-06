.class public La8/g2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method public static a(Ljava/lang/String;Z)Z
    .locals 1

    :try_start_0
    sget-object v0, La8/g2;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, La8/g2;->c()V

    :cond_0
    sget-object v0, La8/g2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "VideoBoxSpUtils"

    const-string v0, "getPreferenceBoolean error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    sget-object v0, La8/g2;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, La8/g2;->c()V

    :cond_0
    sget-object v0, La8/g2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "VideoBoxSpUtils"

    const-string v0, "getPreferenceInt error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static c()V
    .locals 3

    sget-object v0, La8/g2;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "sp_video_box"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, La8/g2;->a:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    sget-object v0, La8/g2;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, La8/g2;->c()V

    :cond_0
    sget-object v0, La8/g2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VideoBoxSpUtils"

    const-string v0, "setPreferenceBoolean error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    sget-object v0, La8/g2;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, La8/g2;->c()V

    :cond_0
    sget-object v0, La8/g2;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VideoBoxSpUtils"

    const-string v0, "setPreferenceInt error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
