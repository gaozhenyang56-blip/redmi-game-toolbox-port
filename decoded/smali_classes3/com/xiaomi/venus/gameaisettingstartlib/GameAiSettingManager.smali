.class public Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static METHOD_CHANGE_AI_SETTING:Ljava/lang/String; = "changeAiSettingMethod"

.field private static METHOD_CHECK_ALERT_WINDOW_PERMISSION:Ljava/lang/String; = "checkAlertWindowPermissionMethod"

.field private static METHOD_GET_AI_CLOUD_SETTINGS:Ljava/lang/String; = "getAiCloudSettingsMethod"

.field private static METHOD_GET_AI_SETTINGS:Ljava/lang/String; = "getAiSettingsMethod"

.field private static final METHOD_GET_GAMEID_BY_PACKAGENAME:Ljava/lang/String; = "getGameIdbyPackageName"

.field private static final METHOD_RESPONSE_PARAM_CODE:Ljava/lang/String; = "code"

.field private static final METHOD_RESPONSE_PARAM_DATA:Ljava/lang/String; = "data"

.field private static final METHOD_RESPONSE_PARAM_MSG:Ljava/lang/String; = "msg"

.field private static SETTING_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.venus.gameai.aisetting.provider"

.field private static volatile instance:Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private callSettingContentProviderMethod(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->SETTING_PROVIDER_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, p2, v0, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-> "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "GameAiSettingManager"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private convertBundleGameAiSettings(Landroid/os/Bundle;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->handleCommonFailedCase(Landroid/os/Bundle;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager$1;-><init>(Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;)V

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    const-string v2, "code"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "msg"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;

    invoke-direct {v1, v2, p1, v0}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getInstance()Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;
    .locals 2

    sget-object v0, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->instance:Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->instance:Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;

    invoke-direct {v1}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;-><init>()V

    sput-object v1, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->instance:Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->instance:Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;

    return-object v0
.end method

.method private handleCommonFailedCase(Landroid/os/Bundle;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    const/4 v1, -0x1

    const-string v2, "bundle = null"

    invoke-direct {p1, v1, v2, v0}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const-string v1, "code"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "msg"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1, v0}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v2

    :cond_1
    return-object v0
.end method


# virtual methods
.method public changeAiSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/ChangeSettingResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "settingName"

    invoke-virtual {v0, p2, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "settingValue"

    invoke-virtual {v0, p2, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object p2, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->METHOD_CHANGE_AI_SETTING:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->callSettingContentProviderMethod(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->handleCommonFailedCase(Landroid/os/Bundle;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    const-string p2, "data"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    const-class p4, Lcom/xiaomi/venus/gameaisettingstartlib/bean/ChangeSettingResult;

    invoke-virtual {p3, p2, p4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaomi/venus/gameaisettingstartlib/bean/ChangeSettingResult;

    new-instance p3, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    const-string p4, "code"

    invoke-virtual {p1, p4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p4

    const-string v0, "msg"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1, p2}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    new-instance p2, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    const/4 p3, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object p2
.end method

.method public checkAlertWindowPermission(Landroid/content/Context;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->METHOD_CHECK_ALERT_WINDOW_PERMISSION:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->callSettingContentProviderMethod(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->handleCommonFailedCase(Landroid/os/Bundle;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    const-string v2, "code"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "msg"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v2, p1, v0}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCloudGameAiSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->METHOD_GET_AI_CLOUD_SETTINGS:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->callSettingContentProviderMethod(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->convertBundleGameAiSettings(Landroid/os/Bundle;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    move-result-object p1

    return-object p1
.end method

.method public getGameAiSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/GameAiSettings;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->METHOD_GET_AI_SETTINGS:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->callSettingContentProviderMethod(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->convertBundleGameAiSettings(Landroid/os/Bundle;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    move-result-object p1

    return-object p1
.end method

.method public getGameIdByPkgName(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "packageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "getGameIdbyPackageName"

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->callSettingContentProviderMethod(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/venus/gameaisettingstartlib/GameAiSettingManager;->handleCommonFailedCase(Landroid/os/Bundle;)Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    :try_start_0
    const-string p2, "data"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    const-string v1, "code"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "msg"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1, p2}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/xiaomi/venus/gameaisettingstartlib/bean/AiSettingResponse;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object p2
.end method
