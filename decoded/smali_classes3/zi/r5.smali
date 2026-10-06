.class public Lzi/r5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static g:Ljava/lang/String;

.field private static h:J

.field private static final i:[B


# instance fields
.field private a:Lzi/b4;

.field private b:S

.field private c:[B

.field d:Ljava/lang/String;

.field e:I

.field private final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lzi/f7;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzi/r5;->g:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lzi/r5;->h:J

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lzi/r5;->i:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lzi/r5;->b:S

    sget-object v0, Lzi/r5;->i:[B

    iput-object v0, p0, Lzi/r5;->c:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lzi/r5;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lzi/r5;->f:J

    new-instance v0, Lzi/b4;

    invoke-direct {v0}, Lzi/b4;-><init>()V

    iput-object v0, p0, Lzi/r5;->a:Lzi/b4;

    const/4 v0, 0x1

    iput v0, p0, Lzi/r5;->e:I

    return-void
.end method

.method constructor <init>(Lzi/b4;S[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-short v0, p0, Lzi/r5;->b:S

    sget-object v1, Lzi/r5;->i:[B

    iput-object v1, p0, Lzi/r5;->c:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lzi/r5;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lzi/r5;->f:J

    iput-object p1, p0, Lzi/r5;->a:Lzi/b4;

    iput-short p2, p0, Lzi/r5;->b:S

    iput-object p3, p0, Lzi/r5;->c:[B

    iput v0, p0, Lzi/r5;->e:I

    return-void
.end method

.method public static declared-synchronized C()Ljava/lang/String;
    .locals 6

    const-class v0, Lzi/r5;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lzi/r5;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lzi/r5;->h:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lzi/r5;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static e(Ljava/nio/ByteBuffer;)Lzi/r5;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    new-instance v4, Lzi/b4;

    invoke-direct {v4}, Lzi/b4;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v4, v5, v6, v2}, Lzi/c3;->d([BII)Lzi/c3;

    new-array v5, v3, [B

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v5, v0, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    new-instance p0, Lzi/r5;

    invoke-direct {p0, v4, v1, v5}, Lzi/r5;-><init>(Lzi/b4;S[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "read Blob err :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Malformed Input"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lzi/u6;Ljava/lang/String;)Lzi/r5;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lzi/r5;

    invoke-direct {v0}, Lzi/r5;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lzi/u6;->m()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Blob parse chid err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->n(Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lzi/r5;->h(I)V

    invoke-virtual {p0}, Lzi/u6;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/r5;->k(Ljava/lang/String;)V

    invoke-virtual {p0}, Lzi/u6;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/r5;->B(Ljava/lang/String;)V

    invoke-virtual {p0}, Lzi/u6;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/r5;->v(Ljava/lang/String;)V

    const-string v1, "XMLMSG"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzi/r5;->l(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Lzi/u6;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "utf8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lzi/r5;->n([BLjava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lzi/r5;->m(S)V

    goto :goto_1

    :cond_0
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lzi/r5;->m(S)V

    const-string p0, "SECMSG"

    invoke-virtual {v0, p0, v2}, Lzi/r5;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blob setPayload err\uff1a "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public A(J)V
    .locals 1

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0, p1, p2}, Lzi/b4;->B(J)Lzi/b4;

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "/"

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v3, v1, v2}, Lzi/b4;->n(J)Lzi/b4;

    iget-object v1, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v1, v0}, Lzi/b4;->o(Ljava/lang/String;)Lzi/b4;

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0, p1}, Lzi/b4;->v(Ljava/lang/String;)Lzi/b4;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blob parse user err "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->K()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ID_NOT_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v1}, Lzi/b4;->R()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lzi/r5;->C()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v1, v0}, Lzi/b4;->L(Ljava/lang/String;)Lzi/b4;

    :cond_1
    return-object v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/r5;->d:Ljava/lang/String;

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v1}, Lzi/b4;->j()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v1}, Lzi/b4;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v1}, Lzi/b4;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()I
    .locals 1

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->x()I

    move-result v0

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lzi/r5;->f:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lzi/r5;->x()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :cond_0
    iget-short v0, p0, Lzi/r5;->b:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->a()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lzi/r5;->c:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v4}, Lzi/b4;->a()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lzi/c3;->f([BII)V

    iget-object v1, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v1}, Lzi/b4;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lzi/r5;->c:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public g()S
    .locals 1

    iget-short v0, p0, Lzi/r5;->b:S

    return v0
.end method

.method public h(I)V
    .locals 1

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0, p1}, Lzi/b4;->m(I)Lzi/b4;

    return-void
.end method

.method public i(J)V
    .locals 1

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0, p1, p2}, Lzi/b4;->n(J)Lzi/b4;

    return-void
.end method

.method public j(JLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0, p1, p2}, Lzi/b4;->n(J)Lzi/b4;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {p1, p3}, Lzi/b4;->o(Ljava/lang/String;)Lzi/b4;

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {p1, p4}, Lzi/b4;->v(Ljava/lang/String;)Lzi/b4;

    :cond_2
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0, p1}, Lzi/b4;->L(Ljava/lang/String;)Lzi/b4;

    return-void
