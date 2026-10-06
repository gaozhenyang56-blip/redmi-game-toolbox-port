.class public Lkj/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lkj/i;->d(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move p0, v2

    move v6, p0

    move v7, v6

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x3

    if-nez v8, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v2

    :cond_0
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v8, v3, 0x4

    if-gt v0, v8, :cond_1

    mul-int/2addr v7, v9

    if-ge v7, v3, :cond_2

    :cond_1
    if-gt v6, v5, :cond_2

    const/16 v0, 0x8

    if-ge p0, v0, :cond_2

    mul-int/lit8 v4, v4, 0x2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-le v4, p0, :cond_2

    return v5

    :cond_2
    return v2

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge p0, v10, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p0

    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v9, :cond_6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    goto :goto_1

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lkj/i;->e(C)Z

    move-result v6

    move v7, v2

    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v5, v8, :cond_9

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_8

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lkj/i;->e(C)Z

    move-result v8

    if-eq v6, v8, :cond_b

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_a

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    xor-int/lit8 v6, v6, 0x1

    move v7, v5

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static d(C)Z
    .locals 1

    const/16 v0, 0x4e00

    if-gt v0, p0, :cond_0

    const v0, 0x9fff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(C)Z
    .locals 1

    invoke-static {p0}, Lkj/i;->f(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static f(C)Z
    .locals 1

    const/16 v0, 0x4e00

    if-gt v0, p0, :cond_0

    const v0, 0x9fff

    if-le p0, v0, :cond_4

    :cond_0
    const/16 v0, 0x30

    if-gt v0, p0, :cond_1

    const/16 v0, 0x39

    if-le p0, v0, :cond_4

    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-le p0, v0, :cond_4

    :cond_2
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x5a

    if-le p0, v0, :cond_4

    :cond_3
    const v0, 0xff10

    if-gt v0, p0, :cond_5

    const v0, 0xff19

    if-le p0, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(D)D
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method
