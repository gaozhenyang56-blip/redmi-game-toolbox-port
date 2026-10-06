.class public Lcom/miui/bubbles/services/BubblesNotificationListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiBubbles.NotificationController"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method public static configNotificationListener(Landroid/content/Context;)V
    .locals 5

    const-string v0, "MiuiBubbles.NotificationController"

    const-string v1, "configNotificationListener: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/miui/bubbles/services/BubblesNotificationListenerService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/bubbles/utils/BubbleUpManager;->isSupportBubbleUpNotification()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Lcom/miui/bubbles/services/b;->a(Landroid/app/NotificationManager;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2, v4}, Landroid/app/NotificationManager;->setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/miui/bubbles/utils/BubbleUpManager;->isSupportBubbleUpNotification()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0, v2, v1, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, "configNotificationListener: end"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 2

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    const-string v0, "MiuiBubbles.NotificationController"

    const-string v1, "onListenerConnected: ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onListenerDisconnected()V
    .locals 2

    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    const-string v0, "MiuiBubbles.NotificationController"

    const-string v1, "onListenerDisconnected: ..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-static {}, Lcom/miui/bubbles/services/BubblesNotificationHelper;->getInstance()Lcom/miui/bubbles/services/BubblesNotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/bubbles/services/BubblesNotificationHelper;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    invoke-static {}, Lcom/miui/bubbles/services/BubblesNotificationHelper;->getInstance()Lcom/miui/bubbles/services/BubblesNotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/bubbles/services/BubblesNotificationHelper;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method
