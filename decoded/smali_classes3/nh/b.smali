.class public Lnh/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llh/a;


# static fields
.field public static final h:Landroid/graphics/Bitmap$CompressFormat;


# instance fields
.field protected a:Lnh/a;

.field private b:Ljava/io/File;

.field protected final c:Loh/a;

.field private final d:Ljava/io/File;

.field protected e:I

.field protected f:Landroid/graphics/Bitmap$CompressFormat;

.field protected g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lnh/b;->h:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Loh/a;JILjava/io/File;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    iput v0, p0, Lnh/b;->e:I

    sget-object v0, Lnh/b;->h:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lnh/b;->f:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    iput v0, p0, Lnh/b;->g:I

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_4

    if-ltz p6, :cond_3

    if-eqz p3, :cond_2

    if-nez v0, :cond_0

    const-wide p4, 0x7fffffffffffffffL

    :cond_0
    move-wide v3, p4

    if-nez p6, :cond_1

    const p6, 0x7fffffff

    :cond_1
    move v5, p6

    iput-object p2, p0, Lnh/b;->b:Ljava/io/File;

    iput-object p3, p0, Lnh/b;->c:Loh/a;

    iput-object p7, p0, Lnh/b;->d:Ljava/io/File;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lnh/b;->e(Ljava/io/File;Ljava/io/File;JILjava/io/File;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fileNameGenerator argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxFileCount argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheMaxSize argument must be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheDir argument must be not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnh/b;->c:Loh/a;

    invoke-interface {v0, p1}, Loh/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/io/File;Ljava/io/File;JILjava/io/File;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    :try_start_0
    invoke-static/range {v0 .. v6}, Lnh/a;->L(Ljava/io/File;IIJILjava/io/File;)Lnh/a;

    move-result-object p1

    iput-object p1, p0, Lnh/b;->a:Lnh/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lai/c;->c(Ljava/lang/Throwable;)V

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lnh/b;->e(Ljava/io/File;Ljava/io/File;JILjava/io/File;)V

    :cond_0
    iget-object p2, p0, Lnh/b;->a:Lnh/a;

    if-eqz p2, :cond_1

    :goto_0
    return-void

    :cond_1
    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnh/b;->a:Lnh/a;

    invoke-direct {p0, p1}, Lnh/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lnh/a;->H(Ljava/lang/String;)Lnh/a$e;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, v1}, Lnh/a$e;->c(I)Ljava/io/File;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnh/a$e;->close()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p1, v0

    :goto_1
    :try_start_2
    invoke-static {v1}, Lai/c;->c(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lnh/a$e;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lnh/a$e;->close()V

    :cond_3
    throw v0
.end method

.method public b(Ljava/lang/String;Ljava/io/InputStream;Lai/b$a;)Z
    .locals 3

    iget-object v0, p0, Lnh/b;->a:Lnh/a;

    invoke-direct {p0, p1}, Lnh/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnh/a;->D(Ljava/lang/String;)Lnh/a$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1, v0}, Lnh/a$c;->f(I)Ljava/io/OutputStream;

    move-result-object v0

    iget v2, p0, Lnh/b;->e:I

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_0
    iget v0, p0, Lnh/b;->e:I

    invoke-static {p2, v1, p3, v0}, Lai/b;->b(Ljava/io/InputStream;Ljava/io/OutputStream;Lai/b$a;I)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lai/b;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lnh/a$c;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnh/a$c;->a()V

    :goto_0
    return p2

    :catchall_0
    move-exception p2

    invoke-static {v1}, Lai/b;->a(Ljava/io/Closeable;)V

    invoke-virtual {p1}, Lnh/a$c;->a()V

    throw p2
.end method

.method public c(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    iget-object v0, p0, Lnh/b;->a:Lnh/a;

    invoke-direct {p0, p1}, Lnh/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnh/a;->D(Ljava/lang/String;)Lnh/a$c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1, v0}, Lnh/a$c;->f(I)Ljava/io/OutputStream;

    move-result-object v0

    iget v2, p0, Lnh/b;->e:I

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :try_start_0
    iget-object v0, p0, Lnh/b;->f:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lnh/b;->g:I

    invoke-virtual {p2, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lai/b;->a(Ljava/io/Closeable;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lnh/a$c;->e()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lnh/a$c;->a()V

    :goto_0
    return p2

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lai/b;->a(Ljava/io/Closeable;)V

    throw p1
.end method
