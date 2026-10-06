.class public Lcom/xiaomi/continuity/messagecenter/PublisherManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/continuity/messagecenter/PublisherManager$DeathCallback;,
        Lcom/xiaomi/continuity/messagecenter/PublisherManager$IPublishResult;,
        Lcom/xiaomi/continuity/messagecenter/PublisherManager$SubscriberListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "message-center-PublisherManager"

.field private static sInstance:Lcom/xiaomi/continuity/messagecenter/PublisherManager;


# instance fields
.field private isServiceAlive:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentPkg:Ljava/lang/String;

.field private mDeathCallback:Lcom/xiaomi/continuity/messagecenter/PublisherManager$DeathCallback;

.field private mService:Lcom/xiaomi/continuity/messagecenter/IMessageCenter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->isServiceAlive:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mDeathCallback:Lcom/xiaomi/continuity/messagecenter/PublisherManager$DeathCallback;

    if-nez p1, :cond_0

    const-string p1, "message-center-PublisherManager"

    const-string v0, "PublisherManager get context null"

    invoke-static {p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mCurrentPkg:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->initRemoteService(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/xiaomi/continuity/messagecenter/PublisherManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->isServiceAlive:Z

    return p1
.end method

.method public static synthetic access$102(Lcom/xiaomi/continuity/messagecenter/PublisherManager;Lcom/xiaomi/continuity/messagecenter/IMessageCenter;)Lcom/xiaomi/continuity/messagecenter/IMessageCenter;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mService:Lcom/xiaomi/continuity/messagecenter/IMessageCenter;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/xiaomi/continuity/messagecenter/PublisherManager;)Lcom/xiaomi/continuity/messagecenter/PublisherManager$DeathCallback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mDeathCallback:Lcom/xiaomi/continuity/messagecenter/PublisherManager$DeathCallback;

    return-object p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/xiaomi/continuity/messagecenter/PublisherManager;
    .locals 2

    const-class v0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->sInstance:Lcom/xiaomi/continuity/messagecenter/PublisherManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/continuity/messagecenter/PublisherManager;

    invoke-direct {v1, p0}, Lcom/xiaomi/continuity/messagecenter/PublisherManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->sInstance:Lcom/xiaomi/continuity/messagecenter/PublisherManager;

    :cond_0
    sget-object p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->sInstance:Lcom/xiaomi/continuity/messagecenter/PublisherManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initRemoteService(Landroid/content/Context;)V
    .locals 5

    const-string v0, "message-center-PublisherManager"

    if-nez p1, :cond_0

    const-string p1, "initRemoteService error: context is null"

    invoke-static {v0, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-lez v2, :cond_2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1}, Lcom/xiaomi/continuity/ContinuityServiceManager;->getServiceManager(Landroid/content/Context;)Lcom/xiaomi/continuity/ContinuityServiceManager;

    move-result-object v3

    const-string v4, "continuty_message_center"

    invoke-virtual {v3, v4}, Lcom/xiaomi/continuity/ContinuityServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/xiaomi/continuity/messagecenter/IMessageCenter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/continuity/messagecenter/IMessageCenter;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mService:Lcom/xiaomi/continuity/messagecenter/IMessageCenter;

    if-eqz v3, :cond_1

    const-string p1, "mService is alive,  break."

    invoke-static {v0, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "initRemoteService error : "

    invoke-static {v4}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mService:Lcom/xiaomi/continuity/messagecenter/IMessageCenter;

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->isServiceAlive:Z

    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v1, Lcom/xiaomi/continuity/messagecenter/PublisherManager$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/continuity/messagecenter/PublisherManager$1;-><init>(Lcom/xiaomi/continuity/messagecenter/PublisherManager;)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v1, "initRemoteService e : "

    invoke-static {v1}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    const-string p1, "PublisherManager get mService error"

    :goto_2
    invoke-static {v0, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public declared-synchronized addSubscribeListener(Ljava/lang/String;Lcom/xiaomi/continuity/messagecenter/PublisherManager$SubscriberListener;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->isServiceAlive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->initRemoteService(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mService:Lcom/xiaomi/continuity/messagecenter/IMessageCenter;

    if-nez v0, :cond_1

    const-string p1, "message-center-PublisherManager"

    const-string p2, "subscribeMessage error : mService is null"

    invoke-static {p1, p2}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const p1, 0x125368

    :goto_0
    monitor-exit p0

    return p1

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mCurrentPkg:Ljava/lang/String;

    new-instance v2, Lcom/xiaomi/continuity/messagecenter/PublisherManager$2;

    invoke-direct {v2, p0, p2}, Lcom/xiaomi/continuity/messagecenter/PublisherManager$2;-><init>(Lcom/xiaomi/continuity/messagecenter/PublisherManager;Lcom/xiaomi/continuity/messagecenter/PublisherManager$SubscriberListener;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/xiaomi/continuity/messagecenter/IMessageCenter;->addSubscribeListener(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/messagecenter/ISubscriberListener;)I

    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "subscribeMessage RemoteException : "

    invoke-static {p2}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "message-center-PublisherManager"

    invoke-static {p2, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const p1, 0x125750

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized publish(Ljava/lang/String;Lcom/xiaomi/continuity/messagecenter/MessageOptions;Lcom/xiaomi/continuity/messagecenter/MessageData;Lcom/xiaomi/continuity/messagecenter/PublisherManager$IPublishResult;)I
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->isServiceAlive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->initRemoteService(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mService:Lcom/xiaomi/continuity/messagecenter/IMessageCenter;

    if-nez v0, :cond_1

    const-string p1, "message-center-PublisherManager"

    const-string p2, "message-center sdk publishMessage error : mService is null"

    invoke-static {p1, p2}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const p1, 0x125368

    :goto_0
    monitor-exit p0

    return p1

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mCurrentPkg:Ljava/lang/String;

    new-instance v5, Lcom/xiaomi/continuity/messagecenter/PublisherManager$3;

    invoke-direct {v5, p0, p4}, Lcom/xiaomi/continuity/messagecenter/PublisherManager$3;-><init>(Lcom/xiaomi/continuity/messagecenter/PublisherManager;Lcom/xiaomi/continuity/messagecenter/PublisherManager$IPublishResult;)V

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/continuity/messagecenter/IMessageCenter;->publish(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/continuity/messagecenter/MessageOptions;Lcom/xiaomi/continuity/messagecenter/MessageData;Lcom/xiaomi/continuity/messagecenter/PublishResult;)I

    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    :try_start_3
    const-string p2, "message-center sdk publishMessage RemoteException : "

    invoke-static {p2}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "message-center-PublisherManager"

    invoke-static {p2, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const p1, 0x125750

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerDeathCallback(Lcom/xiaomi/continuity/messagecenter/PublisherManager$DeathCallback;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mDeathCallback:Lcom/xiaomi/continuity/messagecenter/PublisherManager$DeathCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeSubscribeListener(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unSubscribe :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "message-center-PublisherManager"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->isServiceAlive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->initRemoteService(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mService:Lcom/xiaomi/continuity/messagecenter/IMessageCenter;

    if-nez v0, :cond_1

    const-string p1, "message-center-PublisherManager"

    const-string v0, "subscribeMessage error : mService is null"

    invoke-static {p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const p1, 0x125368

    :goto_0
    monitor-exit p0

    return p1

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mCurrentPkg:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/continuity/messagecenter/IMessageCenter;->removeSubscribeListener(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "unSubscribe e: "

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "message-center-PublisherManager"

    invoke-static {v0, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const p1, 0x125750

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unPublish(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->isServiceAlive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->initRemoteService(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mService:Lcom/xiaomi/continuity/messagecenter/IMessageCenter;

    if-nez v0, :cond_1

    const-string p1, "message-center-PublisherManager"

    const-string v0, "subscribeMessage error : mService is null"

    invoke-static {p1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const p1, 0x125368

    :goto_0
    monitor-exit p0

    return p1

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mCurrentPkg:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/xiaomi/continuity/messagecenter/IMessageCenter;->unPublish(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "unPublishMessage e : "

    invoke-static {v0}, Lcom/xiaomi/continuity/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "message-center-PublisherManager"

    invoke-static {v0, p1}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const p1, 0x125750

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unbindService()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mService:Lcom/xiaomi/continuity/messagecenter/IMessageCenter;

    const-string v1, "message-center-PublisherManager"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->isServiceAlive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->isServiceAlive:Z

    goto :goto_0

    :cond_0
    const-string v0, "check it, isServiceAlive is exception"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/continuity/ContinuityServiceManager;->getServiceManager(Landroid/content/Context;)Lcom/xiaomi/continuity/ContinuityServiceManager;

    move-result-object v0

    const-string v1, "continuty_message_center"

    invoke-virtual {v0, v1}, Lcom/xiaomi/continuity/ContinuityServiceManager;->unbindService(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/continuity/messagecenter/PublisherManager;->mService:Lcom/xiaomi/continuity/messagecenter/IMessageCenter;

    goto :goto_1

    :cond_1
    const-string v0, "mService is null or died, not need unbind"

    invoke-static {v1, v0}, Lcom/xiaomi/continuity/netbus/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
