.class public Lcom/miui/bubbles/controller/NotificationController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiBubbles.NotificationController"

.field private static sInstance:Lcom/miui/bubbles/controller/NotificationController;


# instance fields
.field private mBubbleController:Lcom/miui/bubbles/BubbleController;

.field private mBubbleUpManager:Lcom/miui/bubbles/utils/BubbleUpManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/miui/bubbles/utils/BubbleUpManager;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/utils/BubbleUpManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/bubbles/controller/NotificationController;->mBubbleUpManager:Lcom/miui/bubbles/utils/BubbleUpManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/bubbles/controller/NotificationController;
    .locals 2

    const-class v0, Lcom/miui/bubbles/controller/NotificationController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/bubbles/controller/NotificationController;->sInstance:Lcom/miui/bubbles/controller/NotificationController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/bubbles/controller/NotificationController;

    invoke-direct {v1, p0}, Lcom/miui/bubbles/controller/NotificationController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/bubbles/controller/NotificationController;->sInstance:Lcom/miui/bubbles/controller/NotificationController;

    :cond_0
    sget-object p0, Lcom/miui/bubbles/controller/NotificationController;->sInstance:Lcom/miui/bubbles/controller/NotificationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private sbnToBubbleEntry(Landroid/service/notification/StatusBarNotification;)Lcom/miui/bubbles/data/BubbleEntry;
    .locals 4

    iget-object v0, p0, Lcom/miui/bubbles/controller/NotificationController;->mBubbleController:Lcom/miui/bubbles/BubbleController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/miui/bubbles/BubbleController;->getBubblesWithPackageAndUserId(Ljava/lang/String;I)Lcom/miui/bubbles/Bubble;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/miui/bubbles/Bubble;->getBubbleEntry()Lcom/miui/bubbles/data/BubbleEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/bubbles/data/BubbleEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/miui/bubbles/data/BubbleEntry;->setSbn(Landroid/service/notification/StatusBarNotification;)V

    return-object v0

    :cond_3
    :goto_0
    return-object v1
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    const-string v0, "MiuiBubbles.NotificationController"

    const-string v1, "onNotificationPosted: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/bubbles/controller/NotificationController;->mBubbleUpManager:Lcom/miui/bubbles/utils/BubbleUpManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/bubbles/utils/BubbleUpManager;->shouldHeadUp(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/bubbles/controller/NotificationController;->sbnToBubbleEntry(Landroid/service/notification/StatusBarNotification;)Lcom/miui/bubbles/data/BubbleEntry;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/miui/bubbles/controller/NotificationController;->mBubbleController:Lcom/miui/bubbles/BubbleController;

    invoke-virtual {p2}, Lcom/miui/bubbles/BubbleController;->asBubbles()Lcom/miui/bubbles/MiuiBubbles;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/miui/bubbles/MiuiBubbles;->onNotificationEntryAdd(Lcom/miui/bubbles/data/BubbleEntry;)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotificationRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiBubbles.NotificationController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBubbleController(Lcom/miui/bubbles/BubbleController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/controller/NotificationController;->mBubbleController:Lcom/miui/bubbles/BubbleController;

    return-void
.end method
