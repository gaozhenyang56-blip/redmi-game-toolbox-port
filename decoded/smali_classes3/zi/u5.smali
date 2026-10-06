.class public Lzi/u5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/nio/ByteBuffer;

.field private b:Ljava/nio/ByteBuffer;

.field private c:Ljava/util/zip/Adler32;

.field private d:Lzi/y5;

.field private e:Ljava/io/OutputStream;

.field private f:I

.field private g:I

.field private h:[B


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Lzi/y5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lzi/u5;->b:Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lzi/u5;->c:Ljava/util/zip/Adler32;

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lzi/u5;->e:Ljava/io/OutputStream;

    iput-object p2, p0, Lzi/u5;->d:Lzi/y5;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p2

    const v0, 0x36ee80

    div-int/2addr p2, v0

    iput p2, p0, Lzi/u5;->f:I

    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result p1

    iput p1, p0, Lzi/u5;->g:I

    return-void
.end method


# virtual methods
.method public a(Lzi/r5;)I
    .locals 7

    invoke-virtual {p1}, Lzi/r5;->x()I

    move-result v0

    const v1, 0x8000

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Blob size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " should be less than "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Drop blob chid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v1, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    add-int/lit8 v1, v0, 0x8

    const/4 v3, 0x4

    add-int/2addr v1, v3

    iget-object v4, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    if-gt v1, v4, :cond_1

    iget-object v4, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    const/16 v5, 0x1000

    if-le v4, v5, :cond_2

    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    :cond_2
    iget-object v1, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    const/16 v4, -0x3d02

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v1

    iget-object v4, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Lzi/r5;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lzi/r5;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CONN"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lzi/u5;->h:[B

    if-nez v4, :cond_3

    iget-object v4, p0, Lzi/u5;->d:Lzi/y5;

    invoke-virtual {v4}, Lzi/y5;->X()[B

    move-result-object v4

    iput-object v4, p0, Lzi/u5;->h:[B

    :cond_3
    iget-object v4, p0, Lzi/u5;->h:[B

    iget-object v5, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6, v1, v0}, Lcom/xiaomi/push/service/s0;->j([B[BZII)[B

    :cond_4
    iget-object v0, p0, Lzi/u5;->c:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    iget-object v0, p0, Lzi/u5;->c:Ljava/util/zip/Adler32;

    iget-object v1, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v4, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/zip/Adler32;->update([BII)V

    iget-object v0, p0, Lzi/u5;->c:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lzi/u5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lzi/u5;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v4, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    invoke-virtual {v0, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lzi/u5;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lzi/u5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lzi/u5;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lzi/u5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Slim] Wrote {cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";chid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/r5;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";len="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->B(Ljava/lang/String;)V

    return v0
.end method

.method public b()V
    .locals 9

    new-instance v0, Lzi/f4;

    invoke-direct {v0}, Lzi/f4;-><init>()V

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lzi/f4;->m(I)Lzi/f4;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzi/f4;->n(Ljava/lang/String;)Lzi/f4;

    invoke-static {}, Lzi/ga;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzi/f4;->v(Ljava/lang/String;)Lzi/f4;

    invoke-static {}, Lcom/xiaomi/push/service/a1;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzi/f4;->B(Ljava/lang/String;)Lzi/f4;

    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Lzi/f4;->u(I)Lzi/f4;

    iget-object v3, p0, Lzi/u5;->d:Lzi/y5;

    invoke-virtual {v3}, Lzi/c6;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lzi/f4;->G(Ljava/lang/String;)Lzi/f4;

    iget-object v3, p0, Lzi/u5;->d:Lzi/y5;

    invoke-virtual {v3}, Lzi/j6;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lzi/f4;->K(Ljava/lang/String;)Lzi/f4;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lzi/f4;->O(Ljava/lang/String;)Lzi/f4;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v3}, Lzi/f4;->A(I)Lzi/f4;

    iget-object v4, p0, Lzi/u5;->d:Lzi/y5;

    invoke-virtual {v4}, Lzi/j6;->F()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.xiaomi.xmsf"

    invoke-static {v4, v5}, Lzi/m5;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lzi/f4;->F(I)Lzi/f4;

    iget-object v4, p0, Lzi/u5;->d:Lzi/y5;

    invoke-virtual {v4}, Lzi/c6;->f()Lzi/d6;

    move-result-object v4

    invoke-virtual {v4}, Lzi/d6;->g()[B

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lzi/c4;->m([B)Lzi/c4;

    move-result-object v4

    invoke-virtual {v0, v4}, Lzi/f4;->q(Lzi/c4;)Lzi/f4;

    :cond_0
    new-instance v4, Lzi/r5;

    invoke-direct {v4}, Lzi/r5;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lzi/r5;->h(I)V

    const-string v5, "CONN"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lzi/r5;->l(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    const-string v5, "xiaomi.com"

    invoke-virtual {v4, v7, v8, v5, v6}, Lzi/r5;->j(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lzi/c3;->h()[B

    move-result-object v0

    invoke-virtual {v4, v0, v6}, Lzi/r5;->n([BLjava/lang/String;)V

    invoke-virtual {p0, v4}, Lzi/u5;->a(Lzi/r5;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[slim] open conn: andver="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sdk="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tz="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzi/u5;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzi/u5;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Model="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " os="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 3

    new-instance v0, Lzi/r5;

    invoke-direct {v0}, Lzi/r5;-><init>()V

    const-string v1, "CLOSE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzi/r5;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lzi/u5;->a(Lzi/r5;)I

    iget-object v0, p0, Lzi/u5;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method
