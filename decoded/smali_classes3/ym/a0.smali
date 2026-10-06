.class public abstract Lym/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Ljava/nio/charset/Charset;
    .locals 2

    invoke-virtual {p0}, Lym/a0;->e()Lym/t;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lzm/c;->j:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lym/t;->b(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lzm/c;->j:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method

.method public static f(Lym/t;JLin/e;)Lym/a0;
    .locals 1
    .param p0    # Lym/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    new-instance v0, Lym/a0$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lym/a0$a;-><init>(Lym/t;JLin/e;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Lym/t;[B)Lym/a0;
    .locals 3
    .param p0    # Lym/t;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lin/c;

    invoke-direct {v0}, Lin/c;-><init>()V

    invoke-virtual {v0, p1}, Lin/c;->W([B)Lin/c;

    move-result-object v0

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lym/a0;->f(Lym/t;JLin/e;)Lym/a0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lym/a0;->j()Lin/e;

    move-result-object v0

    invoke-static {v0}, Lzm/c;->f(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract d()J
.end method

.method public abstract e()Lym/t;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract j()Lin/e;
.end method

.method public final l()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lym/a0;->j()Lin/e;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lym/a0;->c()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lzm/c;->c(Lin/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {v0, v1}, Lin/e;->N(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lzm/c;->f(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lzm/c;->f(Ljava/io/Closeable;)V

    throw v1
.end method
