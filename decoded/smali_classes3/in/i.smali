.class public Lin/i;
.super Lin/u;
.source "SourceFile"


# instance fields
.field private e:Lin/u;


# direct methods
.method public constructor <init>(Lin/u;)V
    .locals 1

    invoke-direct {p0}, Lin/u;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lin/i;->e:Lin/u;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lin/u;
    .locals 1

    iget-object v0, p0, Lin/i;->e:Lin/u;

    invoke-virtual {v0}, Lin/u;->a()Lin/u;

    move-result-object v0

    return-object v0
.end method

.method public b()Lin/u;
    .locals 1

    iget-object v0, p0, Lin/i;->e:Lin/u;

    invoke-virtual {v0}, Lin/u;->b()Lin/u;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lin/i;->e:Lin/u;

    invoke-virtual {v0}, Lin/u;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(J)Lin/u;
    .locals 1

    iget-object v0, p0, Lin/i;->e:Lin/u;

    invoke-virtual {v0, p1, p2}, Lin/u;->d(J)Lin/u;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lin/i;->e:Lin/u;

    invoke-virtual {v0}, Lin/u;->e()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lin/i;->e:Lin/u;

    invoke-virtual {v0}, Lin/u;->f()V

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lin/u;
    .locals 1

    iget-object v0, p0, Lin/i;->e:Lin/u;

    invoke-virtual {v0, p1, p2, p3}, Lin/u;->g(JLjava/util/concurrent/TimeUnit;)Lin/u;

    move-result-object p1

    return-object p1
.end method

.method public final i()Lin/u;
    .locals 1

    iget-object v0, p0, Lin/i;->e:Lin/u;

    return-object v0
.end method

.method public final j(Lin/u;)Lin/i;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lin/i;->e:Lin/u;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
