.class public Lsm/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lsm/a;->a:[C

    return-void

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
.end method

.method public static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lsm/a;->b(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    long-to-float p1, p1

    sget p2, Lsm/b;->a:I

    const/high16 v0, 0x44610000    # 900.0f

    cmpl-float v1, p1, v0

    const/high16 v2, 0x447a0000    # 1000.0f

    if-lez v1, :cond_1

    sget p2, Lsm/b;->c:I

    div-float/2addr p1, v2

    :cond_1
    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    sget p2, Lsm/b;->d:I

    div-float/2addr p1, v2

    :cond_2
    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    sget p2, Lsm/b;->b:I

    div-float/2addr p1, v2

    :cond_3
    cmpl-float v1, p1, v0

    if-lez v1, :cond_4

    sget p2, Lsm/b;->g:I

    div-float/2addr p1, v2

    :cond_4
    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    sget p2, Lsm/b;->e:I

    div-float/2addr p1, v2

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    const-string v1, "%.2f"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v0, :cond_6

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    if-eqz p3, :cond_7

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v2

    const-string p1, "%.1f"

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p1, v0

    const-string v4, "%.0f"

    if-gez v0, :cond_a

    if-eqz p3, :cond_9

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {v4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_a
    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {v4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x2e

    const/4 v1, 0x3

    const/16 v4, 0x30

    const/4 v5, 0x2

    if-le p3, v1, :cond_b

    add-int/lit8 v1, p3, -0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v0, :cond_b

    add-int/lit8 v6, p3, -0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_b

    add-int/lit8 v6, p3, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_b

    goto :goto_1

    :cond_b
    if-le p3, v5, :cond_c

    add-int/lit8 v1, p3, -0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v0, :cond_c

    sub-int/2addr p3, v3

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    if-ne p3, v4, :cond_c

    :goto_1
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lsm/b;->f:I

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    invoke-virtual {p3, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lsm/a;->b(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lbl/k;->e()Lbl/k$f;

    move-result-object v0

    invoke-interface {v0}, Lbl/k$f;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-static {p0, v0}, Lsm/a;->e([BLjava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lbl/k;->e()Lbl/k$f;

    move-result-object v1

    invoke-interface {v1, v0}, Lbl/k$f;->a(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static e([BLjava/lang/Appendable;)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-byte v2, p0, v1

    if-gez v2, :cond_1

    add-int/lit16 v2, v2, 0x100

    :cond_1
    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    sget-object v4, Lsm/a;->a:[C

    aget-char v3, v4, v3

    invoke-interface {p1, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v3

    aget-char v2, v4, v2

    invoke-interface {v3, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Exception throw during when append"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
