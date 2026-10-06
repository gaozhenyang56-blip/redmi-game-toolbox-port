.class public Lzi/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lzi/g1;->c(Landroid/content/Context;)Lzi/g1;

    move-result-object v0

    const-string v1, "sp_client_report_status"

    const-string v2, "sp_client_report_key"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lzi/g1;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v0, 0x14

    invoke-static {v0}, Lzi/q0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lzi/g1;->c(Landroid/content/Context;)Lzi/g1;

    move-result-object p0

    invoke-virtual {p0, v1, v2, v0}, Lzi/g1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    if-eqz p0, :cond_d

    if-eqz p1, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_c

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    return-void

    :cond_2
    new-instance p0, Lzi/e1;

    invoke-direct {p0}, Lzi/e1;-><init>()V

    invoke-virtual {p2, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_d

    array-length p1, p0

    if-gtz p1, :cond_3

    goto/16 :goto_c

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_0
    if-ge v2, v1, :cond_d

    aget-object v6, p0, v2

    if-eqz v6, :cond_a

    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto/16 :goto_9

    :cond_4
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".lock"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v7}, Lzi/ma;->f(Ljava/io/File;)Z

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "rw"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-static {v6, v8}, Lzi/ma;->i(Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :goto_1
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    invoke-static {v4}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    invoke-static {v5}, Lzi/ma;->b(Ljava/io/Closeable;)V

    goto :goto_5

    :catch_2
    move-exception v4

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception v5

    move-object v10, v5

    move-object v5, v4

    move-object v4, v10

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_4
    move-exception v6

    move-object v7, v5

    move-object v5, v4

    move-object v4, v6

    :goto_3
    :try_start_6
    invoke-static {v4}, Lpi/c;->r(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-eqz v4, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception v4

    invoke-static {v4}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    invoke-static {v5}, Lzi/ma;->b(Ljava/io/Closeable;)V

    if-eqz v7, :cond_7

    :goto_5
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_7
    move-object v4, v5

    move-object v5, v7

    goto :goto_b

    :catchall_2
    move-exception p0

    move-object v4, v5

    :goto_6
    move-object v5, v7

    :goto_7
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result p1

    if-eqz p1, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception p1

    invoke-static {p1}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_8
    :goto_8
    invoke-static {v4}, Lzi/ma;->b(Ljava/io/Closeable;)V

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_9
    throw p0

    :cond_a
    :goto_9
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v6

    if-eqz v6, :cond_b

    :try_start_9
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_a

    :catch_7
    move-exception v6

    invoke-static {v6}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_b
    :goto_a
    invoke-static {v4}, Lzi/ma;->b(Ljava/io/Closeable;)V

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_c
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    :goto_c
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lri/b;->f(Landroid/content/Context;)Lri/b;

    move-result-object p0

    invoke-virtual {p0}, Lri/b;->d()Lqi/a;

    move-result-object p0

    invoke-virtual {p0}, Lqi/a;->d()J

    move-result-wide p0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lpi/c;->r(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lzi/ma;->f(Ljava/io/File;)Z

    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method

.method public static e(Ljava/lang/String;)[B
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    invoke-static {p0}, Lzi/n0;->b(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x44

    aput-byte v1, p0, v0

    const/16 v0, 0xf

    const/16 v1, 0x54

    aput-byte v1, p0, v0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Lzi/f1;

    invoke-direct {p0}, Lzi/f1;-><init>()V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
