.class public Lx4/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lx4/b0;->a:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lx4/b0;->b:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private static a(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B
    .locals 0

    invoke-static {p0, p1}, Lx4/b0;->l(Ljava/security/MessageDigest;Ljava/io/InputStream;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0
.end method

.method public static b([B)[C
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lx4/b0;->c([BZ)[C

    move-result-object p0

    return-object p0
.end method

.method public static c([BZ)[C
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lx4/b0;->a:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lx4/b0;->b:[C

    :goto_0
    invoke-static {p0, p1}, Lx4/b0;->d([B[C)[C

    move-result-object p0

    return-object p0
.end method

.method protected static d([B[C)[C
    .locals 7

    array-length v0, p0

    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p0, v2

    and-int/lit16 v6, v5, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, p1, v6

    aput-char v6, v1, v3

    add-int/lit8 v3, v4, 0x1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static e([B)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lx4/b0;->b([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static g()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "MD5"

    invoke-static {v0}, Lx4/b0;->f(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/io/InputStream;)[B
    .locals 1

    invoke-static {}, Lx4/b0;->g()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lx4/b0;->a(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static i([B)[B
    .locals 1

    invoke-static {}, Lx4/b0;->g()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lx4/b0;->h(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lx4/b0;->e([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lx4/b0;->i([B)[B

    move-result-object p0

    invoke-static {p0}, Lx4/b0;->e([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/security/MessageDigest;Ljava/io/InputStream;)Ljava/security/MessageDigest;
    .locals 5

    const/16 v0, 0x800

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    invoke-virtual {p0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_0
    return-object p0
.end method
