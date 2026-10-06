.class final Lin/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lin/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/l;->d(Ljava/io/OutputStream;Lin/u;)Lin/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lin/u;

.field final synthetic b:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Lin/u;Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lin/l$a;->a:Lin/u;

    iput-object p2, p0, Lin/l$a;->b:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public K(Lin/c;J)V
    .locals 7

    iget-wide v0, p1, Lin/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lin/v;->b(JJJ)V

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lin/l$a;->a:Lin/u;

    invoke-virtual {v0}, Lin/u;->f()V

    iget-object v0, p1, Lin/c;->a:Lin/p;

    iget v1, v0, Lin/p;->c:I

    iget v2, v0, Lin/p;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    iget-object v2, p0, Lin/l$a;->b:Ljava/io/OutputStream;

    iget-object v3, v0, Lin/p;->a:[B

    iget v4, v0, Lin/p;->b:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    iget v2, v0, Lin/p;->b:I

    add-int/2addr v2, v1

    iput v2, v0, Lin/p;->b:I

    int-to-long v3, v1

    sub-long/2addr p2, v3

    iget-wide v5, p1, Lin/c;->b:J

    sub-long/2addr v5, v3

    iput-wide v5, p1, Lin/c;->b:J

    iget v1, v0, Lin/p;->c:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lin/p;->b()Lin/p;

    move-result-object v1

    iput-object v1, p1, Lin/c;->a:Lin/p;

    invoke-static {v0}, Lin/q;->a(Lin/p;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Lin/u;
    .locals 1

    iget-object v0, p0, Lin/l$a;->a:Lin/u;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lin/l$a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lin/l$a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lin/l$a;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
