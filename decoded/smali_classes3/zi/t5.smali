.class Lzi/t5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field private b:Ljava/nio/ByteBuffer;

.field private c:Ljava/util/zip/Adler32;

.field private d:Lzi/w5;

.field private e:Ljava/io/InputStream;

.field private f:Lzi/y5;

.field private volatile g:Z

.field private h:[B


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lzi/y5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lzi/t5;->b:Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lzi/t5;->c:Ljava/util/zip/Adler32;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lzi/t5;->e:Ljava/io/InputStream;

    iput-object p2, p0, Lzi/t5;->f:Lzi/y5;

    new-instance p1, Lzi/w5;

    invoke-direct {p1}, Lzi/w5;-><init>()V

    iput-object p1, p0, Lzi/t5;->d:Lzi/w5;

    return-void
.end method

.method private a()Ljava/nio/ByteBuffer;
    .locals 8

    iget-object v0, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lzi/t5;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    iget-object v2, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    const/16 v3, -0x3d02

    if-ne v0, v3, :cond_5

    const/4 v0, 0x5

    if-ne v2, v0, :cond_5

    iget-object v0, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    iget-object v3, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    const v4, 0x8000

    if-gt v0, v4, :cond_4

    add-int/lit8 v4, v0, 0x4

    iget-object v5, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    if-le v4, v5, :cond_0

    add-int/lit16 v4, v0, 0x800

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v6, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    iget-object v7, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v1, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_0
    iput-object v4, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    const/16 v5, 0x1000

    if-le v4, v5, :cond_1

    const/16 v4, 0x800

    if-ge v0, v4, :cond_1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v6, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    iget-object v7, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->position()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4, v5, v1, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v4, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4, v0}, Lzi/t5;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v4, p0, Lzi/t5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v4, p0, Lzi/t5;->b:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v4, v2}, Lzi/t5;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v2, p0, Lzi/t5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lzi/t5;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iget-object v4, p0, Lzi/t5;->c:Ljava/util/zip/Adler32;

    invoke-virtual {v4}, Ljava/util/zip/Adler32;->reset()V

    iget-object v4, p0, Lzi/t5;->c:Ljava/util/zip/Adler32;

    iget-object v5, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v6, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    move-result v6

    invoke-virtual {v4, v5, v1, v6}, Ljava/util/zip/Adler32;->update([BII)V

    iget-object v1, p0, Lzi/t5;->c:Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v4

    long-to-int v1, v4

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lzi/t5;->h:[B

    if-eqz v1, :cond_2

    iget-object v2, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3, v0}, Lcom/xiaomi/push/service/s0;->j([B[BZII)[B

    :cond_2
    iget-object v0, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/t5;->c:Ljava/util/zip/Adler32;

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Corrupted Blob bad CRC"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Blob size too large"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed Input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private d(Ljava/nio/ByteBuffer;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    :cond_0
    iget-object v1, p0, Lzi/t5;->e:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v0, p2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    sub-int/2addr p2, v1

    add-int/2addr v0, v1

    if-gtz p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private f()V
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzi/t5;->g:Z

    invoke-virtual {p0}, Lzi/t5;->b()Lzi/r5;

    move-result-object v1

    invoke-virtual {v1}, Lzi/r5;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CONN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lzi/r5;->p()[B

    move-result-object v1

    invoke-static {v1}, Lzi/g4;->o([B)Lzi/g4;

    move-result-object v1

    invoke-virtual {v1}, Lzi/g4;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lzi/t5;->f:Lzi/y5;

    invoke-virtual {v1}, Lzi/g4;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lzi/c6;->j(Ljava/lang/String;)V

    move v0, v3

    :cond_0
    invoke-virtual {v1}, Lzi/g4;->t()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lzi/g4;->k()Lzi/c4;

    move-result-object v2

    new-instance v4, Lzi/r5;

    invoke-direct {v4}, Lzi/r5;-><init>()V

    const-string v5, "SYNC"

    const-string v6, "CONF"

    invoke-virtual {v4, v5, v6}, Lzi/r5;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lzi/c3;->h()[B

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lzi/r5;->n([BLjava/lang/String;)V

    iget-object v2, p0, Lzi/t5;->f:Lzi/y5;

    invoke-virtual {v2, v4}, Lzi/y5;->W(Lzi/r5;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Slim] CONN: host = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lzi/g4;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->n(Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_8

    iget-object v0, p0, Lzi/t5;->f:Lzi/y5;

    invoke-virtual {v0}, Lzi/y5;->X()[B

    move-result-object v0

    iput-object v0, p0, Lzi/t5;->h:[B

    :goto_0
    iget-boolean v0, p0, Lzi/t5;->g:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lzi/t5;->b()Lzi/r5;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lzi/t5;->f:Lzi/y5;

    invoke-virtual {v4}, Lzi/c6;->C()V

    invoke-virtual {v0}, Lzi/r5;->g()S

    move-result v4

    if-eq v4, v3, :cond_6

    const-string v5, " failure:"

    const-string v6, "; Id="

    const-string v7, "[Slim] Parse packet from Blob chid="

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v4, v9, :cond_4

    if-eq v4, v8, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Slim] unknow blob type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lzi/r5;->g()S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v1, p0, Lzi/t5;->d:Lzi/w5;

    invoke-virtual {v0}, Lzi/r5;->p()[B

    move-result-object v2

    iget-object v4, p0, Lzi/t5;->f:Lzi/y5;

    invoke-virtual {v1, v2, v4}, Lzi/w5;->a([BLzi/c6;)Lzi/u6;

    move-result-object v1

    iget-object v2, p0, Lzi/t5;->f:Lzi/y5;

    invoke-virtual {v2, v1}, Lzi/y5;->Y(Lzi/u6;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lzi/r5;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lzi/r5;->c()Ljava/lang/String;

    move-result-object v4

    const-string v10, "SECMSG"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lzi/r5;->a()I

    move-result v4

    if-eq v4, v9, :cond_5

    invoke-virtual {v0}, Lzi/r5;->a()I

    move-result v4

    if-ne v4, v8, :cond_6

    :cond_5
    invoke-virtual {v0}, Lzi/r5;->t()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :try_start_1
    invoke-virtual {v0}, Lzi/r5;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lzi/r5;->F()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v9

    invoke-virtual {v9, v4, v8}, Lcom/xiaomi/push/service/k0;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v4

    iget-object v8, p0, Lzi/t5;->d:Lzi/w5;

    iget-object v4, v4, Lcom/xiaomi/push/service/k0$b;->i:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lzi/r5;->q(Ljava/lang/String;)[B

    move-result-object v4

    iget-object v9, p0, Lzi/t5;->f:Lzi/y5;

    invoke-virtual {v8, v4, v9}, Lzi/w5;->a([BLzi/c6;)Lzi/u6;

    move-result-object v4

    iput-wide v1, v4, Lzi/u6;->j:J

    iget-object v1, p0, Lzi/t5;->f:Lzi/y5;

    invoke-virtual {v1, v4}, Lzi/y5;->Y(Lzi/u6;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lzi/t5;->f:Lzi/y5;

    invoke-virtual {v1, v0}, Lzi/y5;->W(Lzi/r5;)V

    goto/16 :goto_0

    :cond_7
    return-void

    :cond_8
    const-string v0, "[Slim] Invalid CONN"

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid Connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method b()Lzi/r5;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lzi/t5;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-ne v2, v3, :cond_0

    new-instance v1, Lzi/x5;

    invoke-direct {v1}, Lzi/x5;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lzi/r5;->e(Ljava/nio/ByteBuffer;)Lzi/r5;

    move-result-object v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Slim] Read {cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lzi/r5;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";chid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lzi/r5;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ";len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lpi/c;->B(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    move v2, v0

    :goto_1
    if-nez v2, :cond_1

    iget-object v2, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Slim] read Blob ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lzi/t5;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/16 v5, 0x80

    if-le v2, v5, :cond_2

    move v2, v5

    :cond_2
    invoke-static {v4, v0, v2}, Lzi/e;->a([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Err:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    throw v1
.end method

.method c()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lzi/t5;->f()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-boolean v1, p0, Lzi/t5;->g:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    throw v0
.end method

.method e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzi/t5;->g:Z

    return-void
.end method
