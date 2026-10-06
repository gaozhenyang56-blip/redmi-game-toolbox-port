.class public Lme/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/c$c;,
        Lme/c$b;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/content/SharedPreferences;

.field private c:Lme/c$c;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lme/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lme/c;->e:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lme/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lme/c;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lme/c;)Landroid/content/SharedPreferences;
    .locals 0

    invoke-direct {p0}, Lme/c;->i()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lme/c;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lme/c;->n(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic d(Lme/c;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0}, Lme/c;->f()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method private e(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private f()Landroid/os/Handler;
    .locals 3

    iget-object v0, p0, Lme/c;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "ChargeReporter"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lme/c;->a:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lme/c;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public static g()Lme/c;
    .locals 1

    invoke-static {}, Lme/c$b;->a()Lme/c;

    move-result-object v0

    return-object v0
.end method

.method private h()Lme/c$c;
    .locals 2

    iget-object v0, p0, Lme/c;->c:Lme/c$c;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lme/c$c;->c(Lme/c$c;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lme/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lme/c$c;-><init>(Lme/c;Lme/c$a;)V

    iput-object v0, p0, Lme/c;->c:Lme/c$c;

    :cond_1
    iget-object v0, p0, Lme/c;->c:Lme/c$c;

    return-object v0
.end method

.method private i()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lme/c;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "pc_charge_report"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lme/c;->b:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lme/c;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private j(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "biz_id=charge_stat&timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string p2, "MD5"

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->update([B)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string p2, "%1$032X"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get sign failed. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ChargeReporter"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    :goto_0
    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private l(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x3a98

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    return-object p1
.end method

.method private n(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/powercenter/utils/ChargeInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "upload failed. "

    const-string v1, "status"

    const-string v2, "ChargeReporter"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v6, "biz_id"

    const-string v7, "charge_stat"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "timestamp"

    invoke-virtual {v5, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "sign"

    invoke-direct {p0, v3, v4}, Lme/c;->j(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device"

    sget-object v4, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "capacity"

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v4

    invoke-static {v4}, Lme/w;->g(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/utils/ChargeInfo;

    invoke-virtual {v4}, Lcom/miui/powercenter/utils/ChargeInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string p1, "charge_data"

    invoke-virtual {v5, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x0

    :try_start_1
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://data.sec.miui.com/data/chargeV2"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lme/c;->l(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v3

    const-string v4, "Content-Type"

    const-string v6, "application/json; charset=UTF-8"

    invoke-virtual {v3, v4, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_4

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 p1, 0x1000

    :try_start_3
    new-array p1, p1, [B

    :goto_2
    invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "upload success."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload failed. status = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    :goto_3
    move-object p1, v3

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v4, p1

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v4, p1

    goto :goto_6

    :cond_4
    move-object v4, p1

    :goto_4
    invoke-direct {p0, p1}, Lme/c;->e(Ljava/io/Closeable;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v3, p1

    move-object v4, v3

    :goto_5
    move-object p1, v0

    goto :goto_9

    :catch_3
    move-exception v1

    move-object v3, p1

    move-object v4, v3

    :goto_6
    move-object p1, v1

    :goto_7
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-direct {p0, v3}, Lme/c;->e(Ljava/io/Closeable;)V

    :goto_8
    invoke-direct {p0, v4}, Lme/c;->e(Ljava/io/Closeable;)V

    return-void

    :catchall_2
    move-exception p1

    :goto_9
    invoke-direct {p0, v3}, Lme/c;->e(Ljava/io/Closeable;)V

    invoke-direct {p0, v4}, Lme/c;->e(Ljava/io/Closeable;)V

    throw p1
.end method


# virtual methods
.method public k(ZI)V
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lme/c;->h()Lme/c$c;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lme/c$c;->b(Lme/c$c;ZI)V

    return-void
.end method

.method public m(Ljava/lang/Runnable;)V
    .locals 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lme/c;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lme/c$a;

    invoke-direct {v1, p0, p1}, Lme/c$a;-><init>(Lme/c;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    :goto_0
    return-void
.end method
