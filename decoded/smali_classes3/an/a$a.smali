.class Lan/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lin/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lan/a;->b(Lan/b;Lym/z;)Lym/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lin/e;

.field final synthetic c:Lan/b;

.field final synthetic d:Lin/d;

.field final synthetic e:Lan/a;


# direct methods
.method constructor <init>(Lan/a;Lin/e;Lan/b;Lin/d;)V
    .locals 0

    iput-object p1, p0, Lan/a$a;->e:Lan/a;

    iput-object p2, p0, Lan/a$a;->b:Lin/e;

    iput-object p3, p0, Lan/a$a;->c:Lan/b;

    iput-object p4, p0, Lan/a$a;->d:Lin/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public E(Lin/c;J)J
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lan/a$a;->b:Lin/e;

    invoke-interface {v1, p1, p2, p3}, Lin/t;->E(Lin/c;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    iget-boolean p1, p0, Lan/a$a;->a:Z

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lan/a$a;->a:Z

    iget-object p1, p0, Lan/a$a;->d:Lin/d;

    invoke-interface {p1}, Lin/s;->close()V

    :cond_0
    return-wide v1

    :cond_1
    iget-object v0, p0, Lan/a$a;->d:Lin/d;

    invoke-interface {v0}, Lin/d;->a()Lin/c;

    move-result-object v3

    invoke-virtual {p1}, Lin/c;->size()J

    move-result-wide v0

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lin/c;->f(Lin/c;JJ)Lin/c;

    iget-object p1, p0, Lan/a$a;->d:Lin/d;

    invoke-interface {p1}, Lin/d;->i()Lin/d;

    return-wide p2

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lan/a$a;->a:Z

    if-nez p2, :cond_2

    iput-boolean v0, p0, Lan/a$a;->a:Z

    iget-object p2, p0, Lan/a$a;->c:Lan/b;

    invoke-interface {p2}, Lan/b;->a()V

    :cond_2
    throw p1
.end method

.method public b()Lin/u;
    .locals 1

    iget-object v0, p0, Lan/a$a;->b:Lin/e;

    invoke-interface {v0}, Lin/t;->b()Lin/u;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    iget-boolean v0, p0, Lan/a$a;->a:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lzm/c;->o(Lin/t;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lan/a$a;->a:Z

    iget-object v0, p0, Lan/a$a;->c:Lan/b;

    invoke-interface {v0}, Lan/b;->a()V

    :cond_0
    iget-object v0, p0, Lan/a$a;->b:Lin/e;

    invoke-interface {v0}, Lin/t;->close()V

    return-void
.end method
