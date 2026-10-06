.class public Lxc/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lxc/b0$b;


# static fields
.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:[Ljava/lang/Object;

.field private e:Landroid/net/LocalSocket;

.field private f:Ljava/io/OutputStream;

.field private g:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lxc/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lxc/l;->h:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lxc/l;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lxc/l;->e:Landroid/net/LocalSocket;

    iput-object v0, p0, Lxc/l;->f:Ljava/io/OutputStream;

    iput-object v0, p0, Lxc/l;->g:Ljava/io/InputStream;

    iput p1, p0, Lxc/l;->a:I

    iput-object p2, p0, Lxc/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lxc/l;->c:Ljava/lang/String;

    iput-object p4, p0, Lxc/l;->d:[Ljava/lang/Object;

    return-void
.end method

.method private static b(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x22

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_2

    const-string v4, "\\\""

    :goto_2
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_3

    const-string v4, "\\\\"

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    return-void
.end method

.method public static declared-synchronized c()V
    .locals 7

    const-class v0, Lxc/l;

    monitor-enter v0

    const v1, 0xea60

    :try_start_0
    const-string v2, "dnsproxyd"

    const-string v3, "setoperatoraddress"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "*clear"

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lxc/l;->e(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private d()V
    .locals 1

    sget-object v0, Lxc/l;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static varargs declared-synchronized e(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-class v0, Lxc/l;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lxc/l;

    invoke-direct {v1, p0, p1, p2, p3}, Lxc/l;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v1}, Lxc/l;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private varargs f(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 11

    const-string v0, "Failed closing socket: "

    const-string v1, "Failed closing input stream: "

    const-string v2, "Failed closing output stream: "

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object v4, p0, Lxc/l;->e:Landroid/net/LocalSocket;

    new-instance v5, Landroid/net/LocalSocketAddress;

    sget-object v6, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v5, p2, v6}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v4, p1}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object p1, p0, Lxc/l;->g:Ljava/io/InputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object p2, p0, Lxc/l;->f:Ljava/io/OutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, p3, :cond_1

    aget-object v8, p4, v7

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_0

    const/16 v8, 0x20

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5, v9}, Lxc/l;->b(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected argument: "

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object p4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/io/OutputStream;->write([B)V

    sget-object p4, Lxc/l;->h:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SND -> {"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "} this="

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 p3, 0x1000

    new-array p3, p3, [B

    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result p4

    if-gez p4, :cond_3

    sget-object p3, Lxc/l;->h:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " reading"

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    iput-object v3, p0, Lxc/l;->f:Ljava/io/OutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    sget-object p3, Lxc/l;->h:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iput-object v3, p0, Lxc/l;->g:Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    sget-object p2, Lxc/l;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    :try_start_6
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V

    iput-object v3, p0, Lxc/l;->e:Landroid/net/LocalSocket;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    sget-object p2, Lxc/l;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :cond_3
    move v5, v6

    :goto_4
    if-ge v5, p4, :cond_2

    :try_start_7
    aget-byte v7, p3, v5

    if-nez v7, :cond_6

    new-instance p4, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p4, p3, v6, v5, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string p3, " "

    invoke-virtual {p4, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v5, p3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v5, :cond_5

    :try_start_8
    aget-object p3, p3, v6

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/16 v5, 0xc8

    const-string v6, "}"

    if-ne p3, v5, :cond_4

    :try_start_9
    sget-object p3, Lxc/l;->h:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Success REV <- {"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_5
    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_4
    sget-object p3, Lxc/l;->h:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed REV <- {"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :goto_6
    :try_start_a
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    iput-object v3, p0, Lxc/l;->f:Ljava/io/OutputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    :catch_3
    move-exception p2

    sget-object p3, Lxc/l;->h:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iput-object v3, p0, Lxc/l;->g:Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_8

    :catch_4
    move-exception p1

    sget-object p2, Lxc/l;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    :try_start_c
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V

    iput-object v3, p0, Lxc/l;->e:Landroid/net/LocalSocket;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_9

    :catch_5
    move-exception p1

    sget-object p2, Lxc/l;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :catch_6
    move-exception p3

    :try_start_d
    new-instance p4, Ljava/lang/IllegalArgumentException;

    const-string v5, "problem parsing code"

    invoke-direct {p4, v5, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :cond_5
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string p4, "Insufficient arguments"

    invoke-direct {p3, p4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    :catch_7
    move-exception p3

    goto :goto_a

    :catch_8
    move-exception p3

    goto/16 :goto_d

    :catchall_0
    move-exception p3

    move-object p2, v3

    goto/16 :goto_12

    :catch_9
    move-exception p3

    move-object p2, v3

    goto :goto_a

    :catch_a
    move-exception p3

    move-object p2, v3

    goto/16 :goto_d

    :catchall_1
    move-exception p3

    move-object p1, v3

    move-object p2, p1

    goto/16 :goto_12

    :catch_b
    move-exception p3

    move-object p1, v3

    move-object p2, p1

    goto :goto_a

    :catch_c
    move-exception p3

    move-object p1, v3

    move-object p2, p1

    goto/16 :goto_d

    :catchall_2
    move-exception p3

    move-object p1, v3

    move-object p2, p1

    move-object v4, p2

    goto/16 :goto_12

    :catch_d
    move-exception p3

    move-object p1, v3

    move-object p2, p1

    move-object v4, p2

    :goto_a
    :try_start_e
    sget-object p4, Lxc/l;->h:Ljava/lang/String;

    const-string v5, "Problem parsing message "

    invoke-static {p4, v5, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz p2, :cond_7

    :try_start_f
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    iput-object v3, p0, Lxc/l;->f:Ljava/io/OutputStream;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_b

    :catch_e
    move-exception p2

    sget-object p3, Lxc/l;->h:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_b
    if-eqz p1, :cond_8

    :try_start_10
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iput-object v3, p0, Lxc/l;->g:Ljava/io/InputStream;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_c

    :catch_f
    move-exception p1

    sget-object p2, Lxc/l;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_c
    if-eqz v4, :cond_b

    :try_start_11
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V

    iput-object v3, p0, Lxc/l;->e:Landroid/net/LocalSocket;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    goto :goto_11

    :catch_10
    move-exception p1

    sget-object p2, Lxc/l;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_10

    :catch_11
    move-exception p3

    move-object p1, v3

    move-object p2, p1

    move-object v4, p2

    :goto_d
    :try_start_12
    sget-object p4, Lxc/l;->h:Ljava/lang/String;

    const-string v5, "Communications error: "

    invoke-static {p4, v5, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz p2, :cond_9

    :try_start_13
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    iput-object v3, p0, Lxc/l;->f:Ljava/io/OutputStream;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_12

    goto :goto_e

    :catch_12
    move-exception p2

    sget-object p3, Lxc/l;->h:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_e
    if-eqz p1, :cond_a

    :try_start_14
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iput-object v3, p0, Lxc/l;->g:Ljava/io/InputStream;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_13

    goto :goto_f

    :catch_13
    move-exception p1

    sget-object p2, Lxc/l;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_f
    if-eqz v4, :cond_b

    :try_start_15
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V

    iput-object v3, p0, Lxc/l;->e:Landroid/net/LocalSocket;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_14

    goto :goto_11

    :catch_14
    move-exception p1

    sget-object p2, Lxc/l;->h:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_10
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_11
    return-void

    :catchall_3
    move-exception p3

    :goto_12
    if-eqz p2, :cond_c

    :try_start_16
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    iput-object v3, p0, Lxc/l;->f:Ljava/io/OutputStream;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_15

    goto :goto_13

    :catch_15
    move-exception p2

    sget-object p4, Lxc/l;->h:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_13
    if-eqz p1, :cond_d

    :try_start_17
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iput-object v3, p0, Lxc/l;->g:Ljava/io/InputStream;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_16

    goto :goto_14

    :catch_16
    move-exception p1

    sget-object p2, Lxc/l;->h:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_14
    if-eqz v4, :cond_e

    :try_start_18
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V

    iput-object v3, p0, Lxc/l;->e:Landroid/net/LocalSocket;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_17

    goto :goto_15

    :catch_17
    move-exception p1

    sget-object p2, Lxc/l;->h:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_15
    throw p3
.end method

.method public static declared-synchronized g(Ljava/lang/String;)V
    .locals 6

    const-class v0, Lxc/l;

    monitor-enter v0

    const v1, 0xea60

    :try_start_0
    const-string v2, "dnsproxyd"

    const-string v3, "setoperatoraddress"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lxc/l;->e(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized h(Ljava/lang/String;)V
    .locals 6

    const-class v0, Lxc/l;

    monitor-enter v0

    const v1, 0xea60

    :try_start_0
    const-string v2, "dnsproxyd"

    const-string v3, "setoperatoraddress"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lxc/l;->e(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 5

    sget-object v0, Lxc/l;->h:Ljava/lang/String;

    const-string v1, "forceClose"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lxc/l;->f:Ljava/io/OutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iput-object v1, p0, Lxc/l;->f:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lxc/l;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lxc/l;->g:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object v1, p0, Lxc/l;->g:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Lxc/l;->h:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget-object v0, p0, Lxc/l;->e:Landroid/net/LocalSocket;

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    iput-object v1, p0, Lxc/l;->e:Landroid/net/LocalSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    sget-object v1, Lxc/l;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public run()V
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lxc/b0;->c()Lxc/b0;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lxc/b0;->e(ILxc/b0$b;)V

    iget v1, p0, Lxc/l;->a:I

    iget-object v2, p0, Lxc/l;->b:Ljava/lang/String;

    iget-object v3, p0, Lxc/l;->c:Ljava/lang/String;

    iget-object v4, p0, Lxc/l;->d:[Ljava/lang/Object;

    invoke-direct {p0, v1, v2, v3, v4}, Lxc/l;->f(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lxc/b0;->c()Lxc/b0;

    move-result-object v2

    invoke-virtual {v2, v0, p0}, Lxc/b0;->b(ILjava/lang/Object;)V

    throw v1

    :catch_0
    :goto_0
    invoke-static {}, Lxc/b0;->c()Lxc/b0;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lxc/b0;->b(ILjava/lang/Object;)V

    return-void
.end method
