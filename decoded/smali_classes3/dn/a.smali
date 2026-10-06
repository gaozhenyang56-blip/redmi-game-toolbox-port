.class public final Ldn/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldn/a$g;,
        Ldn/a$d;,
        Ldn/a$f;,
        Ldn/a$b;,
        Ldn/a$c;,
        Ldn/a$e;
    }
.end annotation


# instance fields
.field final a:Lym/u;

.field final b:Lbn/g;

.field final c:Lin/e;

.field final d:Lin/d;

.field e:I

.field private f:J


# direct methods
.method public constructor <init>(Lym/u;Lbn/g;Lin/e;Lin/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldn/a;->e:I

    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Ldn/a;->f:J

    iput-object p1, p0, Ldn/a;->a:Lym/u;

    iput-object p2, p0, Ldn/a;->b:Lbn/g;

    iput-object p3, p0, Ldn/a;->c:Lin/e;

    iput-object p4, p0, Ldn/a;->d:Lin/d;

    return-void
.end method

.method private m()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Ldn/a;->c:Lin/e;

    iget-wide v1, p0, Ldn/a;->f:J

    invoke-interface {v0, v1, v2}, Lin/e;->k(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Ldn/a;->f:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Ldn/a;->f:J

    return-object v0
.end method


# virtual methods
.method public a(Lym/x;J)Lin/s;
    .locals 2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lym/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ldn/a;->h()Lin/s;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2, p3}, Ldn/a;->j(J)Lin/s;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Ldn/a;->d:Lin/d;

    invoke-interface {v0}, Lin/d;->flush()V

    return-void
.end method

.method public c(Lym/z;)Lym/a0;
    .locals 6

    iget-object v0, p0, Ldn/a;->b:Lbn/g;

    iget-object v1, v0, Lbn/g;->f:Lym/o;

    iget-object v0, v0, Lbn/g;->e:Lym/d;

    invoke-virtual {v1, v0}, Lym/o;->q(Lym/d;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lym/z;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcn/e;->c(Lym/z;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ldn/a;->k(J)Lin/t;

    move-result-object p1

    new-instance v3, Lcn/h;

    invoke-static {p1}, Lin/l;->b(Lin/t;)Lin/e;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lcn/h;-><init>(Ljava/lang/String;JLin/e;)V

    return-object v3

    :cond_0
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lym/z;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lym/z;->s()Lym/x;

    move-result-object p1

    invoke-virtual {p1}, Lym/x;->h()Lym/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldn/a;->i(Lym/r;)Lin/t;

    move-result-object p1

    new-instance v1, Lcn/h;

    invoke-static {p1}, Lin/l;->b(Lin/t;)Lin/e;

    move-result-object p1

    invoke-direct {v1, v0, v2, v3, p1}, Lcn/h;-><init>(Ljava/lang/String;JLin/e;)V

    return-object v1

    :cond_1
    invoke-static {p1}, Lcn/e;->b(Lym/z;)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0, v4, v5}, Ldn/a;->k(J)Lin/t;

    move-result-object p1

    new-instance v1, Lcn/h;

    invoke-static {p1}, Lin/l;->b(Lin/t;)Lin/e;

    move-result-object p1

    invoke-direct {v1, v0, v4, v5, p1}, Lcn/h;-><init>(Ljava/lang/String;JLin/e;)V

    return-object v1

    :cond_2
    new-instance p1, Lcn/h;

    invoke-virtual {p0}, Ldn/a;->l()Lin/t;

    move-result-object v1

    invoke-static {v1}, Lin/l;->b(Lin/t;)Lin/e;

    move-result-object v1

    invoke-direct {p1, v0, v2, v3, v1}, Lcn/h;-><init>(Ljava/lang/String;JLin/e;)V

    return-object p1
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Ldn/a;->b:Lbn/g;

    invoke-virtual {v0}, Lbn/g;->d()Lbn/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbn/c;->c()V

    :cond_0
    return-void
.end method

.method public d(Lym/x;)V
    .locals 1

    iget-object v0, p0, Ldn/a;->b:Lbn/g;

    invoke-virtual {v0}, Lbn/g;->d()Lbn/c;

    move-result-object v0

    invoke-virtual {v0}, Lbn/c;->p()Lym/b0;

    move-result-object v0

    invoke-virtual {v0}, Lym/b0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/i;->a(Lym/x;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lym/x;->d()Lym/q;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ldn/a;->o(Lym/q;Ljava/lang/String;)V

    return-void
.end method

.method public e(Z)Lym/z$a;
    .locals 4

    iget v0, p0, Ldn/a;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldn/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Ldn/a;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/k;->a(Ljava/lang/String;)Lcn/k;

    move-result-object v0

    new-instance v2, Lym/z$a;

    invoke-direct {v2}, Lym/z$a;-><init>()V

    iget-object v3, v0, Lcn/k;->a:Lym/v;

    invoke-virtual {v2, v3}, Lym/z$a;->n(Lym/v;)Lym/z$a;

    move-result-object v2

    iget v3, v0, Lcn/k;->b:I

    invoke-virtual {v2, v3}, Lym/z$a;->g(I)Lym/z$a;

    move-result-object v2

    iget-object v3, v0, Lcn/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lym/z$a;->k(Ljava/lang/String;)Lym/z$a;

    move-result-object v2

    invoke-virtual {p0}, Ldn/a;->n()Lym/q;

    move-result-object v3

    invoke-virtual {v2, v3}, Lym/z$a;->j(Lym/q;)Lym/z$a;

    move-result-object v2

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    iget p1, v0, Lcn/k;->b:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    iget p1, v0, Lcn/k;->b:I

    if-ne p1, v3, :cond_3

    iput v1, p0, Ldn/a;->e:I

    return-object v2

    :cond_3
    const/4 p1, 0x4

    iput p1, p0, Ldn/a;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected end of stream on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldn/a;->b:Lbn/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Ldn/a;->d:Lin/d;

    invoke-interface {v0}, Lin/d;->flush()V

    return-void
.end method

.method g(Lin/i;)V
    .locals 2

    invoke-virtual {p1}, Lin/i;->i()Lin/u;

    move-result-object v0

    sget-object v1, Lin/u;->d:Lin/u;

    invoke-virtual {p1, v1}, Lin/i;->j(Lin/u;)Lin/i;

    invoke-virtual {v0}, Lin/u;->a()Lin/u;

    invoke-virtual {v0}, Lin/u;->b()Lin/u;

    return-void
.end method

.method public h()Lin/s;
    .locals 3

    iget v0, p0, Ldn/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Ldn/a;->e:I

    new-instance v0, Ldn/a$c;

    invoke-direct {v0, p0}, Ldn/a$c;-><init>(Ldn/a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldn/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Lym/r;)Lin/t;
    .locals 2

    iget v0, p0, Ldn/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Ldn/a;->e:I

    new-instance v0, Ldn/a$d;

    invoke-direct {v0, p0, p1}, Ldn/a$d;-><init>(Ldn/a;Lym/r;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Ldn/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(J)Lin/s;
    .locals 2

    iget v0, p0, Ldn/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Ldn/a;->e:I

    new-instance v0, Ldn/a$e;

    invoke-direct {v0, p0, p1, p2}, Ldn/a$e;-><init>(Ldn/a;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ldn/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(J)Lin/t;
    .locals 2

    iget v0, p0, Ldn/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    iput v0, p0, Ldn/a;->e:I

    new-instance v0, Ldn/a$f;

    invoke-direct {v0, p0, p1, p2}, Ldn/a$f;-><init>(Ldn/a;J)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ldn/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l()Lin/t;
    .locals 3

    iget v0, p0, Ldn/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ldn/a;->b:Lbn/g;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    iput v1, p0, Ldn/a;->e:I

    invoke-virtual {v0}, Lbn/g;->j()V

    new-instance v0, Ldn/a$g;

    invoke-direct {v0, p0}, Ldn/a$g;-><init>(Ldn/a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ldn/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()Lym/q;
    .locals 3

    new-instance v0, Lym/q$a;

    invoke-direct {v0}, Lym/q$a;-><init>()V

    :goto_0
    invoke-direct {p0}, Ldn/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lzm/a;->a:Lzm/a;

    invoke-virtual {v2, v0, v1}, Lzm/a;->a(Lym/q$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lym/q$a;->d()Lym/q;

    move-result-object v0

    return-object v0
.end method

.method public o(Lym/q;Ljava/lang/String;)V
    .locals 4

    iget v0, p0, Ldn/a;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Ldn/a;->d:Lin/d;

    invoke-interface {v0, p2}, Lin/d;->m(Ljava/lang/String;)Lin/d;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lin/d;->m(Ljava/lang/String;)Lin/d;

    const/4 p2, 0x0

    invoke-virtual {p1}, Lym/q;->g()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    iget-object v2, p0, Ldn/a;->d:Lin/d;

    invoke-virtual {p1, p2}, Lym/q;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lin/d;->m(Ljava/lang/String;)Lin/d;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lin/d;->m(Ljava/lang/String;)Lin/d;

    move-result-object v2

    invoke-virtual {p1, p2}, Lym/q;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lin/d;->m(Ljava/lang/String;)Lin/d;

    move-result-object v2

    invoke-interface {v2, v0}, Lin/d;->m(Ljava/lang/String;)Lin/d;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldn/a;->d:Lin/d;

    invoke-interface {p1, v0}, Lin/d;->m(Ljava/lang/String;)Lin/d;

    const/4 p1, 0x1

    iput p1, p0, Ldn/a;->e:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Ldn/a;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
