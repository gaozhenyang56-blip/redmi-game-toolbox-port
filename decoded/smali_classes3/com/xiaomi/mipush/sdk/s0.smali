.class public Lcom/xiaomi/mipush/sdk/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()I
    .locals 2

    const-string v0, "com.xiaomi.assemble.control.AssembleConstants"

    const-string v1, "ASSEMBLE_VERSION_CODE"

    invoke-static {v0, v1}, Lzi/l0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method static b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/mipush/sdk/s0;->c(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static declared-synchronized c(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;Z)Ljava/lang/String;
    .locals 3

    const-class v0, Lcom/xiaomi/mipush/sdk/s0;

    monitor-enter v0

    :try_start_0
    const-string v1, "mipush_extra"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p2, :cond_0

    const-string p2, "syncingToken"

    const-string v1, ""

    invoke-interface {p0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object p2

    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/s0;->d(Lcom/xiaomi/mipush/sdk/o0;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, ""

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    :try_start_2
    const-string p0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d(Lcom/xiaomi/mipush/sdk/o0;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/u0;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string p0, "ftos_push_token"

    goto :goto_0

    :cond_1
    const-string p0, "cos_push_token"

    goto :goto_0

    :cond_2
    const-string p0, "fcm_push_token_v2"

    goto :goto_0

    :cond_3
    const-string p0, "hms_push_token"

    :goto_0
    return-object p0
.end method

.method public static e(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;)Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/xiaomi/mipush/sdk/o0;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/xiaomi/mipush/sdk/u0;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const-string v3, "package_name"

    const-string v4, "token"

    const-string v5, "brand"

    const-string v6, "~"

    const-string v7, ":"

    const/4 v8, 0x1

    if-eq v1, v8, :cond_5

    const/4 v9, 0x2

    const-string v10, "version"

    if-eq v1, v9, :cond_3

    const/4 v9, 0x3

    if-eq v1, v9, :cond_1

    const/4 v9, 0x4

    if-eq v1, v9, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v1, Lzi/ha$a;

    invoke-direct {v1, v7, v6}, Lzi/ha$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mipush/sdk/w;->e:Lcom/xiaomi/mipush/sdk/w;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    move-result-object v1

    invoke-static {p0, p1, v8}, Lcom/xiaomi/mipush/sdk/s0;->c(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    move-result-object p0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/s0;->a()I

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v10, p1}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    goto :goto_1

    :cond_1
    new-instance v1, Lzi/ha$a;

    invoke-direct {v1, v7, v6}, Lzi/ha$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mipush/sdk/w;->d:Lcom/xiaomi/mipush/sdk/w;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    move-result-object v1

    invoke-static {p0, p1, v8}, Lcom/xiaomi/mipush/sdk/s0;->c(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lzi/ha$a;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_3
    new-instance v1, Lzi/ha$a;

    invoke-direct {v1, v7, v6}, Lzi/ha$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/mipush/sdk/w;->c:Lcom/xiaomi/mipush/sdk/w;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/xiaomi/mipush/sdk/s0;->c(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v4, p1}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    move-result-object p0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/s0;->a()I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const p1, 0xc614

    goto :goto_0

    :cond_5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v1, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->D(Ljava/lang/String;)V

    :goto_2
    const/4 v1, -0x1

    if-eqz v2, :cond_6

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.huawei.hms.client.appid"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_6
    new-instance v2, Lzi/ha$a;

    invoke-direct {v2, v7, v6}, Lzi/ha$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Lcom/xiaomi/mipush/sdk/w;->a:Lcom/xiaomi/mipush/sdk/w;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    move-result-object v2

    invoke-static {p0, p1, v8}, Lcom/xiaomi/mipush/sdk/s0;->c(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "app_id"

    invoke-virtual {p0, v1, p1}, Lzi/ha$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lzi/ha$a;

    move-result-object p0

    goto :goto_1

    :goto_3
    const-string p0, "RegInfo"

    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method static f(Landroid/content/Context;)V
    .locals 6

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/mipush/sdk/o0;->b:Lcom/xiaomi/mipush/sdk/o0;

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/s0;->d(Lcom/xiaomi/mipush/sdk/o0;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/mipush/sdk/o0;->c:Lcom/xiaomi/mipush/sdk/o0;

    invoke-static {v3}, Lcom/xiaomi/mipush/sdk/s0;->d(Lcom/xiaomi/mipush/sdk/o0;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/xiaomi/mipush/sdk/d0;->p(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static g(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;)Z
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/v0;->c(Lcom/xiaomi/mipush/sdk/o0;)Lzi/v7;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object p0

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/v0;->c(Lcom/xiaomi/mipush/sdk/o0;)Lzi/v7;

    move-result-object p1

    invoke-virtual {p1}, Lzi/v7;->a()I

    move-result p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/service/e0;->m(IZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static h(Lcom/xiaomi/mipush/sdk/o0;)Z
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/o0;->e:Lcom/xiaomi/mipush/sdk/o0;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/xiaomi/mipush/sdk/o0;->c:Lcom/xiaomi/mipush/sdk/o0;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static i(Lzi/m8;Lcom/xiaomi/mipush/sdk/o0;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lzi/m8;->d()Lzi/d8;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lzi/m8;->d()Lzi/d8;

    move-result-object v0

    invoke-virtual {v0}, Lzi/d8;->e()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/mipush/sdk/o0;->c:Lcom/xiaomi/mipush/sdk/o0;

    if-ne p1, v0, :cond_0

    const-string p1, "FCM"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {p0}, Lzi/m8;->d()Lzi/d8;

    move-result-object p0

    invoke-virtual {p0}, Lzi/d8;->e()Ljava/util/Map;

    move-result-object p0

    const-string v0, "assemble_push_type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Landroid/content/Context;Lzi/m8;Lcom/xiaomi/mipush/sdk/o0;)[B
    .locals 0

    invoke-static {p1, p2}, Lcom/xiaomi/mipush/sdk/s0;->i(Lzi/m8;Lcom/xiaomi/mipush/sdk/o0;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lcom/xiaomi/mipush/sdk/s0;->b(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzi/p0;->c(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Lcom/xiaomi/mipush/sdk/o0;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s0;->d(Lcom/xiaomi/mipush/sdk/o0;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_version"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/p0;->register()V

    return-void
.end method

.method public static m(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lzi/h;->f(Landroid/content/Context;)Lzi/h;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mipush/sdk/t0;

    invoke-direct {v1, p2, p0, p1}, Lcom/xiaomi/mipush/sdk/t0;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;)V

    invoke-virtual {v0, v1}, Lzi/h;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/p0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/p0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/p0;->unregister()V

    return-void
.end method

.method static synthetic o(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/s0;->p(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized p(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/o0;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/xiaomi/mipush/sdk/s0;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/s0;->d(Lcom/xiaomi/mipush/sdk/o0;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "ASSEMBLE_PUSH : can not find the key of token used in sp file"

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string v2, "mipush_extra"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "last_check_token"

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/m0;->q()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/s0;->h(Lcom/xiaomi/mipush/sdk/o0;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/s0;->k(Lcom/xiaomi/mipush/sdk/o0;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/s0;->a()I

    move-result p1

    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string p0, "syncingToken"

    const-string p1, ""

    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {v2}, Lzi/ea;->a(Landroid/content/SharedPreferences$Editor;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ASSEMBLE_PUSH : update sp file success!  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
