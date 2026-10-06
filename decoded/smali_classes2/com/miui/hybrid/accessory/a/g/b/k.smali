.class public Lcom/miui/hybrid/accessory/a/g/b/k;
.super Lcom/miui/hybrid/accessory/a/g/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/hybrid/accessory/a/g/b/k$a;
    }
.end annotation


# static fields
.field private static f:I = 0x2710

.field private static g:I = 0x2710

.field private static h:I = 0x2710

.field private static i:I = 0xa00000

.field private static j:I = 0x6400000


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/hybrid/accessory/a/g/c/b;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/hybrid/accessory/a/g/b/a;-><init>(Lcom/miui/hybrid/accessory/a/g/c/b;ZZ)V

    return-void
.end method


# virtual methods
.method public e()Lcom/miui/hybrid/accessory/a/g/b/d;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/g/b/a;->l()B

    move-result v0

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/g/b/a;->l()B

    move-result v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/g/b/a;->n()I

    move-result v2

    sget v3, Lcom/miui/hybrid/accessory/a/g/b/k;->f:I

    if-gt v2, v3, :cond_0

    new-instance v3, Lcom/miui/hybrid/accessory/a/g/b/d;

    invoke-direct {v3, v0, v1, v2}, Lcom/miui/hybrid/accessory/a/g/b/d;-><init>(BBI)V

    return-object v3

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/g/b/f;

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

    invoke-direct {v0, v1, v2}, Lcom/miui/hybrid/accessory/a/g/b/f;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public g()Lcom/miui/hybrid/accessory/a/g/b/c;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/g/b/a;->l()B

    move-result v0

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/g/b/a;->n()I

    move-result v1

    sget v2, Lcom/miui/hybrid/accessory/a/g/b/k;->g:I

    if-gt v1, v2, :cond_0

    new-instance v2, Lcom/miui/hybrid/accessory/a/g/b/c;

    invoke-direct {v2, v0, v1}, Lcom/miui/hybrid/accessory/a/g/b/c;-><init>(BI)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/g/b/f;

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

    invoke-direct {v0, v2, v1}, Lcom/miui/hybrid/accessory/a/g/b/f;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public i()Lcom/miui/hybrid/accessory/a/g/b/i;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/g/b/a;->l()B

    move-result v0

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/g/b/a;->n()I

    move-result v1

    sget v2, Lcom/miui/hybrid/accessory/a/g/b/k;->h:I

    if-gt v1, v2, :cond_0

    new-instance v2, Lcom/miui/hybrid/accessory/a/g/b/i;

    invoke-direct {v2, v0, v1}, Lcom/miui/hybrid/accessory/a/g/b/i;-><init>(BI)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/g/b/f;

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

    invoke-direct {v0, v2, v1}, Lcom/miui/hybrid/accessory/a/g/b/f;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public q()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/g/b/a;->n()I

    move-result v0

    sget v1, Lcom/miui/hybrid/accessory/a/g/b/k;->i:I

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/g/b/e;->e:Lcom/miui/hybrid/accessory/a/g/c/b;

    invoke-virtual {v1}, Lcom/miui/hybrid/accessory/a/g/c/b;->c()I

    move-result v1

    if-lt v1, v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/g/b/e;->e:Lcom/miui/hybrid/accessory/a/g/c/b;

    invoke-virtual {v2}, Lcom/miui/hybrid/accessory/a/g/c/b;->a()[B

    move-result-object v2

    iget-object v3, p0, Lcom/miui/hybrid/accessory/a/g/b/e;->e:Lcom/miui/hybrid/accessory/a/g/c/b;

    invoke-virtual {v3}, Lcom/miui/hybrid/accessory/a/g/c/b;->b()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/g/b/e;->e:Lcom/miui/hybrid/accessory/a/g/c/b;

    invoke-virtual {v2, v0}, Lcom/miui/hybrid/accessory/a/g/c/b;->a(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/g/d;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/g/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/hybrid/accessory/a/g/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Lcom/miui/hybrid/accessory/a/g/b/f;

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

    invoke-direct {v1, v2, v0}, Lcom/miui/hybrid/accessory/a/g/b/f;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public r()Ljava/nio/ByteBuffer;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/g/b/a;->n()I

    move-result v0

    sget v1, Lcom/miui/hybrid/accessory/a/g/b/k;->j:I

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/hybrid/accessory/a/g/b/a;->c(I)V

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/g/b/e;->e:Lcom/miui/hybrid/accessory/a/g/c/b;

    invoke-virtual {v1}, Lcom/miui/hybrid/accessory/a/g/c/b;->c()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/g/b/e;->e:Lcom/miui/hybrid/accessory/a/g/c/b;

    invoke-virtual {v1}, Lcom/miui/hybrid/accessory/a/g/c/b;->a()[B

    move-result-object v1

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/g/b/e;->e:Lcom/miui/hybrid/accessory/a/g/c/b;

    invoke-virtual {v2}, Lcom/miui/hybrid/accessory/a/g/c/b;->b()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/g/b/e;->e:Lcom/miui/hybrid/accessory/a/g/c/b;

    invoke-virtual {v2, v0}, Lcom/miui/hybrid/accessory/a/g/c/b;->a(I)V

    return-object v1

    :cond_0
    new-array v1, v0, [B

    iget-object v2, p0, Lcom/miui/hybrid/accessory/a/g/b/e;->e:Lcom/miui/hybrid/accessory/a/g/c/b;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/miui/hybrid/accessory/a/g/c/b;->c([BII)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Lcom/miui/hybrid/accessory/a/g/b/f;

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

    invoke-direct {v1, v2, v0}, Lcom/miui/hybrid/accessory/a/g/b/f;-><init>(ILjava/lang/String;)V

    throw v1
.end method
