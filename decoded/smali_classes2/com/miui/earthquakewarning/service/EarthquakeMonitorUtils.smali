.class public Lcom/miui/earthquakewarning/service/EarthquakeMonitorUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ACTION_REQUEST_WAKE:Ljava/lang/String; = "com.miui.powerkeeper_request_wake"

.field private static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.miui.powerkeeper"

.field private static final REASON_DESK_CLOCK:I = 0x1

.field private static final SP_EXIT_SLEEP_MODE_TIME:Ljava/lang/String; = "EXIT_SLEEP_MODE_TIME"

.field private static final TAG:Ljava/lang/String; = "EarthquakeMonitorUtils"

.field private static final TIME_OUT_MILLS:I = 0x4650


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLogData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static exitSleepMode(Landroid/content/Context;)V
    .locals 6

    const-string v0, "EarthquakeMonitorUtils"

    const-string v1, "EXIT_SLEEP_MODE_TIME"

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x927c0

    cmp-long v2, v4, v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lr4/a;->q(Ljava/lang/String;J)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.powerkeeper_request_wake"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "reason"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.miui.powerkeeper"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p0, "request exit sleep mode"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exitSleepMode time="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorUtils;->addLogData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitSleepMode error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exitSleepMode error time="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/earthquakewarning/service/EarthquakeMonitorUtils;->addLogData(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static uploadData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "5cggc678-cddf-4269-ab73-780174cvfba3"

    invoke-static {p1, v2}, Leg/j;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v2, "POST"

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {p0, v2, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {p0, v2, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {p1}, Leg/j;->h(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    const/16 v2, 0x4650

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v3, 0x12c

    if-ge p1, v3, :cond_3

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance p1, Ljava/io/InputStreamReader;

    invoke-direct {p1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lbl/e;->c(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {p1}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {p0}, Lbl/e;->b(Ljava/io/InputStream;)V

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v6, v2

    move-object v2, p0

    move-object p0, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v3, v1

    :goto_2
    move-object v1, v2

    move-object v2, p0

    move-object p0, v0

    goto/16 :goto_6

    :catch_1
    move-exception v3

    move-object v6, v2

    move-object v2, p0

    move-object p0, v3

    move-object v3, v1

    :goto_3
    move-object v1, v6

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v3, v1

    move-object v1, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v3

    goto/16 :goto_6

    :catch_2
    move-exception p1

    move-object v3, v1

    move-object v1, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v3

    goto :goto_4

    :cond_3
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP Request is not success, Response code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    move-object p1, v1

    move-object v3, p1

    move-object v1, v2

    move-object v2, v3

    goto :goto_6

    :catch_3
    move-exception p0

    move-object p1, v1

    move-object v3, p1

    move-object v1, v2

    move-object v2, v3

    goto :goto_4

    :catchall_4
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    move-object v3, v2

    goto :goto_6

    :catch_4
    move-exception p0

    move-object p1, v1

    move-object v2, p1

    move-object v3, v2

    :goto_4
    :try_start_6
    const-string v4, "EarthquakeMonitorUtils"

    const-string v5, "uploadData exception: "

    invoke-static {v4, v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    invoke-static {v1}, Lbl/e;->c(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {p1}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v2}, Lbl/e;->b(Ljava/io/InputStream;)V

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_5
    move-exception p0

    :goto_6
    invoke-static {v1}, Lbl/e;->c(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {p1}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v2}, Lbl/e;->b(Ljava/io/InputStream;)V

    throw p0
.end method
