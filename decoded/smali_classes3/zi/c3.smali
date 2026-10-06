.class public abstract Lzi/c3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lzi/b0;)Lzi/c3;
.end method

.method public c([B)Lzi/c3;
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lzi/c3;->d([BII)Lzi/c3;

    move-result-object p1

    return-object p1
.end method

.method public d([BII)Lzi/c3;
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, Lzi/b0;->h([BII)Lzi/b0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzi/c3;->b(Lzi/b0;)Lzi/c3;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lzi/b0;->j(I)V
    :try_end_0
    .catch Lzi/b2; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    throw p1
.end method

.method public abstract e(Lzi/c1;)V
.end method

.method public f([BII)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, Lzi/c1;->p([BII)Lzi/c1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzi/c3;->e(Lzi/c1;)V

    invoke-virtual {p1}, Lzi/c1;->K()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected g(Lzi/b0;I)Z
    .locals 0

    invoke-virtual {p1, p2}, Lzi/b0;->m(I)Z

    move-result p1

    return p1
.end method

.method public h()[B
    .locals 3

    invoke-virtual {p0}, Lzi/c3;->i()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lzi/c3;->f([BII)V

    return-object v1
.end method

.method public abstract i()I
.end method
