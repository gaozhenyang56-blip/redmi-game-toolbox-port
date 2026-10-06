.class public Lcom/miui/networkassistant/utils/NotificationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;,
        Lcom/miui/networkassistant/utils/NotificationUtil$PendingIntentType;
    }
.end annotation


# static fields
.field public static final CANCEL_FLOAT_NOTIFICATION:Ljava/lang/String; = "cancel_float_notification"

.field public static final DEFAULT_CAT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field private static final NOISE_NOTIFY_CHANNEL_ID:Ljava/lang/String; = "networkassistant_noise_notify_channel"

.field private static final NOTIFICATION_ID_FOR_FOLD_DEVICE:I = 0x2710

.field private static final NOTIFY_CHANNEL_ID:Ljava/lang/String; = "networkassistant_notify_channel"

.field private static final NOTIFY_ID_CORRECTION_SUCCEED:I = 0x21

.field private static final NOTIFY_ID_DAILY_CARD_OVER_LIMIT:I = 0x43

.field private static final NOTIFY_ID_DAILY_LIMIT_WARNING:I = 0xd

.field private static final NOTIFY_ID_DATA_USAGE_CORRECTION_TIMEOUT:I = 0x1

.field public static final NOTIFY_ID_DATA_USAGE_OVER_LIMIT:I = 0x3

.field private static final NOTIFY_ID_LEISURE_DATA_USAGE_WARNING:I = 0x4

.field private static final NOTIFY_ID_LOCK_SCREEN_TRAFFIC_GUIDE:I = 0x0

.field private static final NOTIFY_ID_LOCK_SCREEN_TRAFFIC_WARNING:I = 0x10

.field private static final NOTIFY_ID_LOW_PRIORITY:I = 0x0

.field private static final NOTIFY_ID_NETWORK_BLOCKED:I = 0x16

.field private static final NOTIFY_ID_NETWORK_CHANGED:I = 0x50

.field public static final NOTIFY_ID_NETWORK_RESTRICT:I = 0x20

.field private static final NOTIFY_ID_NETWORK_STATS_EXCEPTION:I = 0x45

.field private static final NOTIFY_ID_NORMAL_DATA_USAGE_WARNING:I = 0x2

.field private static final NOTIFY_ID_NOT_LIMITED_DATA_USAGE_OVER_LIMIT:I = 0x51

.field public static final NOTIFY_ID_PACKAGE_CHANGE:I = 0x30

.field private static final NOTIFY_ID_PACKAGE_SETTING:I = 0x0

.field private static final NOTIFY_ID_ROAMING_DAILY_LIMIT_WARNING:I = 0x22

.field private static final NOTIFY_ID_ROAMING_STATE:I = 0xb

.field private static final NOTIFY_ID_ROAMING_WHITE_LIST_SETTED:I = 0xc

.field private static final NOTIFY_ID_SIM_LOCATION_ERROR:I = 0x0

.field private static final NOTIFY_ID_TC_SMS_RECEIVED:I = 0x9

.field private static final NOTIFY_ID_TC_SMS_TIMEOUT_OR_FAILURE_NOTIFY:I = 0xa

.field private static final NOTIFY_ID_TETHER_LIMT:I = 0x46

.field private static final NOTIFY_ID_TOTAL_PACKAGE_NOT_SETTED:I = 0x5

.field private static final NOTIFY_ID_TRAFFIC_SETTING_DAILY_LIMIT:I = 0x0

.field private static final NOTIFY_PACKAGE_ERROR:I = 0x52

