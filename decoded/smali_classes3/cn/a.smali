.class public final Lcn/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lym/s;


# instance fields
.field private final a:Lym/l;


# direct methods
.method public constructor <init>(Lym/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/a;->a:Lym/l;

    return-void
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lym/k;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lym/k;

    invoke-virtual {v3}, Lym/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lym/k;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lym/s$a;)Lym/z;
    .locals 10

    invoke-interface {p1}, Lym/s$a;->b()Lym/x;

    move-result-object v0

    invoke-virtual {v0}, Lym/x;->g()Lym/x$a;

    move-result-object v1

    invoke-virtual {v0}, Lym/x;->a()Lym/y;

    move-result-object v2

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lym/y;->b()Lym/t;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lym/t;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lym/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Lym/x$a;

    :cond_0
    invoke-virtual {v2}, Lym/y;->a()J

    move-result-wide v7

    cmp-long v2, v7, v4

    const-string v9, "Transfer-Encoding"

    if-eqz v2, :cond_1

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Lym/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Lym/x$a;

    invoke-virtual {v1, v9}, Lym/x$a;->f(Ljava/lang/String;)Lym/x$a;

    goto :goto_0

    :cond_1
    const-string v2, "chunked"

    invoke-virtual {v1, v9, v2}, Lym/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Lym/x$a;

    invoke-virtual {v1, v6}, Lym/x$a;->f(Ljava/lang/String;)Lym/x$a;

    :cond_2
    :goto_0
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Lym/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    invoke-virtual {v0}, Lym/x;->h()Lym/r;

    move-result-object v7

    invoke-static {v7, v8}, Lzm/c;->r(Lym/r;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lym/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Lym/x$a;

    :cond_3
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lym/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Keep-Alive"

    invoke-virtual {v1, v2, v7}, Lym/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Lym/x$a;

    :cond_4
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Lym/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    if-nez v7, :cond_5

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Lym/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v8, 0x1

    invoke-virtual {v1, v2, v9}, Lym/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Lym/x$a;

    :cond_5
    iget-object v2, p0, Lcn/a;->a:Lym/l;

    invoke-virtual {v0}, Lym/x;->h()Lym/r;

    move-result-object v7

    invoke-interface {v2, v7}, Lym/l;->b(Lym/r;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0, v2}, Lcn/a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "Cookie"

    invoke-virtual {v1, v7, v2}, Lym/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Lym/x$a;

    :cond_6
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2}, Lym/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-static {}, Lzm/d;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lym/x$a;->b(Ljava/lang/String;Ljava/lang/String;)Lym/x$a;

    :cond_7
    invoke-virtual {v1}, Lym/x$a;->a()Lym/x;

    move-result-object v1

    invoke-interface {p1, v1}, Lym/s$a;->d(Lym/x;)Lym/z;

    move-result-object p1

    iget-object v1, p0, Lcn/a;->a:Lym/l;

    invoke-virtual {v0}, Lym/x;->h()Lym/r;

    move-result-object v2

    invoke-virtual {p1}, Lym/z;->l()Lym/q;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lcn/e;->e(Lym/l;Lym/r;Lym/q;)V

    invoke-virtual {p1}, Lym/z;->n()Lym/z$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lym/z$a;->p(Lym/x;)Lym/z$a;

    move-result-object v0

    if-eqz v8, :cond_8

    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Lym/z;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1}, Lcn/e;->c(Lym/z;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lin/j;

    invoke-virtual {p1}, Lym/z;->c()Lym/a0;

    move-result-object v7

    invoke-virtual {v7}, Lym/a0;->j()Lin/e;

    move-result-object v7

    invoke-direct {v2, v7}, Lin/j;-><init>(Lin/t;)V

    invoke-virtual {p1}, Lym/z;->l()Lym/q;

    move-result-object v7

    invoke-virtual {v7}, Lym/q;->f()Lym/q$a;

    move-result-object v7

    invoke-virtual {v7, v1}, Lym/q$a;->e(Ljava/lang/String;)Lym/q$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Lym/q$a;->e(Ljava/lang/String;)Lym/q$a;

    move-result-object v1

    invoke-virtual {v1}, Lym/q$a;->d()Lym/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lym/z$a;->j(Lym/q;)Lym/z$a;

    invoke-virtual {p1, v3}, Lym/z;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcn/h;

    invoke-static {v2}, Lin/l;->b(Lin/t;)Lin/e;

    move-result-object v2

    invoke-direct {v1, p1, v4, v5, v2}, Lcn/h;-><init>(Ljava/lang/String;JLin/e;)V

    invoke-virtual {v0, v1}, Lym/z$a;->b(Lym/a0;)Lym/z$a;

    :cond_8
    invoke-virtual {v0}, Lym/z$a;->c()Lym/z;

    move-result-object p1

    return-object p1
.end method
