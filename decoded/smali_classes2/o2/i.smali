.class public Lo2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lo2/i;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo2/i;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lo2/i;->b:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lo2/i;
    .locals 2

    const-class v0, Lo2/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo2/i;->c:Lo2/i;

    if-nez v1, :cond_0

    new-instance v1, Lo2/i;

    invoke-direct {v1, p0}, Lo2/i;-><init>(Landroid/content/Context;)V

    sput-object v1, Lo2/i;->c:Lo2/i;

    :cond_0
    sget-object p0, Lo2/i;->c:Lo2/i;
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
.method public a(Landroid/net/wifi/WifiInfo;)V
    .locals 7

    :try_start_0
    const-string v0, "android.net.wifi.WifiManager$ActionListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lo2/i;->b:Landroid/net/wifi/WifiManager;

    const-string v2, "forget"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v6

    const/4 p1, 0x0

    aput-object p1, v0, v5

    invoke-static {v1, v2, v4, v0}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "WlanTrustList"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {v1, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public d(Landroid/net/wifi/WifiInfo;)Z
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "WlanTrustList"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public e(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lw2/w;)V
    .locals 2

    new-instance v0, Lcom/miui/guardprovider/WifiCheckObserver;

    iget-object v1, p0, Lo2/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/guardprovider/WifiCheckObserver;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Lcom/miui/guardprovider/WifiCheckObserver;->p8(Lw2/w;)V

    invoke-virtual {p2, p1, v0}, Lw2/w;->c(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)V

    const-string p1, "WifiCheckManager"

    const-string p2, "start wifi scan task ..."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f(Landroid/net/wifi/WifiInfo;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "WlanTrustList"

    invoke-static {v1, v0}, Lr4/a;->m(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v0}, Lr4/a;->s(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
