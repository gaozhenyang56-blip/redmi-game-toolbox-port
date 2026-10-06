.class public final Lcom/gzy/redmidiag/CrashReporter;
.super Ljava/lang/Object;
.source "CrashReporter.java"


# static fields
.field private static context:Landroid/content/Context;

.field private static installed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diagnosticProcess()Z
    .registers 2

    .line 16
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 17
    if-eqz v0, :cond_10

    const-string v1, ":diagnostics"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized install(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/gzy/redmidiag/CrashReporter;

    monitor-enter v0

    .line 20
    :try_start_3
    sput-object p0, Lcom/gzy/redmidiag/CrashReporter;->context:Landroid/content/Context;

    .line 21
    sget-boolean p0, Lcom/gzy/redmidiag/CrashReporter;->installed:Z
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_1c

    if-eqz p0, :cond_b

    monitor-exit v0

    return-void

    .line 22
    :cond_b
    const/4 p0, 0x1

    :try_start_c
    sput-boolean p0, Lcom/gzy/redmidiag/CrashReporter;->installed:Z

    .line 23
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    .line 24
    new-instance v1, Lcom/gzy/redmidiag/CrashReporter$1;

    invoke-direct {v1, p0}, Lcom/gzy/redmidiag/CrashReporter$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1c

    .line 31
    monitor-exit v0

    return-void

    .line 19
    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static read(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 51
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "redmi-last-crash.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_14

    const-string p0, "\u5c1a\u672a\u8bb0\u5f55\u5230\u5d29\u6e83\u3002\u8bf7\u5148\u542f\u52a8\u6e38\u620f\u7a7a\u95f4\uff0c\u518d\u56de\u6765\u5237\u65b0\u3002"

    return-object p0

    .line 53
    :cond_14
    const/4 p0, 0x0

    :try_start_15
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_46

    .line 54
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x30d40

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 55
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 56
    new-array v0, v0, [B

    .line 57
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 58
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_3d
    .catchall {:try_start_1c .. :try_end_3d} :catchall_41

    .line 59
    :try_start_3d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 58
    return-object v2

    :catchall_41
    move-exception p0

    .line 59
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw p0
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v0

    if-eqz p0, :cond_4f

    if-eq p0, v0, :cond_50

    :try_start_4b
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_50

    :cond_4f
    move-object p0, v0

    :cond_50
    :goto_50
    throw p0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_51} :catch_51

    :catch_51
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bfb\u53d6\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized record(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9

    const-class v0, Lcom/gzy/redmidiag/CrashReporter;

    monitor-enter v0

    .line 33
    :try_start_3
    const-string v1, "RedmiPortRepair12"

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    sget-object v1, Lcom/gzy/redmidiag/CrashReporter;->context:Landroid/content/Context;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e9

    if-nez v1, :cond_e

    monitor-exit v0

    return-void

    .line 36
    :cond_e
    :try_start_e
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 37
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\nOriginal 10.4.5-huawei-repair19-handle-fps / 40001058\n"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 39
    const-string v2, "\nDevice: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 40
    const-string v2, " API "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\nProcess: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 41
    const-string v2, "\nStage: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 42
    new-instance p1, Ljava/io/File;

    sget-object v1, Lcom/gzy/redmidiag/CrashReporter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "redmi-last-crash.txt"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_e .. :try_end_86} :catchall_df

    .line 43
    const/4 v1, 0x0

    :try_start_87
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_d5

    :try_start_8e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p1
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_c7

    .line 44
    :try_start_96
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    cmp-long v3, v3, v5

    if-lez v3, :cond_a6

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 45
    :cond_a6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 46
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_b6
    .catchall {:try_start_96 .. :try_end_b6} :catchall_bf

    .line 47
    if-eqz p1, :cond_bb

    :try_start_b8
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->close()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_c7

    :cond_bb
    :try_start_bb
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_d5

    goto :goto_e7

    :catchall_bf
    move-exception p0

    move-object v1, p0

    if-eqz p1, :cond_c6

    :try_start_c3
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->close()V

    :cond_c6
    throw v1
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_c7

    :catchall_c7
    move-exception p0

    if-eqz v1, :cond_d0

    if-eq v1, p0, :cond_d1

    :try_start_cc
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d1

    :cond_d0
    move-object v1, p0

    :cond_d1
    :goto_d1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    throw v1
    :try_end_d5
    .catchall {:try_start_cc .. :try_end_d5} :catchall_d5

    :catchall_d5
    move-exception p0

    if-eqz v1, :cond_de

    if-eq v1, p0, :cond_dd

    :try_start_da
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_dd
    move-object p0, v1

    :cond_de
    throw p0
    :try_end_df
    .catchall {:try_start_da .. :try_end_df} :catchall_df

    .line 48
    :catchall_df
    move-exception p0

    :try_start_e0
    const-string p1, "RedmiPortRepair12"

    const-string v1, "Unable to save crash"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e7
    .catchall {:try_start_e0 .. :try_end_e7} :catchall_e9

    .line 49
    :goto_e7
    monitor-exit v0

    return-void

    .line 32
    :catchall_e9
    move-exception p0

    monitor-exit v0

    throw p0
.end method
