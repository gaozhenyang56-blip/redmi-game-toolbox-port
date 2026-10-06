.class public final Lbn/c;
.super Len/g$h;
.source "SourceFile"

# interfaces
.implements Lym/h;


# instance fields
.field private final b:Lym/i;

.field private final c:Lym/b0;

.field private d:Ljava/net/Socket;

.field private e:Ljava/net/Socket;

.field private f:Lym/p;

.field private g:Lym/v;

.field private h:Len/g;

.field private i:Lin/e;

.field private j:Lin/d;

.field public k:Z

.field public l:I

.field public m:I

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lbn/g;",
            ">;>;"
        }
    .end annotation
.end field

.field public o:J


# direct methods
.method public constructor <init>(Lym/i;Lym/b0;)V
    .locals 2

    invoke-direct {p0}, Len/g$h;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lbn/c;->m:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbn/c;->n:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lbn/c;->o:J

    iput-object p1, p0, Lbn/c;->b:Lym/i;

    iput-object p2, p0, Lbn/c;->c:Lym/b0;

    return-void
.end method

.method private e(IILym/d;Lym/o;)V
    .locals 4

    iget-object v0, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v0}, Lym/b0;->b()Ljava/net/Proxy;

    move-result-object v0

    iget-object v1, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->a()Lym/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lym/a;->j()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lbn/c;->d:Ljava/net/Socket;

    iget-object v1, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {p4, p3, v1, v0}, Lym/o;->f(Lym/d;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    iget-object p3, p0, Lbn/c;->d:Ljava/net/Socket;

    invoke-virtual {p3, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    :try_start_0
    invoke-static {}, Lfn/f;->j()Lfn/f;

    move-result-object p2

    iget-object p3, p0, Lbn/c;->d:Ljava/net/Socket;

    iget-object p4, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {p4}, Lym/b0;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p2, p3, p4, p1}, Lfn/f;->h(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object p1, p0, Lbn/c;->d:Ljava/net/Socket;

    invoke-static {p1}, Lin/l;->h(Ljava/net/Socket;)Lin/t;

    move-result-object p1

    invoke-static {p1}, Lin/l;->b(Lin/t;)Lin/e;

    move-result-object p1

    iput-object p1, p0, Lbn/c;->i:Lin/e;

    iget-object p1, p0, Lbn/c;->d:Ljava/net/Socket;

    invoke-static {p1}, Lin/l;->e(Ljava/net/Socket;)Lin/s;

    move-result-object p1

    invoke-static {p1}, Lin/l;->a(Lin/s;)Lin/d;

    move-result-object p1

    iput-object p1, p0, Lbn/c;->j:Lin/d;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {p4}, Lym/b0;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
.end method

.method private f(Lbn/b;)V
    .locals 7

    iget-object v0, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v0}, Lym/b0;->a()Lym/a;

    move-result-object v0

    invoke-virtual {v0}, Lym/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lbn/c;->d:Ljava/net/Socket;

    invoke-virtual {v0}, Lym/a;->l()Lym/r;

    move-result-object v4

    invoke-virtual {v4}, Lym/r;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lym/a;->l()Lym/r;

    move-result-object v5

    invoke-virtual {v5}, Lym/r;->w()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1, v1}, Lbn/b;->a(Ljavax/net/ssl/SSLSocket;)Lym/j;

    move-result-object p1

    invoke-virtual {p1}, Lym/j;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lfn/f;->j()Lfn/f;

    move-result-object v3

    invoke-virtual {v0}, Lym/a;->l()Lym/r;

    move-result-object v4

    invoke-virtual {v4}, Lym/r;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lym/a;->f()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lfn/f;->g(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-static {v3}, Lym/p;->b(Ljavax/net/ssl/SSLSession;)Lym/p;

    move-result-object v4

    invoke-virtual {v0}, Lym/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v0}, Lym/a;->l()Lym/r;

    move-result-object v6

    invoke-virtual {v6}, Lym/r;->l()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v4}, Lym/p;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "Hostname "

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :try_start_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lym/a;->l()Lym/r;

    move-result-object v0

    invoke-virtual {v0}, Lym/r;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n    certificate: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lym/f;->c(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lhn/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lym/a;->l()Lym/r;

    move-result-object v0

    invoke-virtual {v0}, Lym/r;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v0}, Lym/a;->a()Lym/f;

    move-result-object v3

    invoke-virtual {v0}, Lym/a;->l()Lym/r;

    move-result-object v0

    invoke-virtual {v0}, Lym/r;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lym/p;->c()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lym/f;->a(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1}, Lym/j;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lfn/f;->j()Lfn/f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lfn/f;->l(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iput-object v1, p0, Lbn/c;->e:Ljava/net/Socket;

    invoke-static {v1}, Lin/l;->h(Ljava/net/Socket;)Lin/t;

    move-result-object p1

    invoke-static {p1}, Lin/l;->b(Lin/t;)Lin/e;

    move-result-object p1

    iput-object p1, p0, Lbn/c;->i:Lin/e;

    iget-object p1, p0, Lbn/c;->e:Ljava/net/Socket;

    invoke-static {p1}, Lin/l;->e(Ljava/net/Socket;)Lin/s;

    move-result-object p1

    invoke-static {p1}, Lin/l;->a(Lin/s;)Lin/d;

    move-result-object p1

    iput-object p1, p0, Lbn/c;->j:Lin/d;

    iput-object v4, p0, Lbn/c;->f:Lym/p;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lym/v;->a(Ljava/lang/String;)Lym/v;

    move-result-object p1

    goto :goto_0

    :cond_4
    sget-object p1, Lym/v;->c:Lym/v;

    :goto_0
    iput-object p1, p0, Lbn/c;->g:Lym/v;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lfn/f;->j()Lfn/f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lfn/f;->a(Ljavax/net/ssl/SSLSocket;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    :try_start_3
    invoke-static {p1}, Lzm/c;->z(Ljava/lang/AssertionError;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v2, :cond_6

    invoke-static {}, Lfn/f;->j()Lfn/f;

    move-result-object v0

    invoke-virtual {v0, v2}, Lfn/f;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_6
    invoke-static {v2}, Lzm/c;->g(Ljava/net/Socket;)V

    throw p1
.end method

.method private g(IIILym/d;Lym/o;)V
    .locals 6

    invoke-direct {p0}, Lbn/c;->i()Lym/x;

    move-result-object v0

    invoke-virtual {v0}, Lym/x;->h()Lym/r;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    invoke-direct {p0, p1, p2, p4, p5}, Lbn/c;->e(IILym/d;Lym/o;)V

    invoke-direct {p0, p2, p3, v0, v1}, Lbn/c;->h(IILym/x;Lym/r;)Lym/x;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lbn/c;->d:Ljava/net/Socket;

    invoke-static {v3}, Lzm/c;->g(Ljava/net/Socket;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lbn/c;->d:Ljava/net/Socket;

    iput-object v3, p0, Lbn/c;->j:Lin/d;

    iput-object v3, p0, Lbn/c;->i:Lin/e;

    iget-object v4, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v4}, Lym/b0;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v5}, Lym/b0;->b()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Lym/o;->d(Lym/d;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lym/v;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private h(IILym/x;Lym/r;)Lym/x;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lzm/c;->r(Lym/r;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :goto_0
    new-instance v0, Ldn/a;

    iget-object v1, p0, Lbn/c;->i:Lin/e;

    iget-object v2, p0, Lbn/c;->j:Lin/d;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Ldn/a;-><init>(Lym/u;Lbn/g;Lin/e;Lin/d;)V

    iget-object v1, p0, Lbn/c;->i:Lin/e;

    invoke-interface {v1}, Lin/t;->b()Lin/u;

    move-result-object v1

    int-to-long v4, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v2}, Lin/u;->g(JLjava/util/concurrent/TimeUnit;)Lin/u;

    iget-object v1, p0, Lbn/c;->j:Lin/d;

    invoke-interface {v1}, Lin/s;->b()Lin/u;

    move-result-object v1

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5, v2}, Lin/u;->g(JLjava/util/concurrent/TimeUnit;)Lin/u;

    invoke-virtual {p3}, Lym/x;->d()Lym/q;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ldn/a;->o(Lym/q;Ljava/lang/String;)V

    invoke-virtual {v0}, Ldn/a;->b()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ldn/a;->e(Z)Lym/z$a;

    move-result-object v1

    invoke-virtual {v1, p3}, Lym/z$a;->p(Lym/x;)Lym/z$a;

    move-result-object p3

    invoke-virtual {p3}, Lym/z$a;->c()Lym/z;

    move-result-object p3

    invoke-static {p3}, Lcn/e;->b(Lym/z;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const-wide/16 v4, 0x0

    :cond_0
    invoke-virtual {v0, v4, v5}, Ldn/a;->k(J)Lin/t;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v0, v1, v2}, Lzm/c;->C(Lin/t;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {v0}, Lin/t;->close()V

    invoke-virtual {p3}, Lym/z;->e()I

    move-result v0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x197

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v0}, Lym/b0;->a()Lym/a;

    move-result-object v0

    invoke-virtual {v0}, Lym/a;->h()Lym/b;

    move-result-object v0

    iget-object v1, p0, Lbn/c;->c:Lym/b0;

    invoke-interface {v0, v1, p3}, Lym/b;->a(Lym/b0;Lym/z;)Lym/x;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "Connection"

    invoke-virtual {p3, v1}, Lym/z;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "close"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-object v0

    :cond_1
    move-object p3, v0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lym/z;->e()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p1, p0, Lbn/c;->i:Lin/e;

    invoke-interface {p1}, Lin/e;->a()Lin/c;

    move-result-object p1

    invoke-virtual {p1}, Lin/c;->I()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lbn/c;->j:Lin/d;

    invoke-interface {p1}, Lin/d;->a()Lin/c;

    move-result-object p1

    invoke-virtual {p1}, Lin/c;->I()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private i()Lym/x;
    .locals 4

    new-instance v0, Lym/x$a;

    invoke-direct {v0}, Lym/x$a;-><init>()V

    iget-object v1, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->a()Lym/a;

    move-result-object v1

    invoke-virtual {v1}, Lym/a;->l()Lym/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lym/x$a;->h(Lym/r;)Lym/x$a;

    move-result-object v0

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lym/x$a;->d(Ljava/lang/String;Lym/y;)Lym/x$a;

    move-result-object v0

    iget-object v1, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->a()Lym/a;

    move-result-object v1

    invoke-virtual {v1}, Lym/a;->l()Lym/r;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lzm/c;->r(Lym/r;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lym/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Lym/x$a;

    move-result-object v0

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lym/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Lym/x$a;

    move-result-object v0

    invoke-static {}, Lzm/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lym/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Lym/x$a;

    move-result-object v0

    invoke-virtual {v0}, Lym/x$a;->a()Lym/x;

    move-result-object v0

    new-instance v1, Lym/z$a;

    invoke-direct {v1}, Lym/z$a;-><init>()V

    invoke-virtual {v1, v0}, Lym/z$a;->p(Lym/x;)Lym/z$a;

    move-result-object v1

    sget-object v2, Lym/v;->c:Lym/v;

    invoke-virtual {v1, v2}, Lym/z$a;->n(Lym/v;)Lym/z$a;

    move-result-object v1

    const/16 v2, 0x197

    invoke-virtual {v1, v2}, Lym/z$a;->g(I)Lym/z$a;

    move-result-object v1

    const-string v2, "Preemptive Authenticate"

    invoke-virtual {v1, v2}, Lym/z$a;->k(Ljava/lang/String;)Lym/z$a;

    move-result-object v1

    sget-object v2, Lzm/c;->c:Lym/a0;

    invoke-virtual {v1, v2}, Lym/z$a;->b(Lym/a0;)Lym/z$a;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lym/z$a;->q(J)Lym/z$a;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lym/z$a;->o(J)Lym/z$a;

    move-result-object v1

    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    invoke-virtual {v1, v2, v3}, Lym/z$a;->i(Ljava/lang/String;Ljava/lang/String;)Lym/z$a;

    move-result-object v1

    invoke-virtual {v1}, Lym/z$a;->c()Lym/z;

    move-result-object v1

    iget-object v2, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v2}, Lym/b0;->a()Lym/a;

    move-result-object v2

    invoke-virtual {v2}, Lym/a;->h()Lym/b;

    move-result-object v2

    iget-object v3, p0, Lbn/c;->c:Lym/b0;

    invoke-interface {v2, v3, v1}, Lym/b;->a(Lym/b0;Lym/z;)Lym/x;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private j(Lbn/b;ILym/d;Lym/o;)V
    .locals 1

    iget-object v0, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v0}, Lym/b0;->a()Lym/a;

    move-result-object v0

    invoke-virtual {v0}, Lym/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {p1}, Lym/b0;->a()Lym/a;

    move-result-object p1

    invoke-virtual {p1}, Lym/a;->f()Ljava/util/List;

    move-result-object p1

    sget-object p3, Lym/v;->f:Lym/v;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbn/c;->d:Ljava/net/Socket;

    iput-object p1, p0, Lbn/c;->e:Ljava/net/Socket;

    iput-object p3, p0, Lbn/c;->g:Lym/v;

    invoke-direct {p0, p2}, Lbn/c;->r(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lbn/c;->d:Ljava/net/Socket;

    iput-object p1, p0, Lbn/c;->e:Ljava/net/Socket;

    sget-object p1, Lym/v;->c:Lym/v;

    iput-object p1, p0, Lbn/c;->g:Lym/v;

    return-void

    :cond_1
    invoke-virtual {p4, p3}, Lym/o;->u(Lym/d;)V

    invoke-direct {p0, p1}, Lbn/c;->f(Lbn/b;)V

    iget-object p1, p0, Lbn/c;->f:Lym/p;

    invoke-virtual {p4, p3, p1}, Lym/o;->t(Lym/d;Lym/p;)V

    iget-object p1, p0, Lbn/c;->g:Lym/v;

    sget-object p3, Lym/v;->e:Lym/v;

    if-ne p1, p3, :cond_2

    invoke-direct {p0, p2}, Lbn/c;->r(I)V

    :cond_2
    return-void
.end method

.method private r(I)V
    .locals 5

    iget-object v0, p0, Lbn/c;->e:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Len/g$g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Len/g$g;-><init>(Z)V

    iget-object v1, p0, Lbn/c;->e:Ljava/net/Socket;

    iget-object v2, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v2}, Lym/b0;->a()Lym/a;

    move-result-object v2

    invoke-virtual {v2}, Lym/a;->l()Lym/r;

    move-result-object v2

    invoke-virtual {v2}, Lym/r;->l()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbn/c;->i:Lin/e;

    iget-object v4, p0, Lbn/c;->j:Lin/d;

    invoke-virtual {v0, v1, v2, v3, v4}, Len/g$g;->d(Ljava/net/Socket;Ljava/lang/String;Lin/e;Lin/d;)Len/g$g;

    move-result-object v0

    invoke-virtual {v0, p0}, Len/g$g;->b(Len/g$h;)Len/g$g;

    move-result-object v0

    invoke-virtual {v0, p1}, Len/g$g;->c(I)Len/g$g;

    move-result-object p1

    invoke-virtual {p1}, Len/g$g;->a()Len/g;

    move-result-object p1

    iput-object p1, p0, Lbn/c;->h:Len/g;

    invoke-virtual {p1}, Len/g;->M()V

    return-void
.end method


# virtual methods
.method public a(Len/g;)V
    .locals 1

    iget-object v0, p0, Lbn/c;->b:Lym/i;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Len/g;->o()I

    move-result p1

    iput p1, p0, Lbn/c;->m:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Len/i;)V
    .locals 1

    sget-object v0, Len/b;->f:Len/b;

    invoke-virtual {p1, v0}, Len/i;->f(Len/b;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lbn/c;->d:Ljava/net/Socket;

    invoke-static {v0}, Lzm/c;->g(Ljava/net/Socket;)V

    return-void
.end method

.method public d(IIIIZLym/d;Lym/o;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    iget-object v0, v7, Lbn/c;->g:Lym/v;

    if-nez v0, :cond_b

    iget-object v0, v7, Lbn/c;->c:Lym/b0;

    invoke-virtual {v0}, Lym/b0;->a()Lym/a;

    move-result-object v0

    invoke-virtual {v0}, Lym/a;->b()Ljava/util/List;

    move-result-object v0

    new-instance v10, Lbn/b;

    invoke-direct {v10, v0}, Lbn/b;-><init>(Ljava/util/List;)V

    iget-object v1, v7, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->a()Lym/a;

    move-result-object v1

    invoke-virtual {v1}, Lym/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Lym/j;->j:Lym/j;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lbn/c;->c:Lym/b0;

    invoke-virtual {v0}, Lym/b0;->a()Lym/a;

    move-result-object v0

    invoke-virtual {v0}, Lym/a;->l()Lym/r;

    move-result-object v0

    invoke-virtual {v0}, Lym/r;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lfn/f;->j()Lfn/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lfn/f;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lbn/e;

    new-instance v2, Ljava/net/UnknownServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lbn/e;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_1
    new-instance v0, Lbn/e;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbn/e;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_2
    iget-object v0, v7, Lbn/c;->c:Lym/b0;

    invoke-virtual {v0}, Lym/b0;->a()Lym/a;

    move-result-object v0

    invoke-virtual {v0}, Lym/a;->f()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lym/v;->f:Lym/v;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_0
    const/4 v11, 0x0

    move-object v12, v11

    :goto_1
    :try_start_0
    iget-object v0, v7, Lbn/c;->c:Lym/b0;

    invoke-virtual {v0}, Lym/b0;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lbn/c;->g(IIILym/d;Lym/o;)V

    iget-object v0, v7, Lbn/c;->d:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_2

    :cond_4
    move/from16 v13, p1

    move/from16 v14, p2

    :try_start_1
    invoke-direct {v7, v13, v14, v8, v9}, Lbn/c;->e(IILym/d;Lym/o;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move/from16 v15, p4

    :try_start_2
    invoke-direct {v7, v10, v15, v8, v9}, Lbn/c;->j(Lbn/b;ILym/d;Lym/o;)V

    iget-object v0, v7, Lbn/c;->c:Lym/b0;

    invoke-virtual {v0}, Lym/b0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Lbn/c;->g:Lym/v;

    invoke-virtual {v9, v8, v0, v1, v2}, Lym/o;->d(Lym/d;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lym/v;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    iget-object v0, v7, Lbn/c;->c:Lym/b0;

    invoke-virtual {v0}, Lym/b0;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lbn/c;->d:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    new-instance v1, Lbn/e;

    invoke-direct {v1, v0}, Lbn/e;-><init>(Ljava/io/IOException;)V

    throw v1

    :cond_6
    :goto_4
    iget-object v0, v7, Lbn/c;->h:Len/g;

    if-eqz v0, :cond_7

    iget-object v1, v7, Lbn/c;->b:Lym/i;

    monitor-enter v1

    :try_start_3
    iget-object v0, v7, Lbn/c;->h:Len/g;

    invoke-virtual {v0}, Len/g;->o()I

    move-result v0

    iput v0, v7, Lbn/c;->m:I

    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v13, p1

    move/from16 v14, p2

    :goto_6
    move/from16 v15, p4

    :goto_7
    iget-object v1, v7, Lbn/c;->e:Ljava/net/Socket;

    invoke-static {v1}, Lzm/c;->g(Ljava/net/Socket;)V

    iget-object v1, v7, Lbn/c;->d:Ljava/net/Socket;

    invoke-static {v1}, Lzm/c;->g(Ljava/net/Socket;)V

    iput-object v11, v7, Lbn/c;->e:Ljava/net/Socket;

    iput-object v11, v7, Lbn/c;->d:Ljava/net/Socket;

    iput-object v11, v7, Lbn/c;->i:Lin/e;

    iput-object v11, v7, Lbn/c;->j:Lin/d;

    iput-object v11, v7, Lbn/c;->f:Lym/p;

    iput-object v11, v7, Lbn/c;->g:Lym/v;

    iput-object v11, v7, Lbn/c;->h:Len/g;

    iget-object v1, v7, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->b()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lym/o;->e(Lym/d;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lym/v;Ljava/io/IOException;)V

    if-nez v12, :cond_8

    new-instance v12, Lbn/e;

    invoke-direct {v12, v0}, Lbn/e;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    :cond_8
    invoke-virtual {v12, v0}, Lbn/e;->a(Ljava/io/IOException;)V

    :goto_8
    if-eqz p5, :cond_9

    invoke-virtual {v10, v0}, Lbn/b;->b(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_1

    :cond_9
    throw v12

    :cond_a
    new-instance v0, Lbn/e;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lbn/e;-><init>(Ljava/io/IOException;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()Lym/p;
    .locals 1

    iget-object v0, p0, Lbn/c;->f:Lym/p;

    return-object v0
.end method

.method public l(Lym/a;Lym/b0;)Z
    .locals 4
    .param p2    # Lym/b0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lbn/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lbn/c;->m:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lbn/c;->k:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lzm/a;->a:Lzm/a;

    iget-object v1, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->a()Lym/a;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lzm/a;->g(Lym/a;Lym/a;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Lym/a;->l()Lym/r;

    move-result-object v0

    invoke-virtual {v0}, Lym/r;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lbn/c;->p()Lym/b0;

    move-result-object v1

    invoke-virtual {v1}, Lym/b0;->a()Lym/a;

    move-result-object v1

    invoke-virtual {v1}, Lym/a;->l()Lym/r;

    move-result-object v1

    invoke-virtual {v1}, Lym/r;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lbn/c;->h:Len/g;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-nez p2, :cond_4

    return v2

    :cond_4
    invoke-virtual {p2}, Lym/b0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    :cond_5
    iget-object v0, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v0}, Lym/b0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_6

    return v2

    :cond_6
    iget-object v0, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v0}, Lym/b0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Lym/b0;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    invoke-virtual {p2}, Lym/b0;->a()Lym/a;

    move-result-object p2

    invoke-virtual {p2}, Lym/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lhn/d;->a:Lhn/d;

    if-eq p2, v0, :cond_8

    return v2

    :cond_8
    invoke-virtual {p1}, Lym/a;->l()Lym/r;

    move-result-object p2

    invoke-virtual {p0, p2}, Lbn/c;->s(Lym/r;)Z

    move-result p2

    if-nez p2, :cond_9

    return v2

    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lym/a;->a()Lym/f;

    move-result-object p2

    invoke-virtual {p1}, Lym/a;->l()Lym/r;

    move-result-object p1

    invoke-virtual {p1}, Lym/r;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lbn/c;->k()Lym/p;

    move-result-object v0

    invoke-virtual {v0}, Lym/p;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lym/f;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    :cond_a
    :goto_0
    return v2
.end method

.method public m(Z)Z
    .locals 4

    iget-object v0, p0, Lbn/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lbn/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lbn/c;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbn/c;->h:Len/g;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Len/g;->n()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_1
    if-eqz p1, :cond_3

    :try_start_0
    iget-object p1, p0, Lbn/c;->e:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lbn/c;->e:Ljava/net/Socket;

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lbn/c;->i:Lin/e;

    invoke-interface {v0}, Lin/e;->I()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lbn/c;->e:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :cond_2
    iget-object v0, p0, Lbn/c;->e:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return v2

    :catchall_0
    move-exception v0

    iget-object v3, p0, Lbn/c;->e:Ljava/net/Socket;

    invoke-virtual {v3, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v1

    :catch_1
    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lbn/c;->h:Len/g;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o(Lym/u;Lym/s$a;Lbn/g;)Lcn/c;
    .locals 4

    iget-object v0, p0, Lbn/c;->h:Len/g;

    if-eqz v0, :cond_0

    new-instance v0, Len/f;

    iget-object v1, p0, Lbn/c;->h:Len/g;

    invoke-direct {v0, p1, p2, p3, v1}, Len/f;-><init>(Lym/u;Lym/s$a;Lbn/g;Len/g;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lbn/c;->e:Ljava/net/Socket;

    invoke-interface {p2}, Lym/s$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lbn/c;->i:Lin/e;

    invoke-interface {v0}, Lin/t;->b()Lin/u;

    move-result-object v0

    invoke-interface {p2}, Lym/s$a;->a()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lin/u;->g(JLjava/util/concurrent/TimeUnit;)Lin/u;

    iget-object v0, p0, Lbn/c;->j:Lin/d;

    invoke-interface {v0}, Lin/s;->b()Lin/u;

    move-result-object v0

    invoke-interface {p2}, Lym/s$a;->c()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2, v3}, Lin/u;->g(JLjava/util/concurrent/TimeUnit;)Lin/u;

    new-instance p2, Ldn/a;

    iget-object v0, p0, Lbn/c;->i:Lin/e;

    iget-object v1, p0, Lbn/c;->j:Lin/d;

    invoke-direct {p2, p1, p3, v0, v1}, Ldn/a;-><init>(Lym/u;Lbn/g;Lin/e;Lin/d;)V

    return-object p2
.end method

.method public p()Lym/b0;
    .locals 1

    iget-object v0, p0, Lbn/c;->c:Lym/b0;

    return-object v0
.end method

.method public q()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lbn/c;->e:Ljava/net/Socket;

    return-object v0
.end method

.method public s(Lym/r;)Z
    .locals 4

    invoke-virtual {p1}, Lym/r;->w()I

    move-result v0

    iget-object v1, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->a()Lym/a;

    move-result-object v1

    invoke-virtual {v1}, Lym/a;->l()Lym/r;

    move-result-object v1

    invoke-virtual {v1}, Lym/r;->w()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lym/r;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->a()Lym/a;

    move-result-object v1

    invoke-virtual {v1}, Lym/a;->l()Lym/r;

    move-result-object v1

    invoke-virtual {v1}, Lym/r;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lbn/c;->f:Lym/p;

    if-eqz v0, :cond_1

    sget-object v0, Lhn/d;->a:Lhn/d;

    invoke-virtual {p1}, Lym/r;->l()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lbn/c;->f:Lym/p;

    invoke-virtual {v3}, Lym/p;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, p1, v3}, Lhn/d;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v1

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->a()Lym/a;

    move-result-object v1

    invoke-virtual {v1}, Lym/a;->l()Lym/r;

    move-result-object v1

    invoke-virtual {v1}, Lym/r;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->a()Lym/a;

    move-result-object v1

    invoke-virtual {v1}, Lym/a;->l()Lym/r;

    move-result-object v1

    invoke-virtual {v1}, Lym/r;->w()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbn/c;->c:Lym/b0;

    invoke-virtual {v1}, Lym/b0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbn/c;->f:Lym/p;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lym/p;->a()Lym/g;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbn/c;->g:Lym/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
