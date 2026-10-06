.class public Lsi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsi/a;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lqi/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lsi/c;->f(Landroid/content/Context;)V

    return-void
.end method

.method public static d(Lqi/d;)Ljava/lang/String;
    .locals 0

    iget p0, p0, Lqi/d;->a:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private e(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [B

    new-array v3, v1, [B

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    goto :goto_4

    :cond_1
    const-string v6, "eventData read from cache file failed because magicNumber error"

    if-eq p1, v1, :cond_2

    :goto_1
    :try_start_2
    invoke-static {v6}, Lpi/c;->D(Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    invoke-static {v2}, Lzi/b;->a([B)I

    move-result p1

    const v7, -0x22334456

    if-eq p1, v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    if-ne p1, v4, :cond_4

    goto :goto_4

    :cond_4
    if-eq p1, v1, :cond_5

    const-string p1, "eventData read from cache file failed cause lengthBuffer error"

    :goto_2
    invoke-static {p1}, Lpi/c;->D(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-static {v3}, Lzi/b;->a([B)I

    move-result p1

    const/4 v4, 0x1

    if-lt p1, v4, :cond_8

    const/16 v4, 0x1000

    if-le p1, v4, :cond_6

    goto :goto_3

    :cond_6
    new-array v4, p1, [B

    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-eq v6, p1, :cond_7

    const-string p1, "eventData read from cache file failed cause buffer size not equal length"

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v4}, Lsi/c;->m([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    :goto_3
    const-string p1, "eventData read from cache file failed cause lengthBuffer < 1 || lengthBuffer > 4K"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_4
    invoke-static {v5}, Lzi/ma;->b(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v4, v5

    goto :goto_7

    :catch_0
    move-exception p1

    move-object v4, v5

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_1
    move-exception p1

    :goto_5
    :try_start_3
    invoke-static {p1}, Lpi/c;->r(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v4}, Lzi/ma;->b(Ljava/io/Closeable;)V

    :goto_6
    return-object v0

    :goto_7
    invoke-static {v4}, Lzi/ma;->b(Ljava/io/Closeable;)V

    throw p1
.end method

.method private g(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {p2}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Lzi/ma;->b(Ljava/io/Closeable;)V

    return-void
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lsi/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lri/b;->f(Landroid/content/Context;)Lri/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "24:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x1389

    invoke-virtual {v0, p2, p1}, Lri/b;->e(ILjava/lang/String;)Lqi/b;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lqi/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lsi/c;->i(Ljava/util/List;)V

    return-void
.end method

.method private k([Lqi/d;)[Lqi/d;
    .locals 13

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lsi/c;->l(Lqi/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".lock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lzi/ma;->f(Ljava/io/File;)Z

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v7, v5, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    array-length v5, p1

    move v7, v0

    move v9, v7

    :goto_0
    if-ge v7, v5, :cond_5

    aget-object v10, p1, v7

    if-nez v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v10}, Lqi/d;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lsi/c;->n(Ljava/lang/String;)[B

    move-result-object v10

    if-eqz v10, :cond_4

    array-length v11, v10

    if-lt v11, v8, :cond_4

    array-length v11, v10

    const/16 v12, 0x1000

    if-le v11, v12, :cond_2

    goto :goto_1

    :cond_2
    iget-object v11, p0, Lsi/c;->a:Landroid/content/Context;

    invoke-static {v11, v1}, Lzi/d1;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    array-length v1, p1

    sub-int/2addr v1, v9

    new-array v5, v1, [Lqi/d;

    invoke-static {p1, v9, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v6}, Lzi/ma;->b(Ljava/io/Closeable;)V

    invoke-direct {p0, v4, v2}, Lsi/c;->g(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;)V

    return-object v5

    :cond_3
    const v11, -0x22334456

    :try_start_4
    invoke-static {v11}, Lzi/b;->b(I)[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/OutputStream;->write([B)V

    array-length v11, v10

    invoke-static {v11}, Lzi/b;->b(I)[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const-string v10, "event data throw a invalid item "

    invoke-static {v10}, Lpi/c;->D(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v6, v3

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v3

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v2, v3

    move-object v6, v2

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v2, v3

    move-object v4, v2

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v2, v3

    move-object v4, v2

    move-object v6, v4

    :goto_3
    :try_start_5
    const-string v0, "event data write to cache file failed cause exception"

    invoke-static {v0, p1}, Lpi/c;->p(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_5
    invoke-static {v6}, Lzi/ma;->b(Ljava/io/Closeable;)V

    invoke-direct {p0, v4, v2}, Lsi/c;->g(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;)V

    return-object v3

    :catchall_3
    move-exception p1

    move-object v3, v6

    :goto_4
    invoke-static {v3}, Lzi/ma;->b(Ljava/io/Closeable;)V

    invoke-direct {p0, v4, v2}, Lsi/c;->g(Ljava/io/RandomAccessFile;Ljava/nio/channels/FileLock;)V

    throw p1
.end method

.method private l(Lqi/d;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lsi/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "event"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lsi/c;->d(Lqi/d;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x64

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lsi/c;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lzi/d1;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 11

    iget-object v0, p0, Lsi/c;->a:Landroid/content/Context;

    const-string v1, "event"

    const-string v2, "eventUploading"

    invoke-static {v0, v1, v2}, Lzi/d1;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lsi/c;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lzi/d1;->f(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    array-length v1, v0

    if-gtz v1, :cond_0

    goto/16 :goto_c

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move-object v5, v4

    :goto_0
    if-ge v2, v1, :cond_a

    aget-object v6, v0, v2

    if-nez v6, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-static {v6}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    invoke-static {v4}, Lzi/ma;->b(Ljava/io/Closeable;)V

    if-eqz v5, :cond_7

    :goto_2
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_9

    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/32 v9, 0x500000

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eventData read from cache file failed because "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is too big, length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lpi/c;->D(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lsi/c;->a:Landroid/content/Context;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lsi/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v6

    invoke-static {v6}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    invoke-static {v4}, Lzi/ma;->b(Ljava/io/Closeable;)V

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_4
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".lock"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v8}, Lzi/ma;->f(Ljava/io/File;)Z

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v9, "rw"

    invoke-direct {v5, v8, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    invoke-direct {p0, v7}, Lsi/c;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Lsi/c;->i(Ljava/util/List;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v4

    invoke-static {v4}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    invoke-static {v5}, Lzi/ma;->b(Ljava/io/Closeable;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-object v4, v5

    move-object v5, v8

    goto :goto_9

    :catchall_0
    move-exception v0

    move-object v4, v5

    goto :goto_5

    :catch_3
    move-exception v6

    move-object v4, v5

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_5
    move-object v5, v8

    goto :goto_a

    :catch_4
    move-exception v6

    :goto_6
    move-object v5, v8

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v6

    :goto_7
    :try_start_7
    invoke-static {v6}, Lpi/c;->r(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v6

    if-eqz v6, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_8

    :catch_6
    move-exception v6

    invoke-static {v6}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_6
    :goto_8
    invoke-static {v4}, Lzi/ma;->b(Ljava/io/Closeable;)V

    if-eqz v5, :cond_7

    goto/16 :goto_2

    :cond_7
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :goto_a
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v1

    if-eqz v1, :cond_8

    :try_start_9
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_b

    :catch_7
    move-exception v1

    invoke-static {v1}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_8
    :goto_b
    invoke-static {v4}, Lzi/ma;->b(Ljava/io/Closeable;)V

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_9
    throw v0

    :cond_a
    :goto_c
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lqi/d;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lsi/c;->b:Ljava/util/HashMap;

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lsi/c;->b:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lsi/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lsi/c;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lqi/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lsi/c;->j([Lqi/d;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsi/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public c(Lqi/d;)V
    .locals 2

    instance-of v0, p1, Lqi/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lsi/c;->b:Ljava/util/HashMap;

    if-nez v0, :cond_1

    return-void

    :cond_1
    check-cast p1, Lqi/b;

    invoke-static {p1}, Lsi/c;->d(Lqi/d;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lsi/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lsi/c;->b:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lsi/c;->a:Landroid/content/Context;

    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public j([Lqi/d;)V
    .locals 2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lsi/c;->k([Lqi/d;)[Lqi/d;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "event data write to cache file failed because data null"

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    return-void
.end method

.method public m([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lsi/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lri/b;->f(Landroid/content/Context;)Lri/b;

    move-result-object v1

    invoke-virtual {v1}, Lri/b;->d()Lqi/a;

    move-result-object v1

    invoke-virtual {v1}, Lqi/a;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lzi/q0;->l([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Lsi/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lzi/d1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    invoke-static {v1}, Lzi/d1;->e(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    :try_start_0
    invoke-static {v1, p1}, Lzi/n6;->b([B[B)[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    invoke-static {p1}, Lzi/q0;->l([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    :goto_0
    invoke-static {p1}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public n(Ljava/lang/String;)[B
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lsi/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lri/b;->f(Landroid/content/Context;)Lri/b;

    move-result-object v0

    invoke-virtual {v0}, Lri/b;->d()Lqi/a;

    move-result-object v0

    invoke-virtual {v0}, Lqi/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lzi/q0;->j(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lsi/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/d1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lzi/q0;->j(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    array-length v2, p1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lzi/d1;->e(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    array-length v2, v0

    if-le v2, v3, :cond_3

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-static {v0, p1}, Lzi/n6;->c([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lpi/c;->r(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-object v1
.end method
