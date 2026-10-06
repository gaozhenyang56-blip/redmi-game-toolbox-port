.class public Lcom/miui/bubbles/settings/BubblesSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SETTINGS_KEY_MIUI_BUBBLES_APP:Ljava/lang/String; = "miui_bubbles_pinned_apps"

.field public static final SETTINGS_KEY_MIUI_BUBBLES_SUPPORT:Ljava/lang/String; = "miui_notification_bubbles_support"

.field public static final SETTINGS_KEY_MIUI_BUBBLES_SWITCH:Ljava/lang/String; = "miui_bubbles_notification_switch"

.field public static final SP_FILE_NAME:Ljava/lang/String; = "miui_bubbles_settings"

.field private static final SP_KEY_BUBBLE_CLOUD_APPS:Ljava/lang/String; = "cloud_miui_bubbles_apps"

.field private static final SP_KEY_PREFIX_BUBBLE_APP_STATUS:Ljava/lang/String; = "miui_bubble_apps_status_with_userId_"

.field private static final TAG:Ljava/lang/String; = "BubblesSettings"

.field private static sInstance:Lcom/miui/bubbles/settings/BubblesSettings;


# instance fields
.field private final mActiveBubbles:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private final mBubbleAppMaps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/bubbles/settings/BubbleApp;",
            ">;"
        }
    .end annotation
.end field

.field private mBubbleNotificationSwitch:Z

.field private final mContext:Landroid/content/Context;

.field private final mCurrentUserId:I

