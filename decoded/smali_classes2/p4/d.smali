.class public Lp4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "d"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lp4/i;)Ljava/io/File;
    .locals 7

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 v0, -0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const-string v3, "Content-Disposition"

    invoke-virtual {p0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lp4/d;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contentVal : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", responseCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_1

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, ".*filename="

    const-string v5, ""

    invoke-virtual {v3, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lbl/d;->b(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p2, v0, v2}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {v4}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v3

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_0

    :cond_1
    invoke-static {p2, v0, v2}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {v1}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {p2, v0, v2}, Lp4/h;->a(Lp4/i;II)V

    invoke-static {v1}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p1
.end method

.method public static b(Landroid/content/Context;)Lp4/d$a;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    sget-object p0, Lp4/d$a;->g:Lp4/d$a;

    return-object p0

    :cond_0
    sget-object p0, Lp4/d$a;->e:Lp4/d$a;

    return-object p0

    :cond_1
    sget-object p0, Lp4/d$a;->f:Lp4/d$a;

    return-object p0

    :cond_2
    sget-object p0, Lp4/d$a;->c:Lp4/d$a;

    return-object p0

    :cond_3
    sget-object p0, Lp4/d$a;->d:Lp4/d$a;

    return-object p0

    :cond_4
    invoke-static {p0}, Lp4/d;->g(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lp4/d$a;->h:Lp4/d$a;

    return-object p0

    :cond_5
    sget-object p0, Lp4/d$a;->b:Lp4/d$a;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "getMobileDataEnabled"

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lmiui/securitycenter/NetworkUtils;->getMobileIface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lp4/d;->b(Landroid/content/Context;)Lp4/d$a;

    move-result-object p0

    sget-object v0, Lp4/d$a;->d:Lp4/d$a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lp4/d;->b(Landroid/content/Context;)Lp4/d$a;

    move-result-object p0

    sget-object v0, Lp4/d$a;->b:Lp4/d$a;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "isWifiApEnabled"

    const/4 v2, 0x0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lp4/d;->b(Landroid/content/Context;)Lp4/d$a;

    move-result-object p0

    sget-object v0, Lp4/d$a;->c:Lp4/d$a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    return p0
.end method
