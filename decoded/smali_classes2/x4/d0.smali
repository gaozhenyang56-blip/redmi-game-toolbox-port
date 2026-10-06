.class public Lx4/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p0, 0x5

    :try_start_1
    new-array p0, p0, [I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v1

    aput v1, p0, v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v1

    const/4 v3, 0x1

    aput v1, p0, v3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v1

    const/4 v4, 0x2

    aput v1, p0, v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v1

    const/4 v5, 0x3

    aput v1, p0, v5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    sub-int/2addr v1, v3

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    const/4 v1, 0x4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v6

    aput v6, p0, v1

    aget v1, p0, v0

    const/16 v7, 0x47

    if-ne v1, v7, :cond_1

    aget v1, p0, v3

    const/16 v7, 0x49

    if-ne v1, v7, :cond_1

    aget v1, p0, v4

    const/16 v4, 0x46

    if-ne v1, v4, :cond_1

    aget p0, p0, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x38

    if-ne p0, v1, :cond_1

    const/16 p0, 0x3b

    if-ne v6, p0, :cond_1

    move v0, v3

    :cond_1
    invoke-static {v2}, Lbl/e;->b(Ljava/io/InputStream;)V

    return v0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_0
    :try_start_2
    const-string v2, "FileUtils"

    const-string v3, "file proccess error"

    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lbl/e;->b(Ljava/io/InputStream;)V

    return v0

    :goto_1
    invoke-static {v1}, Lbl/e;->b(Ljava/io/InputStream;)V

    throw p0

    :cond_2
    :goto_2
    return v0
.end method