.field private final mPrefKeyCurrentUserBubbleStatus:Ljava/lang/String;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mActiveBubbles:Ljava/util/HashSet;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mContext:Landroid/content/Context;

    const-string v0, "miui_bubbles_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/miui/bubbles/settings/BubblesSettings;->isBubbleNotificationSwitchOpen()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mBubbleNotificationSwitch:Z

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mCurrentUserId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "miui_bubble_apps_status_with_userId_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mPrefKeyCurrentUserBubbleStatus:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/bubbles/settings/BubblesSettings;->initBubbleApps()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BubblesSettings: mCurrentUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\tmPrefKeyCurrentUserBubbleStatus="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BubblesSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getBubbleAppString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mActiveBubbles:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/bubbles/Bubble;

    iget-object v3, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/bubbles/settings/BubbleApp;

    if-eqz v3, :cond_0

    iget-boolean v3, v3, Lcom/miui/bubbles/settings/BubbleApp;->isChecked:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/miui/bubbles/Bubble;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultBubbles()Landroid/util/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/bubbles/settings/BubbleApp;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "cloud_miui_bubbles_apps"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "MiuiBubblesApps"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/bubbles/R$array;->default_bubble_apps:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/miui/bubbles/settings/BubbleApp;

    iget v4, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mCurrentUserId:I

    invoke-direct {v3, v2, v4}, Lcom/miui/bubbles/settings/BubbleApp;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/miui/bubbles/settings/BubbleApp;->setChecked(Z)Lcom/miui/bubbles/settings/BubbleApp;

    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;
    .locals 2

    const-class v0, Lcom/miui/bubbles/settings/BubblesSettings;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/bubbles/settings/BubblesSettings;->sInstance:Lcom/miui/bubbles/settings/BubblesSettings;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/bubbles/settings/BubblesSettings;

    invoke-direct {v1, p0}, Lcom/miui/bubbles/settings/BubblesSettings;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/bubbles/settings/BubblesSettings;->sInstance:Lcom/miui/bubbles/settings/BubblesSettings;

    :cond_0
    sget-object p0, Lcom/miui/bubbles/settings/BubblesSettings;->sInstance:Lcom/miui/bubbles/settings/BubblesSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initBubbleApps()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-direct {p0}, Lcom/miui/bubbles/settings/BubblesSettings;->getDefaultBubbles()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-direct {p0, v0}, Lcom/miui/bubbles/settings/BubblesSettings;->updateBubbleSettingsByUserSettings(Landroid/util/ArrayMap;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initBubbleApps: mBubbleAppMaps ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubblesSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isBubbleNotificationSupport(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "miui_notification_bubbles_support"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static migrateSpToSettings(Landroid/content/Context;)V
    .locals 6

    const-string v0, "miui_bubbles_settings"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "miui_bubble_apps_status_with_userId_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrateSpToSettings: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BubblesSettings"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "miui_bubble_app_settings"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    invoke-static {}, Lcom/miui/bubbles/utils/TipsManager;->getInstance()Lcom/miui/bubbles/utils/TipsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/bubbles/utils/TipsManager;->isSupportBubbleTips()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/miui/bubbles/utils/TipsManager;->isShownBubbleTipsInGameMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/bubbles/utils/TipsManager;->isBubbleBarrageTipShownForCase1()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0}, Lcom/miui/bubbles/utils/TipsManager;->setShowBubbleTipsInGameMode(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/bubbles/utils/TipsManager;->registerTipContentObserver()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setBubbleNotificationSupport(Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "miui_notification_bubbles_support"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private updateBubbleSettingsByUserSettings(Landroid/util/ArrayMap;)V
    .locals 7
    .param p1    # Landroid/util/ArrayMap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/bubbles/settings/BubbleApp;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mPrefKeyCurrentUserBubbleStatus:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    goto :goto_1

    :cond_2
    aget-object v5, v4, v2

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/bubbles/settings/BubbleApp;

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    aget-object v4, v4, v6

    const-string v6, "1"

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/miui/bubbles/settings/BubbleApp;->setChecked(Z)Lcom/miui/bubbles/settings/BubbleApp;

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public addActiveBubble(Lcom/miui/bubbles/Bubble;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mActiveBubbles:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string p1, "addActiveBubble"

    invoke-virtual {p0, p1}, Lcom/miui/bubbles/settings/BubblesSettings;->notifyBubbleAppChanged(Ljava/lang/String;)V

    return-void
.end method

.method public asyncUserSettingsToSharedPreference(Lcom/miui/bubbles/settings/BubbleApp;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "asyncUserSettingsToSP"

    invoke-virtual {p0, p1}, Lcom/miui/bubbles/settings/BubblesSettings;->notifyBubbleAppChanged(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/bubbles/settings/BubbleApp;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Lcom/miui/bubbles/settings/BubbleApp;->getSpString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mPrefKeyCurrentUserBubbleStatus:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getInstalledBubbleApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/bubbles/settings/BubbleApp;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/bubbles/settings/BubblesSettings;->getSupportBubbleApps()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/bubbles/settings/BubbleApp;

    :try_start_0
    invoke-virtual {v3}, Lcom/miui/bubbles/settings/BubbleApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/miui/bubbles/settings/BubbleApp;->getUserId()I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Lcom/miui/bubbles/settings/BubbleApp;->appName:Ljava/lang/CharSequence;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, v3, Lcom/miui/bubbles/settings/BubbleApp;->uid:I

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getSupportBubbleApps()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/bubbles/settings/BubbleApp;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasNotificationBubbles()Z
    .locals 5

    invoke-static {}, Lcom/miui/common/a;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mActiveBubbles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/bubbles/Bubble;

    iget-object v4, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v4, "have_notification_bubbles"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method public initBubblesSettings()V
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/bubbles/utils/BubbleUpManager;->isSupportBubbleUpNotification()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/bubbles/settings/BubblesSettings;->setBubbleNotificationSupport(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/miui/bubbles/settings/BubblesSettings;->isBubbleNotificationSwitchOpen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/bubbles/settings/BubblesSettings;->setBubbleNotificationSwitch(Z)V

    return-void
.end method

.method public isBubbleNotificationApp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/bubbles/settings/BubbleApp;

    if-eqz p1, :cond_0

    iget-boolean p1, p1, Lcom/miui/bubbles/settings/BubbleApp;->isChecked:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBubbleNotificationSwitchOpen()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "miui_bubbles_notification_switch"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public isSbnBelongToActiveBubbleApp(Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mActiveBubbles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/bubbles/Bubble;

    iget-object v2, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mBubbleAppMaps:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/bubbles/settings/BubbleApp;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/miui/bubbles/settings/BubbleApp;->isChecked:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/miui/bubbles/Bubble;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Lcom/miui/bubbles/Bubble;->userId:I

    if-ne p2, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isShowBarrageInGameScene()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/bubbles/utils/BubbleUpManager;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/utils/BubbleUpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/bubbles/utils/BubbleUpManager;->isShowBarrageInGameScene()Z

    move-result v0

    return v0
.end method

.method public notifyBubbleAppChanged(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/miui/bubbles/settings/BubblesSettings;->notifyBubbleAppChanged(ZLjava/lang/String;)V

    return-void
.end method

.method public notifyBubbleAppChanged(ZLjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mBubbleNotificationSwitch:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/bubbles/settings/BubblesSettings;->getBubbleAppString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBubbleAppChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BubblesSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "miui_bubbles_pinned_apps"

    invoke-static {p2, v1, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public removeActiveBubble(Lcom/miui/bubbles/Bubble;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mActiveBubbles:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const-string p1, "removeActiveBubble"

    invoke-virtual {p0, p1}, Lcom/miui/bubbles/settings/BubblesSettings;->notifyBubbleAppChanged(Ljava/lang/String;)V

    return-void
.end method

.method public saveCloudMiuiBubblesApps(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cloud apps : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BubblesSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cloud_miui_bubbles_apps"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setBubbleNotificationSwitch(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mBubbleNotificationSwitch:Z

    iget-object v0, p0, Lcom/miui/bubbles/settings/BubblesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "miui_bubbles_notification_switch"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p1, "setBubbleNotificationSwitch"

    invoke-virtual {p0, p1}, Lcom/miui/bubbles/settings/BubblesSettings;->notifyBubbleAppChanged(Ljava/lang/String;)V

    return-void
.end method
