.class public final Lcn/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lym/s;


# instance fields
.field private final a:Lym/u;

.field private final b:Z

.field private volatile c:Lbn/g;

.field private d:Ljava/lang/Object;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lym/u;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/j;->a:Lym/u;

    iput-boolean p2, p0, Lcn/j;->b:Z

    return-void
.end method

.method private c(Lym/r;)Lym/a;
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lym/r;->m()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcn/j;->a:Lym/u;

    invoke-virtual {v1}, Lym/u;->A()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iget-object v1, v0, Lcn/j;->a:Lym/u;

    invoke-virtual {v1}, Lym/u;->m()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    iget-object v3, v0, Lcn/j;->a:Lym/u;

    invoke-virtual {v3}, Lym/u;->c()Lym/f;

    move-result-object v3

    move-object v10, v1

    move-object v9, v2

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v9, v2

    move-object v10, v9

    move-object v11, v10

    :goto_0
    new-instance v1, Lym/a;

    invoke-virtual/range {p1 .. p1}, Lym/r;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lym/r;->w()I

    move-result v6

    iget-object v2, v0, Lcn/j;->a:Lym/u;

    invoke-virtual {v2}, Lym/u;->i()Lym/n;

    move-result-object v7

    iget-object v2, v0, Lcn/j;->a:Lym/u;

    invoke-virtual {v2}, Lym/u;->z()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v2, v0, Lcn/j;->a:Lym/u;

    invoke-virtual {v2}, Lym/u;->v()Lym/b;

    move-result-object v12

    iget-object v2, v0, Lcn/j;->a:Lym/u;

    invoke-virtual {v2}, Lym/u;->u()Ljava/net/Proxy;

    move-result-object v13

    iget-object v2, v0, Lcn/j;->a:Lym/u;

    invoke-virtual {v2}, Lym/u;->t()Ljava/util/List;

    move-result-object v14

    iget-object v2, v0, Lcn/j;->a:Lym/u;

    invoke-virtual {v2}, Lym/u;->f()Ljava/util/List;

    move-result-object v15

    iget-object v2, v0, Lcn/j;->a:Lym/u;

    invoke-virtual {v2}, Lym/u;->w()Ljava/net/ProxySelector;

    move-result-object v16

    move-object v4, v1

    invoke-direct/range {v4 .. v16}, Lym/a;-><init>(Ljava/lang/String;ILym/n;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lym/f;Lym/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    return-object v1
.end method

.method private d(Lym/z;Lym/b0;)Lym/x;
    .locals 6

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lym/z;->e()I

    move-result v0

    invoke-virtual {p1}, Lym/z;->s()Lym/x;

    move-result-object v1

    invoke-virtual {v1}, Lym/x;->f()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_b

    const/16 v2, 0x134

    if-eq v0, v2, :cond_b

    const/16 v2, 0x191

    if-eq v0, v2, :cond_a

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_7

    const/16 v2, 0x197

    if-eq v0, v2, :cond_4

    const/16 p2, 0x198

    if-eq v0, p2, :cond_0

    packed-switch v0, :pswitch_data_0

    return-object v4

    :cond_0
    iget-object v0, p0, Lcn/j;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->y()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {p1}, Lym/z;->s()Lym/x;

    move-result-object v0

    invoke-virtual {v0}, Lym/x;->a()Lym/y;

    invoke-virtual {p1}, Lym/z;->o()Lym/z;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lym/z;->o()Lym/z;

    move-result-object v0

    invoke-virtual {v0}, Lym/z;->e()I

    move-result v0

    if-ne v0, p2, :cond_2

    return-object v4

    :cond_2
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcn/j;->h(Lym/z;I)I

    move-result p2

    if-lez p2, :cond_3

    return-object v4

    :cond_3
    invoke-virtual {p1}, Lym/z;->s()Lym/x;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lym/b0;->b()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcn/j;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->u()Ljava/net/Proxy;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcn/j;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->v()Lym/b;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lym/b;->a(Lym/b0;Lym/z;)Lym/x;

    move-result-object p1

    return-object p1

    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {p1}, Lym/z;->o()Lym/z;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lym/z;->o()Lym/z;

    move-result-object p2

    invoke-virtual {p2}, Lym/z;->e()I

    move-result p2

    if-ne p2, v2, :cond_8

    return-object v4

    :cond_8
    const p2, 0x7fffffff

    invoke-direct {p0, p1, p2}, Lcn/j;->h(Lym/z;I)I

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {p1}, Lym/z;->s()Lym/x;

    move-result-object p1

    return-object p1

    :cond_9
    return-object v4

    :cond_a
    iget-object v0, p0, Lcn/j;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->a()Lym/b;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lym/b;->a(Lym/b0;Lym/z;)Lym/x;

    move-result-object p1

    return-object p1

    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c

    return-object v4

    :cond_c
    :pswitch_0
    iget-object p2, p0, Lcn/j;->a:Lym/u;

    invoke-virtual {p2}, Lym/u;->k()Z

    move-result p2

    if-nez p2, :cond_d

    return-object v4

    :cond_d
    const-string p2, "Location"

    invoke-virtual {p1, p2}, Lym/z;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_e

    return-object v4

    :cond_e
    invoke-virtual {p1}, Lym/z;->s()Lym/x;

    move-result-object v0

    invoke-virtual {v0}, Lym/x;->h()Lym/r;

    move-result-object v0

    invoke-virtual {v0, p2}, Lym/r;->A(Ljava/lang/String;)Lym/r;

    move-result-object p2

    if-nez p2, :cond_f

    return-object v4

    :cond_f
    invoke-virtual {p2}, Lym/r;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lym/z;->s()Lym/x;

    move-result-object v2

    invoke-virtual {v2}, Lym/x;->h()Lym/r;

    move-result-object v2

    invoke-virtual {v2}, Lym/r;->B()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcn/j;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->l()Z

    move-result v0

    if-nez v0, :cond_10

    return-object v4

    :cond_10
    invoke-virtual {p1}, Lym/z;->s()Lym/x;

    move-result-object v0

    invoke-virtual {v0}, Lym/x;->g()Lym/x$a;

    move-result-object v0

    invoke-static {v1}, Lcn/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {v1}, Lcn/f;->d(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v1}, Lcn/f;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v0, v3, v4}, Lym/x$a;->d(Ljava/lang/String;Lym/y;)Lym/x$a;

    goto :goto_1

    :cond_11
    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lym/z;->s()Lym/x;

    move-result-object v3

    invoke-virtual {v3}, Lym/x;->a()Lym/y;

    move-result-object v4

    :cond_12
    invoke-virtual {v0, v1, v4}, Lym/x$a;->d(Ljava/lang/String;Lym/y;)Lym/x$a;

    :goto_1
    if-nez v2, :cond_13

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lym/x$a;->f(Ljava/lang/String;)Lym/x$a;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lym/x$a;->f(Ljava/lang/String;)Lym/x$a;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lym/x$a;->f(Ljava/lang/String;)Lym/x$a;

    :cond_13
    invoke-direct {p0, p1, p2}, Lcn/j;->i(Lym/z;Lym/r;)Z

    move-result p1

    if-nez p1, :cond_14

    const-string p1, "Authorization"

    invoke-virtual {v0, p1}, Lym/x$a;->f(Ljava/lang/String;)Lym/x$a;

    :cond_14
    invoke-virtual {v0, p2}, Lym/x$a;->h(Lym/r;)Lym/x$a;

    move-result-object p1

    invoke-virtual {p1}, Lym/x$a;->a()Lym/x;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private f(Ljava/io/IOException;Z)Z
    .locals 3

    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/security/cert/CertificateException;

    if-eqz p2, :cond_3

    return v1

    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private g(Ljava/io/IOException;Lbn/g;ZLym/x;)Z
    .locals 2

    invoke-virtual {p2, p1}, Lbn/g;->q(Ljava/io/IOException;)V

    iget-object v0, p0, Lcn/j;->a:Lym/u;

    invoke-virtual {v0}, Lym/u;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p4}, Lym/x;->a()Lym/y;

    :cond_1
    invoke-direct {p0, p1, p3}, Lcn/j;->f(Ljava/io/IOException;Z)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-virtual {p2}, Lbn/g;->h()Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private h(Lym/z;I)I
    .locals 1

    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lym/z;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    const-string p2, "\\d+"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const p1, 0x7fffffff

    return p1
