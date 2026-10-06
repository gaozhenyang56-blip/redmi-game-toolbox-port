.class public final Lan/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lym/s;


# instance fields
.field final a:Lan/d;


# direct methods
.method public constructor <init>(Lan/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lan/a;->a:Lan/d;

    return-void
.end method

.method private b(Lan/b;Lym/z;)Lym/z;
    .locals 4

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p1}, Lan/b;->b()Lin/s;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lym/z;->c()Lym/a0;

    move-result-object v1

    invoke-virtual {v1}, Lym/a0;->j()Lin/e;

    move-result-object v1

    invoke-static {v0}, Lin/l;->a(Lin/s;)Lin/d;

    move-result-object v0

    new-instance v2, Lan/a$a;

    invoke-direct {v2, p0, v1, p1, v0}, Lan/a$a;-><init>(Lan/a;Lin/e;Lan/b;Lin/d;)V

    const-string p1, "Content-Type"

    invoke-virtual {p2, p1}, Lym/z;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lym/z;->c()Lym/a0;

    move-result-object v0

    invoke-virtual {v0}, Lym/a0;->d()J

    move-result-wide v0

    invoke-virtual {p2}, Lym/z;->n()Lym/z$a;

    move-result-object p2

    new-instance v3, Lcn/h;

    invoke-static {v2}, Lin/l;->b(Lin/t;)Lin/e;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Lcn/h;-><init>(Ljava/lang/String;JLin/e;)V

    invoke-virtual {p2, v3}, Lym/z$a;->b(Lym/a0;)Lym/z$a;

    move-result-object p1

    invoke-virtual {p1}, Lym/z$a;->c()Lym/z;

    move-result-object p1

    return-object p1
.end method

