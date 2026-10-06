.class public Lcom/miui/warningcenter/mijia/WarningCenterManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile INSTANCE:Lcom/miui/warningcenter/mijia/WarningCenterManager; = null

.field private static final PUSH_TIME_OUT:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "WarningCenterManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/warningcenter/mijia/WarningCenterManager;
    .locals 2

    sget-object v0, Lcom/miui/warningcenter/mijia/WarningCenterManager;->INSTANCE:Lcom/miui/warningcenter/mijia/WarningCenterManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/warningcenter/mijia/WarningCenterManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/warningcenter/mijia/WarningCenterManager;->INSTANCE:Lcom/miui/warningcenter/mijia/WarningCenterManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/warningcenter/mijia/WarningCenterManager;

    invoke-direct {v1}, Lcom/miui/warningcenter/mijia/WarningCenterManager;-><init>()V

    sput-object v1, Lcom/miui/warningcenter/mijia/WarningCenterManager;->INSTANCE:Lcom/miui/warningcenter/mijia/WarningCenterManager;

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
    sget-object v0, Lcom/miui/warningcenter/mijia/WarningCenterManager;->INSTANCE:Lcom/miui/warningcenter/mijia/WarningCenterManager;

    return-object v0
.end method

.method private validateAlertPush(Lorg/json/JSONObject;)Z
    .locals 9

    const-string v0, "WarningCenterManager"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "warning"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WaringSign"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApRu6Zd52/9k2NSgeGUIeSg8rIUtj64REDEBW+wNEnhYiebc9BSUcViBe3rYJvKH9hAXyiVKSVq9V2p/wweXX6QcJgu7P9I2ajyqZ23ChpLG1I3vBl4yBjv1r9+uCz819jZGxzhD4jLwKKLeAbd+cM3mdLwhCwI/5b56VFWrkKpcQQhtrxB8FU4n/wzqSgo38NyerBa7KhcUsCrJxt4Y7sIQ9u+fJAFvN7jpKn+9ey6C9hibBJunnAQj/rCcyC+fcUlOGj2EEoSp+S0s+Rd7gIWYdxl7uAX9P0SIc+ZUGslVjEEvOjpxNcUq/x6aXt6YJt+bZGVXs4FuS/YqGDIOiywIDAQAB"

    invoke-static {v3, p1, v4}, Lcom/miui/earthquakewarning/utils/SHA1WithRSAUtil;->virefy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "validateAlertPush: \u7b7e\u540d\u6821\u9a8c\u5931\u8d25"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/miui/warningcenter/mijia/MijiaUtils;->getPreviousAccount()Ljava/lang/String;

    move-result-object p1

    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signed account on this device is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but received message uid is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string p1, "ctime"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x493e0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_2

    const-string p1, "validateAlertPush: The push is out of data."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v2, "validateAlertPush: "

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private validateClosePush(Lorg/json/JSONObject;)Z
    .locals 9

    const-string v0, "WarningCenterManager"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "cancelWarning"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WaringSign"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApRu6Zd52/9k2NSgeGUIeSg8rIUtj64REDEBW+wNEnhYiebc9BSUcViBe3rYJvKH9hAXyiVKSVq9V2p/wweXX6QcJgu7P9I2ajyqZ23ChpLG1I3vBl4yBjv1r9+uCz819jZGxzhD4jLwKKLeAbd+cM3mdLwhCwI/5b56VFWrkKpcQQhtrxB8FU4n/wzqSgo38NyerBa7KhcUsCrJxt4Y7sIQ9u+fJAFvN7jpKn+9ey6C9hibBJunnAQj/rCcyC+fcUlOGj2EEoSp+S0s+Rd7gIWYdxl7uAX9P0SIc+ZUGslVjEEvOjpxNcUq/x6aXt6YJt+bZGVXs4FuS/YqGDIOiywIDAQAB"

    invoke-static {v3, p1, v4}, Lcom/miui/earthquakewarning/utils/SHA1WithRSAUtil;->virefy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "validateClosePush: \u7b7e\u540d\u6821\u9a8c\u5931\u8d25"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/miui/warningcenter/mijia/MijiaUtils;->getPreviousAccount()Ljava/lang/String;

    move-result-object p1

    const-string v3, "uids"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signed account on this device is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but received message uids is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string p1, "ctime"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x493e0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_2

    const-string p1, "validateClosePush: The push is out of data."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v2, "validateClosePush: "

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method


# virtual methods
.method public handlePush(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    invoke-static {}, Lcom/miui/warningcenter/mijia/MijiaUtils;->isMijiaWarningOpen()Z

    move-result v0

    const-string v1, "WarningCenterManager"

    if-nez v0, :cond_0

    const-string p1, "mijia warning not open!"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received push:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "warning"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/warningcenter/mijia/WarningCenterManager;->validateAlertPush(Lorg/json/JSONObject;)Z

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const-string v3, "cancelWarning"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p2}, Lcom/miui/warningcenter/mijia/WarningCenterManager;->validateClosePush(Lorg/json/JSONObject;)Z

    move-result v2

    :cond_2
    if-eqz v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Why the push contains both closing and alerting???"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/miui/warningcenter/mijia/WarningCenterAlertActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "WarningCenterAlertActivity.datasource"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "mijia"

    invoke-static {p1}, Lcom/miui/warningcenter/analytics/AnalyticHelper;->trackPushActionReceive(Ljava/lang/String;)V

    const-string p1, "received mijia alert push"

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.miui.securitycenter.warningcenter_mijia_close_window"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "received mijia close push"

    goto :goto_0

    :cond_6
    const-string p1, "abort push."

    goto :goto_0
.end method
