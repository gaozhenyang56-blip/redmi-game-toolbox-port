.class public Lue/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method protected static a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lue/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    sget-object v0, Lue/i;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "privacy_sdk"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lue/i;->a:Landroid/content/SharedPreferences;

    :cond_0
    sget-object p0, Lue/i;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method protected static c(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    invoke-static {p0}, Lue/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static d(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0}, Lue/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
