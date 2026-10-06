.class public Ln9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;Lp4/i;)Ljava/lang/String;
    .locals 10

    const-string v0, "CloudUpdate"

    invoke-static {}, Lef/x;->z()Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5

    const/4 p0, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    const-string v5, "use HTTPS protocol"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :goto_0
    const/16 v5, 0x2710

    :try_start_4
    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v5, "GET"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_3

    const/16 v6, 0x800

    :try_start_5
    new-array v7, v6, [B

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    :try_start_7
    invoke-virtual {v8, v7, v4, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, p0, :cond_2

    invoke-virtual {v9, v7, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v2, p0

    move-object v3, v8

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v1

    move p0, v5

    goto/16 :goto_a

    :catch_0
    move-object v3, v1

    move p0, v5

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v9, v3

    goto :goto_2

    :catch_1
    move-object v9, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v8, v3

    move-object v9, v8

    :goto_2
    move p0, v5

    goto :goto_6

    :catch_2
    move-object v8, v3

    move-object v9, v8

    :goto_3
    move p0, v5

    goto :goto_7

    :cond_3
    move-object v9, v3

    :goto_4
    invoke-static {p1, v5, v4}, Lp4/h;->a(Lp4/i;II)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {v3}, Lbl/e;->b(Ljava/io/InputStream;)V

    :goto_5
    invoke-static {v9}, Lbl/e;->c(Ljava/io/OutputStream;)V

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v8, v3

    move-object v9, v8

    :goto_6
    move-object v3, v1

    goto :goto_a

    :catch_3
    move-object v8, v3

    move-object v9, v8

    :goto_7
    move-object v3, v1

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v8, v3

    move-object v9, v8

    goto :goto_a

    :catch_4
    move-object v8, v3

    move-object v9, v8

    :goto_8
    :try_start_8
    const-string v1, "httpGet Failed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-static {p1, p0, v4}, Lp4/h;->a(Lp4/i;II)V

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {v8}, Lbl/e;->b(Ljava/io/InputStream;)V

    goto :goto_5

    :cond_4
    :goto_9
    return-object v2

    :catchall_5
    move-exception v0

    :goto_a
    invoke-static {p1, p0, v4}, Lp4/h;->a(Lp4/i;II)V

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-static {v8}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {v9}, Lbl/e;->c(Ljava/io/OutputStream;)V

    :cond_5
    throw v0

    :catch_5
    return-object v2
.end method