.end method

.method public l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0, p1}, Lzi/b4;->C(Ljava/lang/String;)Lzi/b4;

    iget-object p1, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {p1}, Lzi/b4;->l()Lzi/b4;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {p1, p2}, Lzi/b4;->H(Ljava/lang/String;)Lzi/b4;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "command should not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(S)V
    .locals 0

    iput-short p1, p0, Lzi/r5;->b:S

    return-void
.end method

.method public n([BLjava/lang/String;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lzi/b4;->A(I)Lzi/b4;

    invoke-virtual {p0}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaomi/push/service/s0;->g(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p2, p1}, Lcom/xiaomi/push/service/s0;->i([B[B)[B

    move-result-object p1

    iput-object p1, p0, Lzi/r5;->c:[B

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lzi/r5;->a:Lzi/b4;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lzi/b4;->A(I)Lzi/b4;

    iput-object p1, p0, Lzi/r5;->c:[B

    :goto_0
    return-void
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->U()Z

    move-result v0

    return v0
.end method

.method public p()[B
    .locals 1

    iget-object v0, p0, Lzi/r5;->c:[B

    invoke-static {p0, v0}, Lzi/s5;->a(Lzi/r5;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)[B
    .locals 2

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->J()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/push/service/s0;->g(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    iget-object v0, p0, Lzi/r5;->c:[B

    invoke-static {p1, v0}, Lcom/xiaomi/push/service/s0;->i([B[B)[B

    move-result-object p1

    invoke-static {p0, p1}, Lzi/s5;->a(Lzi/r5;[B)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {p1}, Lzi/b4;->J()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lzi/r5;->c:[B

    invoke-static {p0, p1}, Lzi/s5;->a(Lzi/r5;[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unknow cipher = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->J()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    iget-object p1, p0, Lzi/r5;->c:[B

    invoke-static {p0, p1}, Lzi/s5;->a(Lzi/r5;[B)[B

    move-result-object p1

    return-object p1
.end method

.method public r()I
    .locals 1

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->N()I

    move-result v0

    return v0
.end method

.method public s()J
    .locals 2

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blob [chid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/r5;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/h0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/r5;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/r5;->g()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; from="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lzi/r5;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(J)V
    .locals 1

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0, p1, p2}, Lzi/b4;->u(J)Lzi/b4;

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzi/r5;->d:Ljava/lang/String;

    return-void
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->W()Z

    move-result v0

    return v0
.end method

.method public x()I
    .locals 2

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lzi/r5;->c:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public y()J
    .locals 2

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzi/r5;->a:Lzi/b4;

    invoke-virtual {v0}, Lzi/b4;->O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
