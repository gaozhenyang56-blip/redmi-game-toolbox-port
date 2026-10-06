.class public Lkj/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-lt v2, v5, :cond_2

    const/4 p0, 0x3

    if-lt v3, p0, :cond_0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    int-to-double v2, v3

    mul-double/2addr v2, v7

    int-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double p0, v2, v4

    if-ltz p0, :cond_0

    move v1, v6

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lkj/i;->f(C)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lkj/i;->f(C)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    if-eq v2, v5, :cond_4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lkj/i;->f(C)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static b(C)Z
    .locals 1

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x21

    if-eq p0, v0, :cond_0

    const v0, 0xff0c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3002

    if-eq p0, v0, :cond_0

    const v0, 0xff1b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3001

    if-eq p0, v0, :cond_0

    const v0, 0xff1a

    if-eq p0, v0, :cond_0

    const v0, 0xff01

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_a

    const/16 v3, 0xa

    if-eq v2, v3, :cond_a

    const/16 v3, 0x20

    if-eq v2, v3, :cond_a

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    goto/16 :goto_5

    :cond_1
    :goto_1
    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move p0, v2

    move v0, p0

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt p0, v6, :cond_8

    if-ge v0, p0, :cond_2

    invoke-virtual {v3, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move p0, v2

    move v0, p0

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lt p0, v6, :cond_6

    if-eqz v0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-object v3

    :cond_6
    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lkj/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v4, p0, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :cond_7
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v3, p0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lkj/h;->b(C)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v3, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, p0, 0x1

    :cond_9
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_2

    :cond_a
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0
.end method
