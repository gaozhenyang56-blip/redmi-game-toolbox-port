.class public Lzb/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lzb/g;

    monitor-enter v0

    :try_start_0
    const-string v1, "PrivacyCenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lzb/g;->c(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Malicious-FileUtils"

    const-string v1, "Failed to clear files!"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 11

    const-class v0, Lzb/g;

    monitor-enter v0

    :try_start_0
    const-string v1, "PrivacyCenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0xa4cb800

    array-length v6, p0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, p0, v7

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v9}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long v9, v2, v9

    cmp-long v9, v9, v4

    if-lez v9, :cond_3

    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "Malicious-FileUtils"

    const-string v9, "Failed to delete current file!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :cond_5
    :goto_2
    const-string p0, "Malicious-FileUtils"

    const-string v1, "No recent file to clear"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static c(Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    return v1

    :cond_1
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, p0, v0

    invoke-static {v3}, Lzb/g;->c(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0

    :cond_4
    return v0

    :cond_5
    :goto_1
    const-string p0, "Malicious-FileUtils"

    const-string v1, "No file or directory to delete!"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 11

    const-class v0, Lzb/g;

    monitor-enter v0

    :try_start_0
    const-string v1, "PrivacyCenter"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v5, 0x0

    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/permcenter/monitor/a;->h()Lcom/miui/permcenter/monitor/a;

    move-result-object v5

    invoke-virtual {v5, p0, v9}, Lcom/miui/permcenter/monitor/a;->c(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :cond_2
    :try_start_5
    invoke-static {v7}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v6}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {v8}, Lbl/e;->d(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Malicious-FileUtils"

    const-string v5, "Failed to delete file!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_4

    :catch_0
    move-exception v4

    :goto_2
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catch_1
    move-exception v5

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v8, v5

    goto :goto_5

    :catch_2
    move-exception v8

    move-object v10, v8

    move-object v8, v5

    move-object v5, v10

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v8, v5

    goto :goto_6

    :catch_3
    move-exception v7

    move-object v8, v5

    move-object v5, v7

    move-object v7, v8

    goto :goto_3

    :catchall_2
    move-exception p0

    move-object v6, v5

    move-object v8, v6

    goto :goto_6

    :catch_4
    move-exception v6

    move-object v7, v5

    move-object v8, v7

    move-object v5, v6

    move-object v6, v8

    :goto_3
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-static {v7}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v6}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {v8}, Lbl/e;->d(Ljava/io/Reader;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Malicious-FileUtils"

    const-string v5, "Failed to delete file!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_4

    :catch_5
    move-exception v4

    goto :goto_2

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_3
    move-exception p0

    :goto_5
    move-object v5, v7

    :goto_6
    :try_start_b
    invoke-static {v5}, Lbl/e;->d(Ljava/io/Reader;)V

    invoke-static {v6}, Lbl/e;->b(Ljava/io/InputStream;)V

    invoke-static {v8}, Lbl/e;->d(Ljava/io/Reader;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Malicious-FileUtils"

    const-string v2, "Failed to delete file!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_7

    :catch_6
    move-exception v1

    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_7
    throw p0

    :cond_5
    monitor-exit v0

    return-void

    :cond_6
    :goto_8
    const-string p0, "Malicious-FileUtils"

    const-string v1, "No file,don\'t track"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_4
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lzb/g;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "PrivacyCenter"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez p1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    if-eqz p0, :cond_3

    const/4 p0, 0x0

    :try_start_3
    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\r\n"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :cond_2
    :try_start_6
    invoke-static {v1}, Lbl/e;->e(Ljava/io/Writer;)V

    :goto_2
    invoke-static {p1}, Lbl/e;->e(Ljava/io/Writer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catch_1
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p2

    move-object v1, p0

    move-object p0, p2

    goto :goto_4

    :catch_2
    move-exception p2

    move-object v1, p0

    move-object p0, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v1

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v1

    :goto_3
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-static {v1}, Lbl/e;->e(Ljava/io/Writer;)V

    goto :goto_2

    :catchall_2
    move-exception p0

    :goto_4
    invoke-static {v1}, Lbl/e;->e(Ljava/io/Writer;)V

    invoke-static {p1}, Lbl/e;->e(Ljava/io/Writer;)V

    throw p0

    :cond_3
    :goto_5
    monitor-exit v0

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0
.end method