.method private static c(Lym/q;Lym/q;)Lym/q;
    .locals 7

    new-instance v0, Lym/q$a;

    invoke-direct {v0}, Lym/q$a;-><init>()V

    invoke-virtual {p0}, Lym/q;->g()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lym/q;->e(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lym/q;->h(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lan/a;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Lan/a;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v4}, Lym/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_1
    sget-object v6, Lzm/a;->a:Lzm/a;

    invoke-virtual {v6, v0, v4, v5}, Lzm/a;->b(Lym/q$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lym/q;->g()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_5

    invoke-virtual {p1, v2}, Lym/q;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lan/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lan/a;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lzm/a;->a:Lzm/a;

    invoke-virtual {p1, v2}, Lym/q;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lzm/a;->b(Lym/q$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lym/q$a;->d()Lym/q;

    move-result-object p0

    return-object p0
.end method

.method static d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Content-Length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static f(Lym/z;)Lym/z;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lym/z;->c()Lym/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lym/z;->n()Lym/z$a;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lym/z$a;->b(Lym/a0;)Lym/z$a;

    move-result-object p0

    invoke-virtual {p0}, Lym/z$a;->c()Lym/z;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Lym/s$a;)Lym/z;
    .locals 5

    iget-object v0, p0, Lan/a;->a:Lan/d;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lym/s$a;->b()Lym/x;

    move-result-object v1

    invoke-interface {v0, v1}, Lan/d;->b(Lym/x;)Lym/z;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Lan/c$a;

    invoke-interface {p1}, Lym/s$a;->b()Lym/x;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lan/c$a;-><init>(JLym/x;Lym/z;)V

    invoke-virtual {v3}, Lan/c$a;->c()Lan/c;

    move-result-object v1

    iget-object v2, v1, Lan/c;->a:Lym/x;

    iget-object v3, v1, Lan/c;->b:Lym/z;

    iget-object v4, p0, Lan/a;->a:Lan/d;

    if-eqz v4, :cond_1

    invoke-interface {v4, v1}, Lan/d;->d(Lan/c;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lym/z;->c()Lym/a0;

    move-result-object v1

    invoke-static {v1}, Lzm/c;->f(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    new-instance v0, Lym/z$a;

    invoke-direct {v0}, Lym/z$a;-><init>()V

    invoke-interface {p1}, Lym/s$a;->b()Lym/x;

    move-result-object p1

    invoke-virtual {v0, p1}, Lym/z$a;->p(Lym/x;)Lym/z$a;

    move-result-object p1

    sget-object v0, Lym/v;->c:Lym/v;

    invoke-virtual {p1, v0}, Lym/z$a;->n(Lym/v;)Lym/z$a;

    move-result-object p1

    const/16 v0, 0x1f8

    invoke-virtual {p1, v0}, Lym/z$a;->g(I)Lym/z$a;

    move-result-object p1

    const-string v0, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {p1, v0}, Lym/z$a;->k(Ljava/lang/String;)Lym/z$a;

    move-result-object p1

    sget-object v0, Lzm/c;->c:Lym/a0;

    invoke-virtual {p1, v0}, Lym/z$a;->b(Lym/a0;)Lym/z$a;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lym/z$a;->q(J)Lym/z$a;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lym/z$a;->o(J)Lym/z$a;

    move-result-object p1

    invoke-virtual {p1}, Lym/z$a;->c()Lym/z;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    invoke-virtual {v3}, Lym/z;->n()Lym/z$a;

    move-result-object p1

    invoke-static {v3}, Lan/a;->f(Lym/z;)Lym/z;

    move-result-object v0

    invoke-virtual {p1, v0}, Lym/z$a;->d(Lym/z;)Lym/z$a;

    move-result-object p1

    invoke-virtual {p1}, Lym/z$a;->c()Lym/z;

    move-result-object p1

    return-object p1

    :cond_4
    :try_start_0
    invoke-interface {p1, v2}, Lym/s$a;->d(Lym/x;)Lym/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lym/z;->c()Lym/a0;

    move-result-object v0

    invoke-static {v0}, Lzm/c;->f(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lym/z;->e()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_6

    invoke-virtual {v3}, Lym/z;->n()Lym/z$a;

    move-result-object v0

    invoke-virtual {v3}, Lym/z;->l()Lym/q;

    move-result-object v1

    invoke-virtual {p1}, Lym/z;->l()Lym/q;

    move-result-object v2

    invoke-static {v1, v2}, Lan/a;->c(Lym/q;Lym/q;)Lym/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lym/z$a;->j(Lym/q;)Lym/z$a;

    move-result-object v0

    invoke-virtual {p1}, Lym/z;->t()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lym/z$a;->q(J)Lym/z$a;

    move-result-object v0

    invoke-virtual {p1}, Lym/z;->p()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lym/z$a;->o(J)Lym/z$a;

    move-result-object v0

    invoke-static {v3}, Lan/a;->f(Lym/z;)Lym/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lym/z$a;->d(Lym/z;)Lym/z$a;

    move-result-object v0

    invoke-static {p1}, Lan/a;->f(Lym/z;)Lym/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lym/z$a;->l(Lym/z;)Lym/z$a;

    move-result-object v0

    invoke-virtual {v0}, Lym/z$a;->c()Lym/z;

    move-result-object v0

    invoke-virtual {p1}, Lym/z;->c()Lym/a0;

    move-result-object p1

    invoke-virtual {p1}, Lym/a0;->close()V

    iget-object p1, p0, Lan/a;->a:Lan/d;

    invoke-interface {p1}, Lan/d;->e()V

    iget-object p1, p0, Lan/a;->a:Lan/d;

    invoke-interface {p1, v3, v0}, Lan/d;->a(Lym/z;Lym/z;)V

    return-object v0

    :cond_6
    invoke-virtual {v3}, Lym/z;->c()Lym/a0;

    move-result-object v0

    invoke-static {v0}, Lzm/c;->f(Ljava/io/Closeable;)V

    :cond_7
    invoke-virtual {p1}, Lym/z;->n()Lym/z$a;

    move-result-object v0

    invoke-static {v3}, Lan/a;->f(Lym/z;)Lym/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lym/z$a;->d(Lym/z;)Lym/z$a;

    move-result-object v0

    invoke-static {p1}, Lan/a;->f(Lym/z;)Lym/z;

    move-result-object p1

    invoke-virtual {v0, p1}, Lym/z$a;->l(Lym/z;)Lym/z$a;

    move-result-object p1

    invoke-virtual {p1}, Lym/z$a;->c()Lym/z;

    move-result-object p1

    iget-object v0, p0, Lan/a;->a:Lan/d;

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcn/e;->c(Lym/z;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1, v2}, Lan/c;->a(Lym/z;Lym/x;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lan/a;->a:Lan/d;

    invoke-interface {v0, p1}, Lan/d;->c(Lym/z;)Lan/b;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lan/a;->b(Lan/b;Lym/z;)Lym/z;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-virtual {v2}, Lym/x;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_1
    iget-object v0, p0, Lan/a;->a:Lan/d;

    invoke-interface {v0, v2}, Lan/d;->f(Lym/x;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_9
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lym/z;->c()Lym/a0;

    move-result-object v0

    invoke-static {v0}, Lzm/c;->f(Ljava/io/Closeable;)V

    :cond_a
    throw p1
.end method
