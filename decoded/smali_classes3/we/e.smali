.class public Lwe/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwe/e$b;,
        Lwe/e$c;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lwe/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic a()Ljava/util/Set;
    .locals 1

    sget-object v0, Lwe/e;->a:Ljava/util/Set;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 0

    invoke-static {p0}, Lwe/d;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "com.xiaomi"

    invoke-virtual {p0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    aget-object p0, p0, v1

    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static d(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string p1, "authtoken"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "encrypted_user_id"

    invoke-virtual {p0, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Lwe/e$c;
    .locals 13

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lwe/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "mi_account_id"

    const-string v4, ""

    if-eqz v2, :cond_1

    invoke-static {v3, v4}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-static {v3, v4}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v5, "mi_token_str"

    const-string v6, "mi_token_user_id"

    const-string v7, "mi_token_invalidate_time"

    if-eqz v2, :cond_2

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v6, v4}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v8

    const-wide/32 v8, 0x4ef6d80

    cmp-long v8, v11, v8

    if-gtz v8, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance p0, Lwe/e$c;

    invoke-direct {p0, v10, v2}, Lwe/e$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    invoke-static {p0}, Lwe/d;->a(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    :cond_3
    invoke-static {p0, v2, p1}, Lwe/e;->d(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, "XiaomiAccountUtil"

    if-eqz v10, :cond_5

    const-string v8, "getAuthToken:future cUserId is null"

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "encrypted_user_id"

    invoke-static {v8, v4}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "getAuthToken:cached cUserId is null, invalidate"

    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    iget-object v8, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v2, p1}, Lwe/e;->d(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v9, p1

    check-cast v9, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v8, p0

    check-cast v8, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-static {v7, p0, p1}, Lr4/a;->q(Ljava/lang/String;J)V

    invoke-static {v5, v9}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v8}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p0, "getAuthToken:cUserId is null after invalidate"

    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5
    const-string p0, "getAuthToken:future  reset cUserId"

    invoke-static {v11, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    new-instance p0, Lwe/e$c;

    invoke-direct {p0, v9, v8}, Lwe/e$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_7
    return-object v1
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lwe/e;->b(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static g(Landroid/content/Context;Lwe/e$c;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lwe/e;->b(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "XiaomiAccountUtil"

    const-string v2, "Invalid xiaomi account auth token"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lwe/e$c;->c()Lcom/xiaomi/accountsdk/account/data/a;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/account/data/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static declared-synchronized h(Landroid/content/Context;Lwe/e$b;)V
    .locals 3

    const-class v0, Lwe/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lwe/e;->a:Ljava/util/Set;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lwe/e;->a:Ljava/util/Set;

    :cond_0
    sget-object v1, Lwe/e;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object p1, Lwe/e;->b:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    new-instance p1, Lwe/e$a;

    invoke-direct {p1}, Lwe/e$a;-><init>()V

    sput-object p1, Lwe/e;->b:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-static {p0, p1, v1, v2}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized i(Landroid/content/Context;Lwe/e$b;)V
    .locals 2

    const-class v0, Lwe/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lwe/e;->a:Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lwe/e;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    sget-object p1, Lwe/e;->a:Ljava/util/Set;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    :cond_1
    :try_start_1
    sget-object p1, Lwe/e;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 p0, 0x0

    :try_start_2
    sput-object p0, Lwe/e;->b:Landroid/content/BroadcastReceiver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
