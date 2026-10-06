.class public Lcom/miui/warningcenter/provider/WarningCenterProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.warningcenter.provider"

.field private static final KEY_MIJIA_ACCOUNT:Ljava/lang/String; = "key_mijia_account"

.field private static final KEY_MIJIA_LOGIN_STATUS:Ljava/lang/String; = "key_mijia_login_status"

.field private static final KEY_MIJIA_SERVER:Ljava/lang/String; = "key_mijia_server"

.field private static final KEY_STATUS_RETURN:Ljava/lang/String; = "status_return"

.field private static final METHOD_SET_MIJIA_ACCOUNT:Ljava/lang/String; = "setMijiaAccount"

.field private static final PACKAGE_SMARTHOME:Ljava/lang/String; = "com.xiaomi.smarthome"

.field private static final SMARTHOME_RELEASE_SHA256:Ljava/lang/String; = "B0:31:FE:98:A4:DB:B0:D4:D8:26:61:78:7F:25:DE:64:31:82:B3:78:E9:EF:63:2D:8A:DE:A7:5A:AB:58:F2:D8"

.field private static final TAG:Ljava/lang/String; = "WarningCenterProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private matchSmartHome(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "com.xiaomi.smarthome"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x40

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    invoke-static {p1}, Leg/c;->f(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "B0:31:FE:98:A4:DB:B0:D4:D8:26:61:78:7F:25:DE:64:31:82:B3:78:E9:EF:63:2D:8A:DE:A7:5A:AB:58:F2:D8"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v0, 0x0

    if-nez p2, :cond_5

    const-string p2, "setMijiaAccount"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "WarningCenterProvider"

    const-string p2, "call METHOD_SET_MIJIA_ACCOUNT"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/miui/warningcenter/provider/WarningCenterProvider;->matchSmartHome(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_4

    const-string v1, "key_mijia_login_status"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "key_mijia_account"

    const-string v4, ""

    invoke-virtual {p3, v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "key_mijia_server"

    invoke-virtual {p3, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v4, "status_return"

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    invoke-virtual {p2, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;

    invoke-direct {p1, v0, v0, v1}, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string p1, "mijia_unregister"

    :goto_0
    invoke-static {p1}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackMijiaResultAction(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    if-nez v1, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "get account"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;

    invoke-direct {p1, v3, p3, v1}, Lcom/miui/warningcenter/mijia/RegistMijiaPushTask;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/miui/warningcenter/mijia/MijiaUtils;->isFirstUseMijiaWarning()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v2}, Lcom/miui/warningcenter/mijia/MijiaUtils;->setFirstUseMijiaWarning(Z)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/warningcenter/mijia/MijiaUtils;->showFirstUseMijiaNoti(Landroid/content/Context;)V

    const-string p1, "mijia_first_register"

    invoke-static {p1}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackMijiaResultAction(Ljava/lang/String;)V

    :cond_2
    const-string p1, "mijia_register"

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p3, 0x2

    invoke-virtual {p2, v4, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "no account"

    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "mijia_register_failed"

    goto :goto_0

    :cond_4
    :goto_2
    move-object v0, p2

    :cond_5
    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
