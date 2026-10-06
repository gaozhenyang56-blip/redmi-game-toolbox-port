.class Lcom/miui/securityscan/scanner/CacheCheckManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/scanner/CacheCheckManager$CacheScanCallbackAdapter;
    }
.end annotation


# static fields
.field private static d:Lcom/miui/securityscan/scanner/CacheCheckManager;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/pm/PackageManager;

.field private c:Lo4/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/CacheCheckManager;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/CacheCheckManager;->b:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Lo4/a;->c(Landroid/content/Context;)Lo4/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/scanner/CacheCheckManager;->c:Lo4/a;

    return-void
.end method

.method static synthetic a(Lcom/miui/securityscan/scanner/CacheCheckManager;)Lo4/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/CacheCheckManager;->c:Lo4/a;

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/miui/securityscan/scanner/CacheCheckManager;
    .locals 2

    const-class v0, Lcom/miui/securityscan/scanner/CacheCheckManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/securityscan/scanner/CacheCheckManager;->d:Lcom/miui/securityscan/scanner/CacheCheckManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/securityscan/scanner/CacheCheckManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/securityscan/scanner/CacheCheckManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/securityscan/scanner/CacheCheckManager;->d:Lcom/miui/securityscan/scanner/CacheCheckManager;

    :cond_0
    sget-object p0, Lcom/miui/securityscan/scanner/CacheCheckManager;->d:Lcom/miui/securityscan/scanner/CacheCheckManager;
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
.method public c(Lcom/miui/securityscan/scanner/k$m;Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;)V
    .locals 2

    const-string v0, "CacheCheckManager"

    const-string v1, "startScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/securityscan/scanner/CacheCheckManager$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/securityscan/scanner/CacheCheckManager$a;-><init>(Lcom/miui/securityscan/scanner/CacheCheckManager;Lcom/miui/optimizecenter/garbagecheck/IGarbageScanCallback;Lcom/miui/securityscan/scanner/k$m;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
