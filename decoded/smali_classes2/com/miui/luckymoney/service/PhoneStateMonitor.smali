.class public Lcom/miui/luckymoney/service/PhoneStateMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMonitor:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/luckymoney/service/PhoneStateMonitor$1;

    invoke-direct {v0}, Lcom/miui/luckymoney/service/PhoneStateMonitor$1;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mMonitor:Landroid/telephony/PhoneStateListener;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    sget-object v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static declared-synchronized isPhoneBusy(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;

    monitor-enter v0

    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerListener(Landroid/telephony/PhoneStateListener;)V
    .locals 3

    const-class v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized startMonitor(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;

    monitor-enter v0

    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mMonitor:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {p0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized stopMonitor(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;

    monitor-enter v0

    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mMonitor:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized unregisterListener(Landroid/telephony/PhoneStateListener;)V
    .locals 2

    const-class v0, Lcom/miui/luckymoney/service/PhoneStateMonitor;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/luckymoney/service/PhoneStateMonitor;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
