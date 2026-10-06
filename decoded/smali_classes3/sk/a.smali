.class public Lsk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lsk/a;


# instance fields
.field private final a:Landroid/net/ConnectivityManager;

.field private final b:Landroid/net/wifi/WifiManager;

.field private volatile c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lsk/a;->a:Landroid/net/ConnectivityManager;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lsk/a;->b:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lsk/a;
    .locals 2

    const-class v0, Lsk/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/a;->d:Lsk/a;

    if-nez v1, :cond_0

    new-instance v1, Lsk/a;

    invoke-direct {v1, p0}, Lsk/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lsk/a;->d:Lsk/a;

    :cond_0
    sget-object p0, Lsk/a;->d:Lsk/a;
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
.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lsk/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsk/a;->b:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lsk/a;->c:Ljava/lang/String;

    :cond_1
    return-object v0
.end method
