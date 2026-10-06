.class public Lcom/miui/permcenter/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String; = "i"

.field private static volatile k:Lcom/miui/permcenter/i;

.field private static l:Landroid/os/Binder;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

.field private c:Landroid/os/Handler;

.field private final d:I

.field private final e:I

.field private final f:Landroid/net/Uri;

.field private final g:Lsc/a;

.field private final h:Lcom/miui/gamebooster/service/NotificationListenerCallback;

.field private final i:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/permcenter/i;->d:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/permcenter/i;->e:I

    const-string v2, "miui_optimization"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/permcenter/i;->f:Landroid/net/Uri;

    new-instance v3, Lcom/miui/permcenter/i$b;

    invoke-direct {v3, p0}, Lcom/miui/permcenter/i$b;-><init>(Lcom/miui/permcenter/i;)V

    iput-object v3, p0, Lcom/miui/permcenter/i;->h:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    new-instance v3, Lcom/miui/permcenter/i$c;

    invoke-direct {v3, p0}, Lcom/miui/permcenter/i$c;-><init>(Lcom/miui/permcenter/i;)V

    iput-object v3, p0, Lcom/miui/permcenter/i;->i:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    invoke-static {}, Lxc/q;->c()Landroid/os/Handler;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/permcenter/i;->c:Landroid/os/Handler;

    new-instance v4, Lsc/a;

    iget-object v5, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lsc/a;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/permcenter/i;->g:Lsc/a;

    iget-object v4, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    const-class v7, Lcom/miui/gamebooster/service/NotificationListener;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v6

    invoke-static {v4, v5, v3, v0, v6}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    invoke-static {p1}, Lcom/miui/permcenter/q;->s(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/miui/permcenter/n;->j(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/permcenter/o;->A()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Ldb/c;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/miui/permcenter/n;->r()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-static {p1, v3}, Lmc/c;->y(Landroid/content/Context;Z)V

    :cond_0
    invoke-static {p1}, Lkc/q;->G(Landroid/content/Context;)Lkc/q;

    :cond_1
    iget-object v3, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    invoke-static {v3}, Ljg/a;->a(Landroid/content/Context;)V

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_4

    sget-boolean v3, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/miui/permcenter/o;->k()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    if-eqz v3, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_3

    invoke-static {p1}, Lcom/miui/permcenter/q;->y(Landroid/content/Context;)V

    :cond_3
    iget-object v3, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/permcenter/i;->c:Landroid/os/Handler;

    invoke-static {v3, v4}, Lx4/r1;->i(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {p0, p1}, Lcom/miui/permcenter/i;->p(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Lcom/miui/permcenter/i$a;

    iget-object v5, p0, Lcom/miui/permcenter/i;->c:Landroid/os/Handler;

    invoke-direct {v4, p0, v5, p1}, Lcom/miui/permcenter/i$a;-><init>(Lcom/miui/permcenter/i;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v3, v2, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    iget-object p1, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/permcenter/permissions/acrossterminal/b;->c(Landroid/content/Context;)V

    sget-boolean p1, Lcom/miui/permcenter/o;->z:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lx4/k1;->f(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/permcenter/i;->c:Landroid/os/Handler;

    invoke-static {p1, v1}, Lx4/k1;->n(Landroid/content/Context;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/permcenter/i;->c:Landroid/os/Handler;

    invoke-static {p1, v1}, Lx4/k1;->m(Landroid/content/Context;Landroid/os/Handler;)V

    iget-object p1, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lx4/k1;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lx4/k1;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lx4/k1;->r(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_1

    :cond_5
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_6

    invoke-static {}, Lx4/z1;->r()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lx4/k1;->f(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lx4/k1;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    invoke-static {p1}, Lx4/k1;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lx4/k1;->t(ZLandroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/permcenter/i;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/miui/permcenter/i;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/i;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/permcenter/i;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/permcenter/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/permcenter/i;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic e(Lcom/miui/permcenter/i;)Lsc/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/i;->g:Lsc/a;

    return-object p0
.end method

.method static synthetic f(Landroid/service/notification/StatusBarNotification;)I
    .locals 0

    invoke-static {p0}, Lcom/miui/permcenter/i;->m(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/miui/permcenter/i;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/i;->b:Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/permcenter/i;Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;)Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/i;->b:Lcom/miui/gamebooster/service/ISecurityCenterNotificationListener;

    return-object p1
.end method

.method static synthetic i(Lcom/miui/permcenter/i;)Lcom/miui/gamebooster/service/NotificationListenerCallback;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/i;->h:Lcom/miui/gamebooster/service/NotificationListenerCallback;

    return-object p0
.end method

.method private j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10

    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "notification"

    aput-object v7, v6, v5

    invoke-static {v1, v2, v4, v6}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    const-string v2, "android.app.INotificationManager$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "asInterface"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v5

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v5

    invoke-static {v2, v4, v6, v7}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x1d

    const-string v6, "cancelNotificationWithTag"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-le v2, v4, :cond_0

    const/4 v2, 0x5

    :try_start_1
    new-array v4, v2, [Ljava/lang/Class;

    aput-object v0, v4, v5

    aput-object v0, v4, v3

    aput-object v0, v4, v8

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v4, v7

    aput-object v0, v4, v9

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    aput-object p3, v0, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v9

    invoke-static {v1, v6, v4, v0}, Lbh/f;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array p1, v9, [Ljava/lang/Class;

    aput-object v0, p1, v5

    aput-object v0, p1, v3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p1, v8

    aput-object v0, p1, v7

    new-array v0, v9, [Ljava/lang/Object;

    aput-object p2, v0, v5

    aput-object p3, v0, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v8

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v7

    invoke-static {v1, v6, p1, v0}, Lbh/f;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static declared-synchronized l()Landroid/os/Binder;
    .locals 3

    const-class v0, Lcom/miui/permcenter/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/permcenter/i;->l:Landroid/os/Binder;

    if-nez v1, :cond_0

    sget-object v1, Lcom/miui/permcenter/i;->j:Ljava/lang/String;

    const-string v2, "sBinder is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    sput-object v1, Lcom/miui/permcenter/i;->l:Landroid/os/Binder;

    :cond_0
    sget-object v1, Lcom/miui/permcenter/i;->l:Landroid/os/Binder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static m(Landroid/service/notification/StatusBarNotification;)I
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    :try_start_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "getUid"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3, v1, v4}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/permcenter/i;->o(Landroid/content/Context;)V

    return-void
.end method

.method private static o(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/miui/permcenter/i;->k:Lcom/miui/permcenter/i;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/permcenter/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/permcenter/i;->k:Lcom/miui/permcenter/i;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/permcenter/i;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/permcenter/i;->k:Lcom/miui/permcenter/i;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private p(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/securitycenter/service/AntiTrackCloudService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public k(ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/i;->a:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v1, 0x272a

    invoke-static {v0, v1, p1, p2}, Landroid/app/AppOpsManagerCompat;->noteOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result p1

    sget-object p2, Lcom/miui/permcenter/i;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
