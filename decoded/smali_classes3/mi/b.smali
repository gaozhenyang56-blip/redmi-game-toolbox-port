.class public Lmi/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile d:Lmi/b;

.field public static e:Z


# instance fields
.field private a:Landroid/content/Context;

.field private volatile b:Z

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmi/b;->b:Z

    new-instance v0, Lmi/b$a;

    invoke-direct {v0, p0}, Lmi/b$a;-><init>(Lmi/b;)V

    iput-object v0, p0, Lmi/b;->c:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lni/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lmi/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lmi/b;
    .locals 2

    const-class v0, Lmi/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmi/b;->d:Lmi/b;

    if-nez v1, :cond_0

    new-instance v1, Lmi/b;

    invoke-direct {v1, p0}, Lmi/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmi/b;->d:Lmi/b;

    :cond_0
    sget-object p0, Lmi/b;->d:Lmi/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-boolean v0, p0, Lmi/b;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmi/b;->b:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaomi.analytics.intent.DEBUG_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.analytics.intent.DEBUG_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.analytics.intent.STAGING_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.analytics.intent.STAGING_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lmi/b;->a:Landroid/content/Context;

    iget-object v2, p0, Lmi/b;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
