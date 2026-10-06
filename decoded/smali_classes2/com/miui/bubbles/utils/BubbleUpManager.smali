.class public Lcom/miui/bubbles/utils/BubbleUpManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GAME_MODE:Ljava/lang/String; = "gb_notification"

.field private static final MIUI_MIRROR_DND_MODE:Ljava/lang/String; = "miui_mirror_dnd_mode"

.field private static final TAG:Ljava/lang/String; = "HeadUpManager"

.field private static sInstance:Lcom/miui/bubbles/utils/BubbleUpManager;


# instance fields
.field private final isBubbleNotificationSupport:Z

.field private isBubbleSwitchOpen:Z

.field private isControlCenterExpand:Z

.field private isZenMode:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mBubbleSwitchSettings:Lcom/miui/bubbles/settings/SecureSettings;

.field private final mBubblesSettings:Lcom/miui/bubbles/settings/BubblesSettings;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDreamManager:Landroid/app/DreamManager;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mMiuiBarrageController:Lcom/miui/bubbles/controller/MiuiBarrageController;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mUseHeadsUp:Z

.field private final mZenModeSettings:Lcom/miui/bubbles/settings/GlobalSettings;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/bubbles/utils/BubbleUpManager$1;

    invoke-direct {v0, p0}, Lcom/miui/bubbles/utils/BubbleUpManager$1;-><init>(Lcom/miui/bubbles/utils/BubbleUpManager;)V

    iput-object v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mBubblesSettings:Lcom/miui/bubbles/settings/BubblesSettings;

    invoke-static {}, Lcom/miui/bubbles/utils/BubbleUpManager;->isSupportBubbleUpNotification()Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->isBubbleNotificationSupport:Z

    invoke-virtual {v1}, Lcom/miui/bubbles/settings/BubblesSettings;->isBubbleNotificationSwitchOpen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->isBubbleSwitchOpen:Z

    iget-object v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "heads_up_notifications_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mUseHeadsUp:Z

    const-string v1, "dream"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DreamManager;

    iput-object v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mDreamManager:Landroid/app/DreamManager;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v1, Lcom/miui/bubbles/controller/MiuiBarrageController;

    invoke-direct {v1, p1}, Lcom/miui/bubbles/controller/MiuiBarrageController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mMiuiBarrageController:Lcom/miui/bubbles/controller/MiuiBarrageController;

    iget-object v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "miui_fsgesture_state"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v3, v2

    :cond_1
    iput-boolean v3, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->isControlCenterExpand:Z

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.systemui.fsgesture"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v3}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Lcom/miui/bubbles/utils/BubbleUpManager$2;

    iget-object v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v3, "zen_mode"

    invoke-direct {p1, p0, v0, v1, v3}, Lcom/miui/bubbles/utils/BubbleUpManager$2;-><init>(Lcom/miui/bubbles/utils/BubbleUpManager;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mZenModeSettings:Lcom/miui/bubbles/settings/GlobalSettings;

    new-instance v0, Lcom/miui/bubbles/utils/BubbleUpManager$3;

    iget-object v3, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mContext:Landroid/content/Context;

    const-string v4, "miui_bubbles_notification_switch"

    invoke-direct {v0, p0, v3, v1, v4}, Lcom/miui/bubbles/utils/BubbleUpManager$3;-><init>(Lcom/miui/bubbles/utils/BubbleUpManager;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mBubbleSwitchSettings:Lcom/miui/bubbles/settings/SecureSettings;

    invoke-virtual {p1, v2}, Lcom/miui/bubbles/settings/GlobalSettings;->setListening(Z)V

    invoke-virtual {v0, v2}, Lcom/miui/bubbles/settings/SecureSettings;->setListening(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/bubbles/utils/BubbleUpManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->isControlCenterExpand:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/bubbles/utils/BubbleUpManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->isZenMode:Z

    return p0
.end method

.method static synthetic access$102(Lcom/miui/bubbles/utils/BubbleUpManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->isZenMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/bubbles/utils/BubbleUpManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->isBubbleSwitchOpen:Z

    return p0
.end method

.method static synthetic access$202(Lcom/miui/bubbles/utils/BubbleUpManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->isBubbleSwitchOpen:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/bubbles/utils/BubbleUpManager;)Lcom/miui/bubbles/settings/BubblesSettings;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mBubblesSettings:Lcom/miui/bubbles/settings/BubblesSettings;

    return-object p0
.end method

.method private canAlertCommon(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-static {p1}, Lcom/miui/bubbles/utils/h;->a(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HeadUpManager"

    const-string v0, "No alerting: suppressed due to group alert behavior"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/bubbles/utils/BubbleUpManager;
    .locals 2

    const-class v0, Lcom/miui/bubbles/utils/BubbleUpManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/bubbles/utils/BubbleUpManager;->sInstance:Lcom/miui/bubbles/utils/BubbleUpManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/bubbles/utils/BubbleUpManager;

    invoke-direct {v1, p0}, Lcom/miui/bubbles/utils/BubbleUpManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/bubbles/utils/BubbleUpManager;->sInstance:Lcom/miui/bubbles/utils/BubbleUpManager;

    :cond_0
    sget-object p0, Lcom/miui/bubbles/utils/BubbleUpManager;->sInstance:Lcom/miui/bubbles/utils/BubbleUpManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static hasProgressbar(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.progressMax"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.progressIndeterminate"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isBubbleNotification(Landroid/app/Notification;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v2, "isBubbleNotification"

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2, v3, v4}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private isDreaming()Z
    .locals 5

    iget-object v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mDreamManager:Landroid/app/DreamManager;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "isDreaming"

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private isEnableBubbleNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mBubblesSettings:Lcom/miui/bubbles/settings/BubblesSettings;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/miui/bubbles/settings/BubblesSettings;->isSbnBelongToActiveBubbleApp(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method private static isEnableFloat(Landroid/app/Notification;)Z
    .locals 2

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "miui.enableFloat"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {p0}, Landroid/app/MiuiNotification;->isEnableFloat()Z

    move-result p0

    return p0
.end method

.method private static isGameModeDNDEnabled(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "gb_notification"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isMiuiMirrorDndModeEnabled(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "miui_mirror_dnd_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupportBubbleUpNotification()Z
    .locals 2

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/miui/common/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/bubbles/utils/MiuiFreeFormManagerWrapper;->isSupportPin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldHeadUpByGoogle(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mUseHeadsUp:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/bubbles/utils/BubbleUpManager;->canAlertCommon(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/bubbles/utils/BubbleUpManager;->isBubbleNotification(Landroid/app/Notification;)Z

    move-result p1

    const-string v0, "HeadUpManager"

    if-eqz p1, :cond_2

    const-string p1, "shouldHeadUp: google bubbles"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-static {p2}, Lcom/miui/bubbles/utils/i;->a(Landroid/service/notification/NotificationListenerService$Ranking;)I

    move-result p1

    const/4 p2, 0x4

    if-ge p1, p2, :cond_3

    return v1

    :cond_3
    :try_start_0
    invoke-direct {p0}, Lcom/miui/bubbles/utils/BubbleUpManager;->isDreaming()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to query dream manager."

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, v1

    :goto_0
    iget-object p2, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p2

    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private shouldHeadUpByMiui(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->isZenMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/miui/bubbles/utils/BubbleUpManager;->isMiuiMirrorDndModeEnabled(Landroid/content/Context;I)Z

    move-result v0

    const-string v2, "HeadUpManager"

    if-eqz v0, :cond_1

    const-string p1, "miui bubbles: mirror dnd mode"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mMiuiBarrageController:Lcom/miui/bubbles/controller/MiuiBarrageController;

    invoke-virtual {v0}, Lcom/miui/bubbles/controller/MiuiBarrageController;->isInGameMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v0, v3}, Lcom/miui/bubbles/utils/BubbleUpManager;->isGameModeDNDEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Game mode DND"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/bubbles/utils/BubbleUpManager;->isEnableFloat(Landroid/app/Notification;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p1, "miui bubbles, require miui permission"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    invoke-static {p1}, Lcom/miui/bubbles/utils/BubbleUpManager;->hasProgressbar(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "miui bubbles, has progress"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    iget-object v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mMiuiBarrageController:Lcom/miui/bubbles/controller/MiuiBarrageController;

    invoke-virtual {v0, p1}, Lcom/miui/bubbles/controller/MiuiBarrageController;->isShowBarrageInGameScene(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "No float notification for barrage in game scene"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public isShowBarrageInGameScene()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mMiuiBarrageController:Lcom/miui/bubbles/controller/MiuiBarrageController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/bubbles/controller/MiuiBarrageController;->isShowBarrageInGameScene(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public shouldHeadUp(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->isBubbleNotificationSupport:Z

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->isBubbleSwitchOpen:Z

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/bubbles/utils/BubbleUpManager;->isEnableBubbleNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_4

    return v0

    :cond_4
    iget-object v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    return v0

    :cond_5
    iget-boolean v1, p0, Lcom/miui/bubbles/utils/BubbleUpManager;->isControlCenterExpand:Z

    if-eqz v1, :cond_6

    return v0

    :cond_6
    new-instance v1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    invoke-direct {p0, p1, v1}, Lcom/miui/bubbles/utils/BubbleUpManager;->shouldHeadUpByGoogle(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-direct {p0, p1}, Lcom/miui/bubbles/utils/BubbleUpManager;->shouldHeadUpByMiui(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1

    :cond_7
    return v0
.end method
