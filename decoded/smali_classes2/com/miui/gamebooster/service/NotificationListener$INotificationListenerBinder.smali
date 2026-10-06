.class public Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;
.super Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/NotificationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "INotificationListenerBinder"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/NotificationListener;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/service/NotificationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;->a:Lcom/miui/gamebooster/service/NotificationListener;

    invoke-direct {p0}, Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public O2(Lcom/miui/gamebooster/service/INotificationListenerCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;->a:Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v0}, Lcom/miui/gamebooster/service/NotificationListener;->c(Lcom/miui/gamebooster/service/NotificationListener;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;->a:Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v1}, Lcom/miui/gamebooster/service/NotificationListener;->c(Lcom/miui/gamebooster/service/NotificationListener;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public Z2(Lcom/miui/gamebooster/service/INotificationListenerCallback;)V
    .locals 2

    const-string v0, "GBNotificationListener"

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;->a:Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v0}, Lcom/miui/gamebooster/service/NotificationListener;->c(Lcom/miui/gamebooster/service/NotificationListener;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/service/NotificationListener$INotificationListenerBinder;->a:Lcom/miui/gamebooster/service/NotificationListener;

    invoke-static {v1}, Lcom/miui/gamebooster/service/NotificationListener;->c(Lcom/miui/gamebooster/service/NotificationListener;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