.field private static final SECURITYCENTER_NOTIFY_CHANNEL_ID:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final SLOT_ID:Ljava/lang/String; = "slotId"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/content/Intent;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/utils/NotificationUtil;->showRightButton(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/content/Intent;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static cancelAllLowPriorityNotify(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelDailyLimitWarning(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xd

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelDataUsageCorrectionTimeOutOrFailureNotify(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelDataUsageOverLimit(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelFirewallRestrictionNotification(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelNetworkChangedNotify(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x50

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelNormalDataUsageWarning(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {p0, p1}, Lx4/v;->d(Landroid/app/NotificationManager;I)V

    return-void
.end method

.method public static cancelOpenDataRoamingNotify(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelOpenRoamingWhiteListNotify(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelRoamingDailyLimitWarning(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x22

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelSimLocationErrorNotify(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelTcSmsReceivedNotify(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelTcSmsTimeOutOrFailureNotify(Landroid/content/Context;)V
    .locals 1

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNotification(Landroid/content/Context;I)V

    return-void
.end method

.method private static createChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f12020b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lx4/e1;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static getChannelByExtraBuilder(Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->getChannel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "networkassistant_notify_channel"

    return-object p0
.end method

.method private static getClickIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 7

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.virtualsim"

    invoke-static {p0, v1}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "bill"

    const-string v3, "goto"

    const-string v4, "slotId"

    const-string v5, "android.intent.category.DEFAULT"

    const/16 v6, 0x244

    if-lt v1, v6, :cond_0

    const-string p0, "com.miui.businesshall.ACTION_ROUTER"

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_0
    const-string v1, "com.android.contacts"

    invoke-static {p0, v1}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0x168

    if-lt p0, v1, :cond_1

    const-string p0, "com.mobile.businesshall.ACTION_ROUTER"

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->getSimResIdBySlotNum(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const/4 p0, 0x1

    aput-object p2, p1, p0

    const-string p0, "%s%s"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    invoke-static {p2}, Lcom/miui/networkassistant/utils/NotificationUtil;->getSimResIdBySlotNum(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p3, p1

    const-string p0, "%s-%s"

    invoke-static {p0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lcom/miui/networkassistant/utils/NotificationUtil;->getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static getPendingIntent(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    invoke-static {p0, p1, p2}, Lx4/v;->g(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2}, Lx4/v;->i(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getSimResIdBySlotNum(I)I
    .locals 0

    if-nez p0, :cond_0

    const p0, 0x7f1206d8

    goto :goto_0

    :cond_0
    const p0, 0x7f1206d9

    :goto_0
    return p0
.end method

.method public static makeNotificationBuilder(Landroid/content/Context;)Lw4/b$b;
    .locals 2

    new-instance v0, Lw4/b$b;

    invoke-direct {v0, p0}, Lw4/b$b;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lw4/b$b;->l(I)Lw4/b$b;

    move-result-object v0

    const v1, 0x7f12020b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "networkassistant_notify_channel"

    invoke-virtual {v0, v1, p0}, Lw4/b$b;->e(Ljava/lang/String;Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    const v0, 0x7f08037a

    invoke-virtual {p0, v0}, Lw4/b$b;->v(I)Lw4/b$b;

    move-result-object p0

    return-object p0
.end method

.method private static sendArrearsBillChargeNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2

    const v0, 0x7f120540

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/networkassistant/utils/NotificationUtil;->makeNotificationBuilder(Landroid/content/Context;)Lw4/b$b;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lw4/b$b;->c(Ljava/lang/String;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, p3, v1}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method private static sendArrearsBillNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p0}, Lcom/miui/networkassistant/utils/NotificationUtil;->makeNotificationBuilder(Landroid/content/Context;)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lw4/b$b;->i(Z)Lw4/b$b;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lw4/b$b;->j(Z)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lw4/b$b;->h(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, p2}, Lw4/b$b;->g(Ljava/lang/CharSequence;)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0, p3, v0}, Lw4/b$b;->u(Landroid/content/Intent;I)Lw4/b$b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b$b;->a()Lw4/b;

    move-result-object p0

    invoke-virtual {p0}, Lw4/b;->I()V

    return-void
.end method

.method public static sendBillArrears(Landroid/content/Context;I)V
    .locals 8

    invoke-static {p0}, Lp4/d;->f(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    const-wide/32 v2, 0xf731400

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBillArrearsTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v2, v4, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v6

    const-string v7, "operator"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "track_key_get_telephone_to_send_notify"

    invoke-static {v6, v5}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBillArrearsTime(J)Z

    const v1, 0x7f120409

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120408

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->getClickIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p0, v1, v2, p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendArrearsBillChargeNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v1, v2, p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendArrearsBillNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public static sendBillWarningNotify(Landroid/content/Context;Ljava/lang/String;ILandroid/content/Intent;I)V
    .locals 11

    const v1, 0x7f12040b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v1, 0x7f12040a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x1

    add-int/lit8 v5, p2, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$20;

    invoke-direct {v8}, Lcom/miui/networkassistant/utils/NotificationUtil$20;-><init>()V

    invoke-virtual {v8, p4}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    const/16 v1, 0x22

    const v5, 0x7f080d8e

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v0, p0

    move-object v2, p3

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendCorrectionAlertNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 9

    if-eqz p4, :cond_0

    invoke-static {p0, p3}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getTrafficAnalysis(Lcom/miui/networkassistant/config/SimUserInfo;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    new-instance v5, Lcom/miui/networkassistant/utils/NotificationUtil$2;

    invoke-direct {v5}, Lcom/miui/networkassistant/utils/NotificationUtil$2;-><init>()V

    const v1, 0x7f0804b3

    invoke-virtual {v5, v1}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    const/16 v1, 0x21

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "sim_slot_num_tag"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x21

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendDailyCardDataUsageOverLimit(Landroid/content/Context;II)V
    .locals 10

    const-class v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100023

    invoke-virtual {v1, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/CommonConfig;->isMiSimEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120b65

    goto :goto_0

    :cond_0
    const p1, 0x7f120625

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/miui/networkassistant/utils/NotificationUtil$9;

    invoke-direct {v6, p2}, Lcom/miui/networkassistant/utils/NotificationUtil$9;-><init>(I)V

    invoke-static {}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getMiSimIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/CommonConfig;->isMiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_1
    :goto_1
    move-object v3, p1

    const/16 v2, 0x43

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/networkassistant/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    const p2, 0x7f0804b3

    invoke-virtual {v6, p2}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    goto :goto_1

    :goto_2
    return-void
.end method

.method public static sendDailyLimitWarning(Landroid/content/Context;I)V
    .locals 11

    const-class v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    const v1, 0x7f12154c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f121b96

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/miui/networkassistant/utils/NotificationUtil$5;

    invoke-direct {v7, p1}, Lcom/miui/networkassistant/utils/NotificationUtil$5;-><init>(I)V

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/CommonConfig;->isMiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getMiSimIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    move-object v4, p1

    const/16 v3, 0xd

    const p1, 0x7f120b65

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getTrafficAnalysis(Lcom/miui/networkassistant/config/SimUserInfo;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p1, 0x7f12154b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_0

    :cond_2
    const p1, 0x7f0804b3

    invoke-virtual {v7, p1}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    :goto_0
    const/16 v3, 0xd

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v2, p0

    invoke-static/range {v2 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendDataUsageCorrectionTimeOutOrFailureNotify(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 12

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f121979

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v0

    new-instance v9, Lcom/miui/networkassistant/utils/NotificationUtil$13;

    invoke-direct {v9, p0, p2, v0}, Lcom/miui/networkassistant/utils/NotificationUtil$13;-><init>(Landroid/content/Context;ILandroid/content/Intent;)V

    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_0

    const p1, 0x7f0804b3

    invoke-virtual {v9, p1}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12197a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v5, p1

    move-object v3, p2

    :goto_0
    const/4 v2, 0x1

    const v6, 0x7f080940

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendDataUsageOverLimit(Landroid/content/Context;III)V
    .locals 14

    move-object v9, p0

    move v0, p1

    move/from16 v10, p3

    const v1, 0x7f12061e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f12061c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {p0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v5

    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$6;

    invoke-direct {v8, v10}, Lcom/miui/networkassistant/utils/NotificationUtil$6;-><init>(I)V

    const/4 v11, 0x4

    const/4 v6, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_6

    const/4 v7, 0x7

    if-ne v0, v7, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const v0, 0x7f1215af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f1215ae

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f120ca9

    goto :goto_0

    :cond_3
    const v1, 0x7f12060b

    if-ne v0, v11, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100023

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    move/from16 v4, p2

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v2

    if-eq v10, v2, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v10, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v5, v6

    goto :goto_0

    :cond_4
    if-ne v0, v12, :cond_5

    const v0, 0x7f12154c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v2

    if-eq v10, v2, :cond_7

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v10, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    move-object v4, v1

    move v13, v6

    goto :goto_4

    :cond_5
    move-object v3, v2

    goto :goto_3

    :cond_6
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_7
    :goto_2
    move-object v3, v0

    move-object v4, v1

    :goto_3
    move v13, v5

    :goto_4
    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lx4/t;->E()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    invoke-static {}, La8/s1;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0x2710

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x2

    move-object v0, p0

    move-object v5, v8

    move v8, v13

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    invoke-static {p0, v10}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOverDataUsageStopNetworkType()I

    move-result v1

    if-ne v1, v11, :cond_9

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardStopNetworkCount()I

    move-result v1

    add-int/2addr v1, v12

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkCount(I)Z

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkTime(J)Z

    :cond_9
    return-void

    :cond_a
    const/4 v1, 0x3

    const-class v2, Lcom/miui/networkassistant/ui/activity/NetworkOverLimitActivity;

    const v5, 0x7f0802e1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x2

    move-object v0, p0

    move v9, v13

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendLeisureDataUsageWarning(Landroid/content/Context;I)V
    .locals 12

    const v0, 0x7f12061b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v0, 0x7f12061a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v9, Lcom/miui/networkassistant/utils/NotificationUtil$10;

    invoke-direct {v9}, Lcom/miui/networkassistant/utils/NotificationUtil$10;-><init>()V

    invoke-static {p1}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    const p1, 0x7f0804b3

    invoke-virtual {v9, p1}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    const/4 v2, 0x4

    const v6, 0x7f080d8e

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    const-class v3, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    const v6, 0x7f080d8e

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;)V

    :goto_0
    return-void
.end method

.method public static sendLockScreenTrafficGuideNotify(Landroid/content/Context;J)V
    .locals 12

    const v0, 0x7f120cb8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f120cb7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    const-string v2, "sim_slot_num_tag"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-class v0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {p0, v0, p1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/networkassistant/utils/PackageUtil;->isRunningForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v9, Lcom/miui/networkassistant/utils/NotificationUtil$18;

    invoke-direct {v9}, Lcom/miui/networkassistant/utils/NotificationUtil$18;-><init>()V

    const v0, 0x7f0804b3

    invoke-virtual {v9, v0}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/Intent;

    aput-object p1, v0, p2

    aput-object v3, v0, v1

    const v6, 0x7f080d8e

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v1, p0

    move-object v3, v0

    invoke-static/range {v1 .. v11}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;I[Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    const v6, 0x7f080d8e

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    :goto_1
    return-void
.end method

.method public static sendLockScreenTrafficUsed(Landroid/content/Context;JJJLjava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJJ",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-wide v1, p3

    move-wide/from16 v3, p5

    const v5, 0x7f120cbb

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isLargeScaleMode()Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const v10, 0x7f120cb9

    const/4 v11, 0x3

    if-eqz v6, :cond_0

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v3, v4, v11}, Lcom/miui/networkassistant/utils/DateUtil;->formatDataTime(JI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v9

    invoke-static {p0, v1, v2}, Lcom/miui/networkassistant/utils/DateUtil;->getFormatedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v8

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v7

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v11, 0x4

    invoke-static {v3, v4, v11}, Lcom/miui/networkassistant/utils/DateUtil;->formatDataTime(JI)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v9

    invoke-static {p0, v1, v2}, Lcom/miui/networkassistant/utils/DateUtil;->getFormatedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v8

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v7

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v4, v1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "uid_map"

    move-object/from16 v3, p7

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "list_header"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/miui/networkassistant/ui/fragment/LockScreenTrafficFragment;

    invoke-static {p0, v2, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const/16 v1, 0x10

    const v6, 0x7f080d8e

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v0, p0

    move-object v3, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v11

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendNetworkRestrictNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/ui/activity/FirewallActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Lcom/miui/networkassistant/utils/NotificationUtil$1;

    invoke-direct {v5, p3, p4, p0}, Lcom/miui/networkassistant/utils/NotificationUtil$1;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    const/16 v1, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendNetworkStatsExceptionNotify(Landroid/content/Context;)V
    .locals 10

    const v0, 0x7f1207f6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f1207f5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/miui/networkassistant/utils/NotificationUtil$22;

    invoke-direct {v6}, Lcom/miui/networkassistant/utils/NotificationUtil$22;-><init>()V

    new-instance v3, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/ui/activity/NetworkStatsExceptionAlertActivity;

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x45

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendNormalDataUsageOverWarning(Landroid/content/Context;I)V
    .locals 13

    const v0, 0x7f120626

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/CommonConfig;->isMiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f120625

    goto :goto_0

    :cond_0
    const v1, 0x7f121897

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v1, 0x1

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v5, v0

    move v11, v1

    new-instance v10, Lcom/miui/networkassistant/utils/NotificationUtil$7;

    invoke-direct {v10, p1}, Lcom/miui/networkassistant/utils/NotificationUtil$7;-><init>(I)V

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isMiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getMiSimIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_2
    move-object v4, p1

    goto :goto_1

    :cond_3
    invoke-static {p0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getTrafficAnalysis(Lcom/miui/networkassistant/config/SimUserInfo;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v3, 0x3

    const-class v4, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    const v7, 0x7f080dbd

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x2

    move-object v2, p0

    invoke-static/range {v2 .. v12}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    goto :goto_2

    :cond_4
    const p1, 0x7f0804b3

    invoke-virtual {v10, p1}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    :goto_1
    const/4 v3, 0x3

    const v7, 0x7f080dbd

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, 0x2

    move-object v2, p0

    invoke-static/range {v2 .. v12}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    :goto_2
    return-void
.end method

.method public static sendNormalDataUsageWarning(Landroid/content/Context;ZILjava/lang/String;)V
    .locals 11

    const v1, 0x7f121adb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/CommonConfig;->isMiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f120624

    goto :goto_0

    :cond_0
    const v1, 0x7f120b65

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$4;

    invoke-direct {v8}, Lcom/miui/networkassistant/utils/NotificationUtil$4;-><init>()V

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/CommonConfig;->isMiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x2

    const-class v2, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    const v5, 0x7f080d8e

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;)V

    goto :goto_2

    :cond_1
    const v1, 0x7f0804b3

    invoke-virtual {v8, v1}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    invoke-static {}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getMiSimIntent()Landroid/content/Intent;

    move-result-object v2

    :goto_1
    const v5, 0x7f080d8e

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object v0, p0

    move-object v3, p3

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    :goto_2
    return-void
.end method

.method public static sendNormalTotalPackageNotSetted(Landroid/content/Context;I)V
    .locals 13

    const v0, 0x7f1213ab

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v0, 0x7f12061f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    const-string v3, "sim_slot_num_tag"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    const v0, 0x7f120620

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->getSimResIdBySlotNum(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v2, "bundle_key_from_other_task"

    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "key_back"

    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v9, Lcom/miui/networkassistant/utils/NotificationUtil$3;

    invoke-direct {v9}, Lcom/miui/networkassistant/utils/NotificationUtil$3;-><init>()V

    const-string v2, "networkassistant_notify_channel"

    invoke-virtual {v9, v2}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setChannel(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const v7, 0x7f0804b3

    invoke-virtual {v9, v7}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    :cond_1
    const-class v7, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    invoke-static {p0, v7, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v2, :cond_2

    move v5, v6

    :cond_2
    const-string p1, "TO_BUSINESS_HALL"

    invoke-virtual {v7, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x5

    const v6, 0x7f080d8e

    const/4 p1, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    move-object v1, p0

    move-object v3, v7

    move-object v5, v0

    move v7, p1

    invoke-static/range {v1 .. v12}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZIZ)V

    return-void
.end method

.method public static sendNotLimitedDataUsageOverWarning(Landroid/content/Context;JI)V
    .locals 10

    const v0, 0x7f121ada

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f121ad7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Lcom/miui/networkassistant/utils/NotificationUtil$8;

    invoke-direct {v6, p3}, Lcom/miui/networkassistant/utils/NotificationUtil$8;-><init>(I)V

    invoke-static {}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getMiSimIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/CommonConfig;->isMiSimEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const p3, 0x7f121ad8

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    move-object v3, v2

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {p3}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/miui/networkassistant/utils/PackageUtil;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_2
    const p2, 0x7f0804b3

    invoke-virtual {v6, p2}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    :goto_1
    move-object v3, p1

    move-object v5, v0

    :goto_2
    const/16 v2, 0x51

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendOpenDataRoamingNotify(Landroid/content/Context;)V
    .locals 10

    const v0, 0x7f1215b2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v0, 0x7f1215b1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/miui/networkassistant/utils/NotificationUtil$14;

    invoke-direct {v6}, Lcom/miui/networkassistant/utils/NotificationUtil$14;-><init>()V

    const-class v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    const/16 v2, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendOpenRoamingWhiteListNotify(Landroid/content/Context;)V
    .locals 12

    const v0, 0x7f1215b4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v0, 0x7f1215b3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v9, Lcom/miui/networkassistant/utils/NotificationUtil$15;

    invoke-direct {v9}, Lcom/miui/networkassistant/utils/NotificationUtil$15;-><init>()V

    const-class v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    const/16 v2, 0xc

    const v6, 0x7f080d8e

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v11}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendPackageChangeNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Lcom/miui/networkassistant/model/TrafficUsedStatus;Z)V
    .locals 9

    move-object v0, p0

    move v1, p4

    const/4 v2, 0x1

    move-object v3, p1

    invoke-static {p0, p1, p4, v2}, Lcom/miui/networkassistant/utils/NotificationUtil;->getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {}, Lx4/t;->r()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, La8/s1;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x30

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    :goto_0
    invoke-static/range {v0 .. v8}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/miui/networkassistant/ui/activity/TrafficConfigAlertActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "bundle_key_is_stable_pkg"

    move/from16 v5, p7

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "bundle_key_body"

    move-object v5, p3

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "sim_slot_num_tag"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "bundle_key_imsi"

    move-object v5, p5

    invoke-virtual {v2, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "bundle_key_traffic_used_status"

    move-object v5, p6

    invoke-virtual {v2, v4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    add-int/lit8 v1, v1, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    move-object v0, p0

    move-object v4, p2

    goto :goto_0
.end method

.method public static sendPackageErrorNotify(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 10

    const/4 v0, 0x1

    invoke-static {p0, p1, p3, v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {}, Lx4/t;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, La8/s1;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    add-int/lit8 v2, p3, 0x52

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v1, p0

    :goto_0
    invoke-static/range {v1 .. v9}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void

    :cond_0
    const-class p1, Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    add-int/lit8 v2, p3, 0x52

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v1, p0

    move-object v5, p2

    goto :goto_0
.end method

.method public static sendRoamingDailyLimitWarning(Landroid/content/Context;)V
    .locals 10

    const v0, 0x7f1215af

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v0, 0x7f1215b0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/miui/networkassistant/utils/NotificationUtil$19;

    invoke-direct {v6}, Lcom/miui/networkassistant/utils/NotificationUtil$19;-><init>()V

    new-instance v3, Landroid/content/Intent;

    const-class v0, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {v3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x22

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendSettingDailyLimitNotify(Landroid/content/Context;JI)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p3

    const v2, 0x7f120f2c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static/range {p0 .. p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/miui/networkassistant/utils/NotificationUtil;->getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f120f2b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v2

    new-instance v7, Lcom/miui/networkassistant/utils/NotificationUtil$17;

    invoke-direct {v7}, Lcom/miui/networkassistant/utils/NotificationUtil$17;-><init>()V

    const v8, 0x7f0804b3

    invoke-virtual {v7, v8}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v9, "sim_slot_num_tag"

    invoke-virtual {v8, v9, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-class v10, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-static {p0, v10, v8}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    const-string v6, "TO_BUSINESS_HALL"

    invoke-virtual {v8, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v8, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    const v6, 0x7f080d8e

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object v11, v7

    :goto_1
    const/4 v12, 0x0

    const/4 v13, 0x2

    move-object v0, p0

    move-object v2, v8

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v9

    move v7, v10

    move-object v8, v11

    move v9, v12

    move v10, v13

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendSimLocationErrorNotify(Landroid/content/Context;I)V
    .locals 13

    const v0, 0x7f121666

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;IZ)Ljava/lang/CharSequence;

    move-result-object v5

    const v0, 0x7f121665

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v10, Lcom/miui/networkassistant/utils/NotificationUtil$21;

    invoke-direct {v10}, Lcom/miui/networkassistant/utils/NotificationUtil$21;-><init>()V

    invoke-static {p1}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "update_operator"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "sim_slot_num_tag"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    const-string v8, "TO_BUSINESS_HALL"

    invoke-virtual {v2, v8, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    const v7, 0x7f0804b3

    invoke-virtual {v10, v7}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    :cond_1
    const-class v7, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-static {p0, v7, v2}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x0

    const p1, 0x7f080d8e

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    move-object v2, p0

    move-object v4, v7

    move v7, p1

    invoke-static/range {v2 .. v12}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendTcSmsReceivedNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 15

    move/from16 v0, p3

    invoke-static/range {p3 .. p3}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v1

    const-class v2, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const/4 v3, 0x0

    move-object v4, p0

    invoke-static {p0, v2, v3}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    const-string v2, "sim_slot_num_tag"

    invoke-virtual {v6, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v6, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "TO_BUSINESS_HALL"

    invoke-virtual {v6, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v2, Lcom/miui/networkassistant/utils/NotificationUtil;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "view_from"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fragment_arg"

    invoke-virtual {v6, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v12, Lcom/miui/networkassistant/utils/NotificationUtil$11;

    invoke-direct {v12}, Lcom/miui/networkassistant/utils/NotificationUtil$11;-><init>()V

    if-eqz v1, :cond_1

    const v0, 0x7f0804b3

    invoke-virtual {v12, v0}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    :cond_1
    const/16 v5, 0x9

    const v9, 0x7f080d8e

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    move-object v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-static/range {v4 .. v14}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendTcSmsTimeOutOrFailureNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    new-instance v8, Lcom/miui/networkassistant/utils/NotificationUtil$12;

    invoke-direct {v8, p0}, Lcom/miui/networkassistant/utils/NotificationUtil$12;-><init>(Landroid/content/Context;)V

    invoke-static {p3}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    const-string v1, "sim_slot_num_tag"

    invoke-virtual {v2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string v1, "TO_BUSINESS_HALL"

    invoke-virtual {v2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/miui/networkassistant/utils/NotificationUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "view_from"

    invoke-virtual {p3, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fragment_arg"

    invoke-virtual {v2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz v0, :cond_1

    const p3, 0x7f0804b3

    invoke-virtual {v8, p3}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    :cond_1
    const/16 v1, 0xa

    const v5, 0x7f080d8e

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method public static sendTetherOverLimitWaringNotify(Landroid/content/Context;)V
    .locals 10

    const v0, 0x7f1219ad

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f1219ac

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/miui/networkassistant/utils/NotificationUtil$23;

    invoke-direct {v6}, Lcom/miui/networkassistant/utils/NotificationUtil$23;-><init>()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x46

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method public static sendTrafficSettingDailyNotify(Landroid/content/Context;JI)V
    .locals 2

    const v0, 0x7f120f2c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f120f2a

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/miui/networkassistant/utils/NotificationUtil;->showOperatorSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static sendTrafficSettingMonthlyNotify(Landroid/content/Context;JI)V
    .locals 2

    const v0, 0x7f120f32

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->getDualCardTitle(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f120f31

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2, p3}, Lcom/miui/networkassistant/utils/NotificationUtil;->showOperatorSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static showFloat(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZLandroid/app/PendingIntent;)V
    .locals 3

    const-string p4, "notification"

    invoke-virtual {p0, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/app/NotificationManager;

    invoke-static {p0, p2, p5}, Lcom/miui/networkassistant/utils/NotificationUtil;->getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    const-string p5, "networkassistant_notify_channel"

    invoke-static {p0, p5}, Lcom/miui/networkassistant/utils/NotificationUtil;->createChannel(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, p5}, Lx4/e1;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p5

    const/16 v0, 0x21

    invoke-virtual {p5, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const v2, 0x7f080d8e

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p7

    invoke-virtual {p7, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const-string p2, "single"

    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {p5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-static {p2, p3}, Lrg/a;->e(Landroid/app/Notification;Z)V

    invoke-static {p2, p3}, Lrg/a;->c(Landroid/app/Notification;Z)V

    invoke-static {p2, v1}, Lrg/a;->f(Landroid/app/Notification;I)V

    if-eqz p6, :cond_0

    new-instance p3, Landroid/content/Intent;

    const-string p5, "action_broadcast_cancel_notification"

    invoke-direct {p3, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p5, "cancel_float_notification"

    invoke-virtual {p3, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, p1, p3}, Lx4/v;->i(Landroid/content/Context;ILandroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {p2, p0}, Lrg/a;->d(Landroid/app/Notification;Landroid/app/PendingIntent;)V

    :cond_0
    invoke-static {p4, p1, p2}, Lx4/v;->k(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method

.method public static showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v3, p8

    invoke-static {p0, p1, p2, v3}, Lcom/miui/networkassistant/utils/NotificationUtil;->getPendingIntent(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v7}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloat(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static showNetworkChangedNotify(Landroid/content/Context;)V
    .locals 10

    const v0, 0x7f120ea0

    invoke-static {p0, v0}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120e9f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/miui/networkassistant/utils/NotificationUtil$24;

    invoke-direct {v6}, Lcom/miui/networkassistant/utils/NotificationUtil$24;-><init>()V

    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/miui/networkassistant/utils/NotificationUtil;->showFloatNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZI)V

    return-void
.end method

.method private static showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V
    .locals 12

    if-eqz p2, :cond_0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v0 .. v11}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZIZ)V

    :cond_0
    return-void
.end method

.method private static showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZIZ)V
    .locals 12

    const/high16 v0, 0x4000000

    or-int v0, p10, v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    invoke-static/range {v1 .. v11}, Lcom/miui/networkassistant/utils/NotificationUtil;->showPendingIntent(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZLandroid/app/PendingIntent;)V

    return-void
.end method

.method private static showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "IZZ",
            "Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;",
            ")V"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v10, 0x2

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method private static showNotification(Landroid/content/Context;ILjava/lang/Class;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "IZZ",
            "Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;",
            "ZI)V"
        }
    .end annotation

    move-object/from16 v8, p8

    new-instance v2, Landroid/content/Intent;

    move-object v0, p0

    move-object v1, p2

    invoke-direct {v2, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v8, :cond_0

    invoke-virtual {v8, v2}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->onCreateIntent(Landroid/content/Intent;)V

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v0 .. v10}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V

    return-void
.end method

.method private static showNotification(Landroid/content/Context;I[Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZI)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v0 .. v11}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;I[Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZIZ)V

    return-void
.end method

.method private static showNotification(Landroid/content/Context;I[Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZIZ)V
    .locals 12

    const/high16 v0, 0xc000000

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p11

    invoke-static/range {v1 .. v11}, Lcom/miui/networkassistant/utils/NotificationUtil;->showPendingIntent(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZLandroid/app/PendingIntent;)V

    return-void
.end method

.method public static showOperatorSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 19

    move/from16 v0, p3

    invoke-static/range {p3 .. p3}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/utils/NotificationUtil$16;

    invoke-direct {v2}, Lcom/miui/networkassistant/utils/NotificationUtil$16;-><init>()V

    const v3, 0x7f0804b3

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;->setIconRes(I)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "sim_slot_num_tag"

    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "bundle_key_from_other_task"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "key_back"

    invoke-virtual {v3, v5, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v5, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    move-object/from16 v7, p0

    invoke-static {v7, v5, v3}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v9

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v3, "TO_BUSINESS_HALL"

    invoke-virtual {v9, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v9, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v8, 0x0

    const v12, 0x7f080d8e

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_1
    move-object v15, v2

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x1

    move-object/from16 v7, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-static/range {v7 .. v18}, Lcom/miui/networkassistant/utils/NotificationUtil;->showNotification(Landroid/content/Context;ILandroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZIZ)V

    return-void
.end method

.method private static showPendingIntent(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IZZLcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;ZZLandroid/app/PendingIntent;)V
    .locals 3

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p0, p2, p8}, Lcom/miui/networkassistant/utils/NotificationUtil;->getNotificationPrefix(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p7}, Lcom/miui/networkassistant/utils/NotificationUtil;->getChannelByExtraBuilder(Lcom/miui/networkassistant/utils/NotificationUtil$IExtraBuilder;)Ljava/lang/String;

    move-result-object p7

    invoke-static {p0, p7}, Lcom/miui/networkassistant/utils/NotificationUtil;->createChannel(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, p7}, Lx4/e1;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/16 p7, 0x20

    invoke-virtual {p0, p7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p7, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p7

    invoke-virtual {p7, p5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p5

    invoke-virtual {p5, p6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p5

    invoke-virtual {p5, p4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p4

    invoke-virtual {p4, p10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 p6, 0x0

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    aput-object p2, p4, p6

    aput-object p3, p4, p5

    const-string p2, "%s:%s"

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string p2, "single"

    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-static {p0, p6}, Lrg/a;->e(Landroid/app/Notification;Z)V

    invoke-static {p0, p5}, Lrg/a;->c(Landroid/app/Notification;Z)V

    if-nez p9, :cond_1

    invoke-static {p0, p6}, Lrg/a;->f(Landroid/app/Notification;I)V

    :cond_1
    invoke-static {v0, p1, p0}, Lx4/v;->k(Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    return-void
.end method

.method private static showRightButton(Landroid/content/Context;Landroid/app/Notification$Builder;Landroid/content/Intent;Ljava/lang/CharSequence;I)V
    .locals 1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p2, p4}, Lcom/miui/networkassistant/utils/NotificationUtil;->getPendingIntent(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const p2, 0x7f080f3f

    invoke-virtual {p1, p2, p3, p0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x1

    const-string p3, "miui.showAction"

    invoke-virtual {p0, p3, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    :cond_0
    return-void
.end method
