.class public Lw2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "w"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/wifi/WifiInfo;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw2/w;->c:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lw2/w;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Landroid/net/wifi/WifiInfo;
    .locals 1

    iget-object v0, p0, Lw2/w;->b:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lw2/w;->c:Z

    return v0
.end method

.method public c(Lcom/miui/guardprovider/aidl/IAntiVirusServer;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)V
    .locals 1

    const-string v0, "TENCENT"

    :try_start_0
    invoke-interface {p1, v0, p2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->C2(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)I

    invoke-interface {p1, v0, p2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->O3(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)I

    invoke-interface {p1, v0, p2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->K(Ljava/lang/String;Lcom/miui/guardprovider/aidl/IWifiDetectObserver;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lw2/w;->d:Ljava/lang/String;

    const-string v0, "error when start wifi detect !"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lw2/w;->c:Z

    return-void
.end method

.method public e(Landroid/net/wifi/WifiInfo;)V
    .locals 0

    iput-object p1, p0, Lw2/w;->b:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lw2/w;

    if-eqz v0, :cond_0

    check-cast p1, Lw2/w;

    iget-object p1, p1, Lw2/w;->b:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lw2/w;->b:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
