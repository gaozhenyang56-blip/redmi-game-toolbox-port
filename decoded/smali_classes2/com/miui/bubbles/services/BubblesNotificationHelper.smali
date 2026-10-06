.class public Lcom/miui/bubbles/services/BubblesNotificationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/bubbles/services/BubblesNotificationHelper$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BubblesNotificationHelper"


# instance fields
.field private iUiProcessBinder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/bubbles/IUiProcessBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveBubbleApps:Ljava/lang/String;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/bubbles/services/BubblesNotificationHelper$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/bubbles/services/BubblesNotificationHelper$1;-><init>(Lcom/miui/bubbles/services/BubblesNotificationHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper;->mContentObserver:Landroid/database/ContentObserver;

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "miui_bubbles_pinned_apps"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v5, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper;->mActiveBubbleApps:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/bubbles/services/BubblesNotificationHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/bubbles/services/BubblesNotificationHelper;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/bubbles/services/BubblesNotificationHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper;->mActiveBubbleApps:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/bubbles/services/BubblesNotificationHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper;->mActiveBubbleApps:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/bubbles/services/BubblesNotificationHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance()Lcom/miui/bubbles/services/BubblesNotificationHelper;
    .locals 1

    invoke-static {}, Lcom/miui/bubbles/services/BubblesNotificationHelper$InstanceHolder;->access$300()Lcom/miui/bubbles/services/BubblesNotificationHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper;->iUiProcessBinder:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper;->iUiProcessBinder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/bubbles/IUiProcessBinder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationPosted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BubblesNotificationHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/miui/bubbles/IUiProcessBinder;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNotificationPosted Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper;->mActiveBubbleApps:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/bubbles/settings/BubblesSettings;->getInstance(Landroid/content/Context;)Lcom/miui/bubbles/settings/BubblesSettings;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "onNotificationPosted"

    invoke-virtual {p1, p2, v0}, Lcom/miui/bubbles/settings/BubblesSettings;->notifyBubbleAppChanged(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    iget-object p2, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper;->iUiProcessBinder:Ljava/lang/ref/WeakReference;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/bubbles/IUiProcessBinder;

    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2, p1}, Lcom/miui/bubbles/IUiProcessBinder;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onNotificationRemoved Exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BubblesNotificationHelper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setUiProcessBinder(Lcom/miui/bubbles/IUiProcessBinder;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/bubbles/services/BubblesNotificationHelper;->iUiProcessBinder:Ljava/lang/ref/WeakReference;

    return-void
.end method
