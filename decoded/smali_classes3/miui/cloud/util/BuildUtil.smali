.class public Lmiui/cloud/util/BuildUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_ACCOUNT_INTERNATIONAL:Ljava/lang/String; = "key_account_international"

.field private static final TAG:Ljava/lang/String; = "BuildUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInternationalBuild()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method public static isInternationalBuildOrAccount(Landroid/content/Context;Landroid/accounts/Account;)Z
    .locals 5

    invoke-static {}, Lmiui/cloud/util/BuildUtil;->isInternationalBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "key_account_international"

    invoke-virtual {p0, p1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-nez p1, :cond_1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v3, "BuildUtil"

    aput-object v3, p1, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get account type error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    invoke-static {p1}, Lmiui/cloud/common/XLogger;->loge([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    return v1
.end method
