.class public Lhf/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/settingsdk/backup/ICloudBackup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentVersion(Landroid/content/Context;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBackupSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;)V
    .locals 3

    const-string v0, "SecurityCenterSettingsCloudBackupService"

    const-string v1, "start settings backup. "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lhf/j;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "SecurityCenter"

    invoke-virtual {p2, v2, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lhf/c;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "AntivirusSettings"

    invoke-virtual {p2, v2, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lhf/g;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PowerSettings"

    invoke-virtual {p2, v2, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lhf/f;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "GeneralSettings"

    invoke-virtual {p2, v2, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lhf/i;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "SafePaySettings"

    invoke-virtual {p2, v2, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lhf/b;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "AntiSpamSettings"

    invoke-virtual {p2, v2, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lhf/a;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "AppManagerSettings"

    invoke-virtual {p2, v2, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lhf/e;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "GameBoosterSettings"

    invoke-virtual {p2, v2, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lhf/d;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "EarthquakeWarningSettings"

    invoke-virtual {p2, v2, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lhf/h;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "PrivacyProtectSettings"

    invoke-virtual {p2, v2, v1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lec/c;->z(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "ThumbnailBlurSettings"

    invoke-virtual {p2, v1, p1}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->addKeyJson(Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string p1, "end settings backup. "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRestoreSettings(Landroid/content/Context;Lcom/xiaomi/settingsdk/backup/data/DataPackage;I)V
    .locals 2

    const-string p3, "SecurityCenterSettingsCloudBackupService"

    const-string v0, "start settings restore. "

    invoke-static {p3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_a

    const-string v0, "SecurityCenter"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lhf/j;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_0
    const-string v0, "AntivirusSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lhf/c;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_1
    const-string v0, "PowerSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lhf/g;->b(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_2
    const-string v0, "GeneralSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lhf/f;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_3
    const-string v0, "SafePaySettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lhf/i;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_4
    const-string v0, "AntiSpamSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lhf/b;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_5
    const-string v0, "AppManagerSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lhf/a;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_6
    const-string v0, "GameBoosterSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lhf/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_7
    const-string v0, "EarthquakeWarningSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lhf/d;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_8
    const-string v0, "PrivacyProtectSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lhf/h;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_9
    const-string v0, "ThumbnailBlurSettings"

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p2, v0}, Lcom/xiaomi/settingsdk/backup/data/DataPackage;->get(Ljava/lang/String;)Lcom/xiaomi/settingsdk/backup/data/SettingItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/settingsdk/backup/data/SettingItem;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lec/c;->y(Landroid/content/Context;Lorg/json/JSONObject;)V

    :cond_a
    const-string p1, "end settings restore. "

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
