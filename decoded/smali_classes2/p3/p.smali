.class public Lp3/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lp3/p;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getService"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Object;

    const-string v6, "package"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v3, v4}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string v1, "android.content.pm.IPackageManager$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "asInterface"

    new-array v4, v2, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v3, v4, v2}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lp3/p;->a:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "XspaceHelper"

    const-string v2, "XspaceHelper: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static a()Lp3/p;
    .locals 2

    sget-object v0, Lp3/p;->b:Lp3/p;

    if-nez v0, :cond_1

    const-class v0, Lp3/p;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp3/p;->b:Lp3/p;

    if-nez v1, :cond_0

    new-instance v1, Lp3/p;

    invoke-direct {v1}, Lp3/p;-><init>()V

    sput-object v1, Lp3/p;->b:Lp3/p;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lp3/p;->b:Lp3/p;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lp3/p;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {v0, p1}, Ltg/a;->g(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