.end method

.method private i(Lym/z;Lym/r;)Z
    .locals 2

    invoke-virtual {p1}, Lym/z;->s()Lym/x;

    move-result-object p1

    invoke-virtual {p1}, Lym/x;->h()Lym/r;

    move-result-object p1

    invoke-virtual {p1}, Lym/r;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lym/r;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lym/r;->w()I

    move-result v0

    invoke-virtual {p2}, Lym/r;->w()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lym/r;->B()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lym/r;->B()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Lym/s$a;)Lym/z;
    .locals 14

    invoke-interface {p1}, Lym/s$a;->b()Lym/x;

    move-result-object v0

    check-cast p1, Lcn/g;

    invoke-virtual {p1}, Lcn/g;->f()Lym/d;

    move-result-object v7

    invoke-virtual {p1}, Lcn/g;->h()Lym/o;

    move-result-object v8

    new-instance v9, Lbn/g;

    iget-object v1, p0, Lcn/j;->a:Lym/u;

    invoke-virtual {v1}, Lym/u;->e()Lym/i;

    move-result-object v2

    invoke-virtual {v0}, Lym/x;->h()Lym/r;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/j;->c(Lym/r;)Lym/a;

    move-result-object v3

    iget-object v6, p0, Lcn/j;->d:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lbn/g;-><init>(Lym/i;Lym/a;Lym/d;Lym/o;Ljava/lang/Object;)V

    iput-object v9, p0, Lcn/j;->c:Lbn/g;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v2, v10

    move-object v1, v11

    :goto_0
    iget-boolean v3, p0, Lcn/j;->e:Z

    if-nez v3, :cond_8

    :try_start_0
    invoke-virtual {p1, v0, v9, v11, v11}, Lcn/g;->j(Lym/x;Lbn/g;Lcn/c;Lbn/c;)Lym/z;

    move-result-object v0
    :try_end_0
    .catch Lbn/e; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lym/z;->n()Lym/z$a;

    move-result-object v0

    invoke-virtual {v1}, Lym/z;->n()Lym/z$a;

    move-result-object v1

    invoke-virtual {v1, v11}, Lym/z$a;->b(Lym/a0;)Lym/z$a;

    move-result-object v1

    invoke-virtual {v1}, Lym/z$a;->c()Lym/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lym/z$a;->m(Lym/z;)Lym/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lym/z$a;->c()Lym/z;

    move-result-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v9}, Lbn/g;->o()Lym/b0;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/j;->d(Lym/z;Lym/b0;)Lym/x;

    move-result-object v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v12, :cond_1

    invoke-virtual {v9}, Lbn/g;->k()V

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lym/z;->c()Lym/a0;

    move-result-object v1

    invoke-static {v1}, Lzm/c;->f(Ljava/io/Closeable;)V

    add-int/lit8 v13, v2, 0x1

    const/16 v1, 0x14

    if-gt v13, v1, :cond_4

    invoke-virtual {v12}, Lym/x;->a()Lym/y;

    invoke-virtual {v12}, Lym/x;->h()Lym/r;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcn/j;->i(Lym/z;Lym/r;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v9}, Lbn/g;->k()V

    new-instance v9, Lbn/g;

    iget-object v1, p0, Lcn/j;->a:Lym/u;

    invoke-virtual {v1}, Lym/u;->e()Lym/i;

    move-result-object v2

    invoke-virtual {v12}, Lym/x;->h()Lym/r;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/j;->c(Lym/r;)Lym/a;

    move-result-object v3

    iget-object v6, p0, Lcn/j;->d:Ljava/lang/Object;

    move-object v1, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v1 .. v6}, Lbn/g;-><init>(Lym/i;Lym/a;Lym/d;Lym/o;Ljava/lang/Object;)V

    iput-object v9, p0, Lcn/j;->c:Lbn/g;

    goto :goto_1

    :cond_2
    invoke-virtual {v9}, Lbn/g;->c()Lcn/c;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    move-object v1, v0

    move-object v0, v12

    move v2, v13

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing the body of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {v9}, Lbn/g;->k()V

    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many follow-up requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    invoke-virtual {v9}, Lbn/g;->k()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_2
    instance-of v4, v3, Len/a;

    if-nez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    move v4, v10

    :goto_2
    invoke-direct {p0, v3, v9, v4, v0}, Lcn/j;->g(Ljava/io/IOException;Lbn/g;ZLym/x;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_0

    :cond_6
    throw v3

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Lbn/e;->c()Ljava/io/IOException;

    move-result-object v4

    invoke-direct {p0, v4, v9, v10, v0}, Lcn/j;->g(Ljava/io/IOException;Lbn/g;ZLym/x;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3}, Lbn/e;->b()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-virtual {v9, v11}, Lbn/g;->q(Ljava/io/IOException;)V

    invoke-virtual {v9}, Lbn/g;->k()V

    throw p1

    :cond_8
    invoke-virtual {v9}, Lbn/g;->k()V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/j;->e:Z

    iget-object v0, p0, Lcn/j;->c:Lbn/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbn/g;->b()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcn/j;->e:Z

    return v0
.end method

.method public j(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcn/j;->d:Ljava/lang/Object;

    return-void
.end method
