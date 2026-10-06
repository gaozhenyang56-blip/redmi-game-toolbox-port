.class public La8/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    const/4 v0, 0x0
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    const-string v0, "android.content.Intent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lbh/f;->n(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GameBoosterReflectUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "android.intent.action.USER_SWITCHED"

    :goto_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lbh/f;->m(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameBoosterReflectUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static e(Landroid/app/Notification;)Landroid/app/MiuiNotification;
    .locals 1
    const/4 v0, 0x0
    return-object v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    const/4 v0, 0x0
    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 8

    :try_start_0
    const-string v0, "android.provider.MiuiSettings$Privacy"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setEnabled"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-static {v0, v1, v3, v2}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GameBoosterReflectUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static h(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1
    invoke-static {p1, p2}, Lr4/a;->h(Ljava/lang/String;I)I
    move-result v0
    return v0
.end method

.method public static i(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .locals 0
    invoke-static {p1, p2}, Lr4/a;->p(Ljava/lang/String;I)V
    return-void
.end method

.method public static j(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 1
    invoke-static {p1, p2}, Lr4/a;->h(Ljava/lang/String;I)I
    move-result v0
    return v0
.end method

.method public static k(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .locals 0
    invoke-static {p1, p2}, Lr4/a;->p(Ljava/lang/String;I)V
    return-void
.end method
