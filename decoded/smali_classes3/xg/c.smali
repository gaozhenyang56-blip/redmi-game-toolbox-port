.class public Lxg/c;
.super Lxg/a;
.source "SourceFile"


# static fields
.field private static a:Lxg/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lxg/a;-><init>()V

    return-void
.end method

.method public static declared-synchronized c()Lxg/c;
    .locals 2

    const-class v0, Lxg/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lxg/c;->a:Lxg/c;

    if-nez v1, :cond_0

    new-instance v1, Lxg/c;

    invoke-direct {v1}, Lxg/c;-><init>()V

    sput-object v1, Lxg/c;->a:Lxg/c;

    :cond_0
    sget-object v1, Lxg/c;->a:Lxg/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.ActivityManagerNative"

    invoke-static {v1}, Lbh/d$a;->d(Ljava/lang/String;)Lbh/d$a;

    move-result-object v1

    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lbh/d$a;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lbh/d$a;->l()Lbh/d$a;

    move-result-object v1

    const-string v2, "finishActivity"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v7, Landroid/content/Intent;

    const/4 v8, 0x2

    aput-object v7, v4, v8

    const/4 v7, 0x3

    aput-object v5, v4, v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    aput-object p3, v3, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-virtual {v1, v2, v4, v3}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lbh/d$a;->a()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "IActivityManager_lte24"

    const-string p3, " finishActivity error "

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
