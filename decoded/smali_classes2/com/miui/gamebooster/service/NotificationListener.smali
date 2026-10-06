.class public Lcom/miui/gamebooster/service/NotificationListener;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;

.field private b:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/miui/gamebooster/service/INotificationListenerCallback;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/service/notification/NotificationListenerService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->b:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/miui/gamebooster/service/NotificationListener$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/NotificationListener$a;-><init>(Lcom/miui/gamebooster/service/NotificationListener;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->c:Landroid/service/notification/NotificationListenerService;

    return-void
.end method

.method static synthetic a(Lcom/miui/gamebooster/service/NotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/NotificationListener;->d(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic b(Lcom/miui/gamebooster/service/NotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/NotificationListener;->e(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic c(Lcom/miui/gamebooster/service/NotificationListener;)Landroid/os/RemoteCallbackList;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/service/NotificationListener;->b:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method private d(Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/service/NotificationListener;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :try_start_1
    iget-object v2, p0, Lcom/miui/gamebooster/service/NotificationListener;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/service/INotificationListenerCallback;

    invoke-interface {v2, p1}, Lcom/miui/gamebooster/service/INotificationListenerCallback;->onNotificationPostedCallBack(Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "GBNotificationListener"

    const-string v4, "onQueryCouponsResult. an exception occurred!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/service/NotificationListener;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private e(Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/service/NotificationListener;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    :try_start_1
    iget-object v2, p0, Lcom/miui/gamebooster/service/NotificationListener;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/service/INotificationListenerCallback;

    invoke-interface {v2, p1}, Lcom/miui/gamebooster/service/INotificationListenerCallback;->onNotificationRemovedCallBack(Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "GBNotificationListener"

    const-string v4, "onQueryCouponsResult. an exception occurred!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/service/NotificationListener;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "GBNotificationListener"

    const-string v0, "return onBinder"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/NotificationListener;->a:Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 10

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;-><init>(Lcom/miui/gamebooster/service/NotificationListener;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener;->a:Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;

    :try_start_0
    const-class v0, Landroid/service/notification/NotificationListenerService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/NotificationListener;->c:Landroid/service/notification/NotificationListenerService;

    const-string v2, "registerAsSystemService"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/content/ComponentName;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v7

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {v0, v1, v2, v4, v3}, Lbh/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GameBoosterReflectUtils"

    const-string v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 5

    :try_start_0
    const-class v0, Landroid/service/notification/NotificationListenerService;

    iget-object v1, p0, Lcom/miui/gamebooster/service/NotificationListener;->c:Landroid/service/notification/NotificationListenerService;

    const-string v2, "unregisterAsSystemService"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lbh/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GameBoosterReflectUtils"

    const-string v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
