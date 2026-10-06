.class public Lw2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw2/f$a;,
        Lw2/f$d;,
        Lw2/f$c;,
        Lw2/f$b;
    }
.end annotation


# instance fields
.field protected a:Lorg/json/JSONArray;

.field protected b:Ljava/net/URL;

.field protected c:Lw2/f$c;

.field protected d:Z

.field private e:[B

.field private f:Ljava/lang/String;

.field protected g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lw2/f;->g:Landroid/content/Context;

    :try_start_0
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "URL error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PaySafetyConnection"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p2}, Lw2/f;->h(Ljava/net/URL;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lw2/f;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lw2/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method private static d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-static {p2, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private g(I)Lw2/f$b;
    .locals 2

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    sget-object p1, Lw2/f$b;->a:Lw2/f$b;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network Error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PaySafetyConnection"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lw2/f$b;->f:Lw2/f$b;

    return-object p1
.end method

.method private h(Ljava/net/URL;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw2/f;->d:Z

    invoke-virtual {p0, p1}, Lw2/f;->e(Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lw2/f;->b:Ljava/net/URL;

    :cond_0
    return-void
.end method

.method private i(Ljava/lang/String;[BZLw2/f$d;Lp4/i;)Lw2/f$b;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "Connection Exception for "

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v0, v7

    invoke-static {v0}, Lc3/s;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    sget-boolean v0, Lw2/g;->a:Z

    const-string v10, "PaySafetyConnection"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hosted connection url: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v11, -0x1

    :try_start_0
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const/16 v0, 0x2710

    :try_start_2
    invoke-virtual {v14, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object v15, v1, Lw2/f;->g:Landroid/content/Context;

    invoke-static {v15}, Lw2/l;->b(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v14, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x7530

    invoke-virtual {v14, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :goto_1
    if-eqz p3, :cond_2

    const-string v0, "GET"

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    goto :goto_2

    :cond_2
    const-string v0, "POST"

    invoke-virtual {v14, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v14, v7}, Ljava/net/URLConnection;->setUseCaches(Z)V

    if-eqz v2, :cond_3

    array-length v0, v2

    if-lez v0, :cond_3

    const-string v0, "Content-Length"

    array-length v15, v2

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, v1, Lw2/f;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Content-Type"

    iget-object v15, v1, Lw2/f;->f:Ljava/lang/String;

    invoke-virtual {v14, v0, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-virtual {v1, v14}, Lw2/f;->j(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URLConnection;->connect()V

    if-nez p3, :cond_5

    if-eqz v2, :cond_5

    array-length v0, v2

    if-lez v0, :cond_5

    invoke-virtual {v14}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_5
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    invoke-direct {v1, v11}, Lw2/f;->g(I)Lw2/f$b;

    move-result-object v0

    sget-object v15, Lw2/f$b;->a:Lw2/f$b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v0, v15, :cond_9

    if-eqz v3, :cond_a

    :try_start_3
    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-virtual {v14}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/16 v13, 0x2000

    invoke-direct {v15, v6, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v6, 0x400

    :try_start_4
    new-array v13, v6, [B

    :goto_3
    invoke-virtual {v15, v13, v7, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v3, v13, v7, v2}, Lw2/f$d;->write([BII)V

    goto :goto_3

    :cond_6
    invoke-virtual/range {p4 .. p4}, Lw2/f$d;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v15}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v13, v15

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v13, v15

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v13, 0x0

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v13, 0x0

    :goto_4
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : read file stream error "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p4 .. p4}, Lw2/f$d;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v13, :cond_7

    :try_start_7
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_7
    invoke-static {v4, v11, v7}, Lp4/h;->a(Lp4/i;II)V

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_b

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz v13, :cond_8

    :try_start_8
    invoke-virtual {v13}, Ljava/io/BufferedInputStream;->close()V

    :cond_8
    throw v0

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lw2/f;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_a
    :goto_6
    invoke-static {v4, v11, v7}, Lp4/h;->a(Lp4/i;II)V

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_3
    move-exception v0

    move-object v13, v14

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v13, v14

    goto :goto_7

    :catchall_4
    move-exception v0

    const/4 v13, 0x0

    goto :goto_a

    :catch_3
    move-exception v0

    const/4 v13, 0x0

    :goto_7
    :try_start_9
    sget-boolean v2, Lw2/g;->a:Z

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " :"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lw2/f;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    invoke-static {v4, v11, v7}, Lp4/h;->a(Lp4/i;II)V

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_b

    :catchall_5
    move-exception v0

    :goto_a
    invoke-static {v4, v11, v7}, Lp4/h;->a(Lp4/i;II)V

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v0

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " URL error :"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_b
    move-object/from16 v2, p2

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lw2/f$b;->c:Lw2/f$b;

    return-object v0
.end method


# virtual methods
.method protected e(Ljava/net/URL;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    const-string v1, "https"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public f()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lw2/f;->a:Lorg/json/JSONArray;

    return-object v0
.end method

.method protected j(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    return-object p1
.end method

.method protected k(Lw2/f$c;)Lw2/f$c;
    .locals 0

    return-object p1
.end method

.method protected l(Ljava/lang/String;Lw2/f$c;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method protected m(Lw2/f$d;)Lw2/f$b;
    .locals 11

    iget-object v0, p0, Lw2/f;->b:Ljava/net/URL;

    if-nez v0, :cond_0

    sget-object p1, Lw2/f$b;->b:Lw2/f$b;

    return-object p1

    :cond_0
    iget-object v0, p0, Lw2/f;->g:Landroid/content/Context;

    invoke-static {v0}, Lw2/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object p1, Lw2/f$b;->c:Lw2/f$b;

    return-object p1

    :cond_1
    iget-object v0, p0, Lw2/f;->c:Lw2/f$c;

    if-nez v0, :cond_2

    new-instance v0, Lw2/f$c;

    invoke-direct {v0, p0}, Lw2/f$c;-><init>(Lw2/f;)V

    iput-object v0, p0, Lw2/f;->c:Lw2/f$c;

    :cond_2
    iget-object v0, p0, Lw2/f;->c:Lw2/f$c;

    invoke-virtual {p0, v0}, Lw2/f;->k(Lw2/f$c;)Lw2/f$c;

    move-result-object v0

    iget-object v1, p0, Lw2/f;->b:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lw2/f;->d:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lw2/f$c;->b()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v1, p0, Lw2/f;->b:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lw2/f;->b:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lw2/f$c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {p0, v1, v0}, Lw2/f;->l(Ljava/lang/String;Lw2/f$c;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lw2/g;->a:Z

    const-string v8, "PaySafetyConnection"

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connection url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean v2, p0, Lw2/f;->d:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lw2/f;->e:[B

    if-eqz v2, :cond_6

    array-length v2, v2

    if-lez v2, :cond_6

    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lw2/f;->f:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lw2/f$c;->b()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lw2/f$c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Lw2/f;->e:[B

    sget-boolean v2, Lw2/g;->a:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[post]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    iget-object v0, p0, Lw2/f;->e:[B

    if-eqz v0, :cond_8

    array-length v0, v0

    if-nez v0, :cond_9

    :cond_8
    sget-object p1, Lw2/f$b;->e:Lw2/f$b;

    return-object p1

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v4, p0, Lw2/f;->e:[B

    iget-boolean v5, p0, Lw2/f;->d:Z

    new-instance v7, Lp4/i;

    const-string v0, "antivirus_connection_request"

    invoke-direct {v7, v0}, Lp4/i;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    move-object v3, v1

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lw2/f;->i(Ljava/lang/String;[BZLw2/f$d;Lp4/i;)Lw2/f$b;

    move-result-object p1

    sget-boolean v0, Lw2/g;->a:Z

    if-eqz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time(ms) spent in request: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v9

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object p1
.end method

.method public n()Lw2/f$b;
    .locals 5

    const-string v0, "PaySafetyConnection"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Lw2/f$a;

    invoke-direct {v2, p0, v1}, Lw2/f$a;-><init>(Lw2/f;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {p0, v2}, Lw2/f;->m(Lw2/f$d;)Lw2/f$b;

    move-result-object v2

    :try_start_0
    sget-object v3, Lw2/f$b;->a:Lw2/f$b;

    if-ne v2, v3, :cond_0

    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lw2/f;->a:Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lw2/f$b;->g:Lw2/f$b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    return-object v0

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    throw v0
.end method

.method protected o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
