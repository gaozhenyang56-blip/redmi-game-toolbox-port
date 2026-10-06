.class public Lc3/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lc3/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lx4/b0;->k([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v2, "com.xiaomi"

    invoke-virtual {p0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/accounts/Account;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lc3/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 8

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v6, Lc3/w$b;

    invoke-direct {v6, p0}, Lc3/w$b;-><init>(Landroid/app/Activity;)V

    const/4 v7, 0x0

    const-string v1, "com.xiaomi"

    const-string v2, "passportapi"

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public static e(Landroid/app/Activity;Landroid/os/Bundle;Lc3/d;)V
    .locals 8

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v6, Lc3/w$a;

    invoke-direct {v6, p2, p0}, Lc3/w$a;-><init>(Lc3/d;Landroid/app/Activity;)V

    const-string v1, "com.xiaomi"

    const-string v2, "passportapi"

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lc3/w;->b(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    :goto_0
    return-object p0
.end method
