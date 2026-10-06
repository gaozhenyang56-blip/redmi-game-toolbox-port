.class public Lzi/u9;
.super Lzi/j9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzi/u9$a;
    }
.end annotation


# static fields
.field private static o:I = 0x2710

.field private static p:I = 0x2710

.field private static q:I = 0x2710

.field private static r:I = 0xa00000

.field private static s:I = 0x6400000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lzi/y9;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lzi/j9;-><init>(Lzi/y9;ZZ)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lzi/j9;->c()I

    move-result v0

    sget v1, Lzi/u9;->r:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lzi/n9;->a:Lzi/y9;

    invoke-virtual {v1}, Lzi/y9;->f()I

    move-result v1

    if-lt v1, v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lzi/n9;->a:Lzi/y9;

    invoke-virtual {v2}, Lzi/y9;->e()[B

    move-result-object v2

    iget-object v3, p0, Lzi/n9;->a:Lzi/y9;

    invoke-virtual {v3}, Lzi/y9;->a()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lzi/n9;->a:Lzi/y9;

    invoke-virtual {v2, v0}, Lzi/y9;->c(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Lzi/h9;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lzi/h9;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lzi/j9;->K(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Lzi/o9;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift string size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " out of range!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lzi/o9;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public f()Ljava/nio/ByteBuffer;
    .locals 5

    invoke-virtual {p0}, Lzi/j9;->c()I

    move-result v0

    sget v1, Lzi/u9;->s:I

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lzi/j9;->M(I)V

    iget-object v1, p0, Lzi/n9;->a:Lzi/y9;

    invoke-virtual {v1}, Lzi/y9;->f()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lzi/n9;->a:Lzi/y9;

    invoke-virtual {v1}, Lzi/y9;->e()[B

    move-result-object v1

    iget-object v2, p0, Lzi/n9;->a:Lzi/y9;

    invoke-virtual {v2}, Lzi/y9;->a()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lzi/n9;->a:Lzi/y9;

    invoke-virtual {v2, v0}, Lzi/y9;->c(I)V

    return-object v1

    :cond_0
    new-array v1, v0, [B

    iget-object v2, p0, Lzi/n9;->a:Lzi/y9;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lzi/y9;->g([BII)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Lzi/o9;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift binary size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " out of range!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lzi/o9;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public h()Lzi/l9;
    .locals 5

    invoke-virtual {p0}, Lzi/j9;->a()B

    move-result v0

    invoke-virtual {p0}, Lzi/j9;->c()I

    move-result v1

    sget v2, Lzi/u9;->p:I

    if-gt v1, v2, :cond_0

    new-instance v2, Lzi/l9;

    invoke-direct {v2, v0, v1}, Lzi/l9;-><init>(BI)V

    return-object v2

    :cond_0
    new-instance v0, Lzi/o9;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift list size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of range!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lzi/o9;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public i()Lzi/m9;
    .locals 5

    invoke-virtual {p0}, Lzi/j9;->a()B

    move-result v0

    invoke-virtual {p0}, Lzi/j9;->a()B

    move-result v1

    invoke-virtual {p0}, Lzi/j9;->c()I

    move-result v2

    sget v3, Lzi/u9;->o:I

    if-gt v2, v3, :cond_0

    new-instance v3, Lzi/m9;

    invoke-direct {v3, v0, v1, v2}, Lzi/m9;-><init>(BBI)V

    return-object v3

    :cond_0
    new-instance v0, Lzi/o9;

    const/4 v1, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift map size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of range!"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lzi/o9;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public j()Lzi/s9;
    .locals 5

    invoke-virtual {p0}, Lzi/j9;->a()B

    move-result v0

    invoke-virtual {p0}, Lzi/j9;->c()I

    move-result v1

    sget v2, Lzi/u9;->q:I

    if-gt v1, v2, :cond_0

    new-instance v2, Lzi/s9;

    invoke-direct {v2, v0, v1}, Lzi/s9;-><init>(BI)V

    return-object v2

    :cond_0
    new-instance v0, Lzi/o9;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thrift set size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " out of range!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lzi/o9;-><init>(ILjava/lang/String;)V

    throw v0
.end method
