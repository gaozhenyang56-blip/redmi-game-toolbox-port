.class public Lfj/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lfj/b;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "XsofConfiguration"

    const-string v2, "AppTokens"

    const-string v3, ""

    invoke-static {p0, v1, v2, v3}, Lx4/o;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-class v1, Lfj/b;

    invoke-static {p0, v1}, Lx4/l0;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfj/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method
