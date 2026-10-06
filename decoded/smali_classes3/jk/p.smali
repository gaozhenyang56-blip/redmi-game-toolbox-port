.class Ljk/p;
.super Ljk/o;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStrings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1486:1\n79#1,22:1487\n113#1,5:1509\n130#1,5:1514\n79#1,22:1519\n107#1:1541\n79#1,22:1542\n113#1,5:1564\n124#1:1569\n113#1,5:1570\n130#1,5:1575\n141#1:1580\n130#1,5:1581\n79#1,22:1586\n113#1,5:1608\n130#1,5:1613\n12824#2,2:1618\n12824#2,2:1620\n288#3,2:1622\n288#3,2:1624\n1549#3:1627\n1620#3,3:1628\n1549#3:1631\n1620#3,3:1632\n1#4:1626\n*S KotlinDebug\n*F\n+ 1 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n107#1:1487,22\n124#1:1509,5\n141#1:1514,5\n146#1:1519,22\n151#1:1541\n151#1:1542,22\n156#1:1564,5\n161#1:1569\n161#1:1570,5\n166#1:1575,5\n171#1:1580\n171#1:1581,5\n176#1:1586,22\n187#1:1608,5\n198#1:1613,5\n940#1:1618,2\n964#1:1620,2\n1003#1:1622,2\n1009#1:1624,2\n1309#1:1627\n1309#1:1628,3\n1334#1:1631\n1334#1:1632,3\n*E\n"
    }
.end annotation


# direct methods
.method public static synthetic A(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Ljk/p;->y(Ljava/lang/CharSequence;CZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Ljk/p;->z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method private static final C(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Loj/l;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;IZZ)",
            "Loj/l<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-static {p1}, Lqj/l;->J(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    if-nez p4, :cond_0

    invoke-static/range {v1 .. v6}, Ljk/f;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static/range {v1 .. v6}, Ljk/f;->P(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    :goto_0
    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const/4 v1, 0x0

    if-nez p4, :cond_3

    new-instance p4, Lgk/c;

    invoke-static {p2, v1}, Lgk/g;->a(II)I

    move-result p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p4, p2, v1}, Lgk/c;-><init>(II)V

    goto :goto_2

    :cond_3
    invoke-static {p0}, Ljk/p;->E(Ljava/lang/CharSequence;)I

    move-result p4

    invoke-static {p2, p4}, Lgk/g;->c(II)I

    move-result p2

    invoke-static {p2, v1}, Lgk/g;->g(II)Lgk/a;

    move-result-object p4

    :goto_2
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_9

    invoke-virtual {p4}, Lgk/a;->a()I

    move-result p2

    invoke-virtual {p4}, Lgk/a;->b()I

    move-result v1

    invoke-virtual {p4}, Lgk/a;->c()I

    move-result p4

    if-lez p4, :cond_4

    if-le p2, v1, :cond_5

    :cond_4
    if-gez p4, :cond_f

    if-gt v1, p2, :cond_f

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move v5, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Ljk/o;->o(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_7
    move-object v9, v0

    :goto_4
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_8

    :goto_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, v9}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object p0

    return-object p0

    :cond_8
    if-eq p2, v1, :cond_f

    add-int/2addr p2, p4

    goto :goto_3

    :cond_9
    invoke-virtual {p4}, Lgk/a;->a()I

    move-result p2

    invoke-virtual {p4}, Lgk/a;->b()I

    move-result v1

    invoke-virtual {p4}, Lgk/a;->c()I

    move-result p4

    if-lez p4, :cond_a

    if-le p2, v1, :cond_b

    :cond_a
    if-gez p4, :cond_f

    if-gt v1, p2, :cond_f

    :cond_b
    :goto_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v2, v9

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    move-object v4, p0

    move v5, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Ljk/p;->Z(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_d
    move-object v9, v0

    :goto_7
    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_e

    goto :goto_5

    :cond_e
    if-eq p2, v1, :cond_f

    add-int/2addr p2, p4

    goto :goto_6

    :cond_f
    return-object v0
.end method

.method public static final D(Ljava/lang/CharSequence;)Lgk/c;
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lgk/c;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lgk/c;-><init>(II)V

    return-object v0
.end method

.method public static final E(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final F(Ljava/lang/CharSequence;CIZ)I
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {p0, v0, p2, p3}, Ljk/p;->L(Ljava/lang/CharSequence;[CIZ)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final G(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 8
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v7}, Ljk/p;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I

    move-result p0

    :goto_1
    return p0
.end method

.method private static final H(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I
    .locals 6

    const/4 v0, 0x0

    if-nez p5, :cond_0

    new-instance p5, Lgk/c;

    invoke-static {p2, v0}, Lgk/g;->a(II)I

    move-result p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p3, v0}, Lgk/g;->c(II)I

    move-result p3

    invoke-direct {p5, p2, p3}, Lgk/c;-><init>(II)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljk/p;->E(Ljava/lang/CharSequence;)I

    move-result p5

    invoke-static {p2, p5}, Lgk/g;->c(II)I

    move-result p2

    invoke-static {p3, v0}, Lgk/g;->a(II)I

    move-result p3

    invoke-static {p2, p3}, Lgk/g;->g(II)Lgk/a;

    move-result-object p5

    :goto_0
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_4

    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {p5}, Lgk/a;->a()I

    move-result p2

    invoke-virtual {p5}, Lgk/a;->b()I

    move-result p3

    invoke-virtual {p5}, Lgk/a;->c()I

    move-result p5

    if-lez p5, :cond_1

    if-le p2, p3, :cond_2

    :cond_1
    if-gez p5, :cond_8

    if-gt p3, p2, :cond_8

    :cond_2
    :goto_1
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Ljk/o;->o(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    return p2

    :cond_3
    if-eq p2, p3, :cond_8

    add-int/2addr p2, p5

    goto :goto_1

    :cond_4
    invoke-virtual {p5}, Lgk/a;->a()I

    move-result p2

    invoke-virtual {p5}, Lgk/a;->b()I

    move-result p3

    invoke-virtual {p5}, Lgk/a;->c()I

    move-result p5

    if-lez p5, :cond_5

    if-le p2, p3, :cond_6

    :cond_5
    if-gez p5, :cond_8

    if-gt p3, p2, :cond_8

    :cond_6
    :goto_2
    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v0, p1

    move-object v2, p0

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Ljk/p;->Z(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_7

    return p2

    :cond_7
    if-eq p2, p3, :cond_8

    add-int/2addr p2, p5

    goto :goto_2

    :cond_8
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Ljk/p;->H(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    return p0
.end method

.method public static synthetic J(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljk/p;->F(Ljava/lang/CharSequence;CIZ)I

    move-result p0

    return p0
.end method

.method public static synthetic K(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljk/p;->G(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static final L(Ljava/lang/CharSequence;[CIZ)I
    .locals 7
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [C
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p3, :cond_0

    array-length v1, p1

    if-ne v1, v0, :cond_0

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lqj/f;->s([C)C

    move-result p1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    :cond_0
    new-instance v1, Lgk/c;

    const/4 v2, 0x0

    invoke-static {p2, v2}, Lgk/g;->a(II)I

    move-result p2

    invoke-static {p0}, Ljk/p;->E(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-direct {v1, p2, v3}, Lgk/c;-><init>(II)V

    invoke-virtual {v1}, Lgk/a;->d()Lqj/b0;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lqj/b0;->nextInt()I

    move-result v1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    array-length v4, p1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    aget-char v6, p1, v5

    invoke-static {v6, v3, p3}, Ljk/b;->d(CCZ)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_1

    return v1

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method public static final M(Ljava/lang/CharSequence;CIZ)I
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char p1, v0, v1

    invoke-static {p0, v0, p2, p3}, Ljk/p;->Q(Ljava/lang/CharSequence;[CIZ)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static final N(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I
    .locals 6
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Ljk/p;->H(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZ)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static synthetic O(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    invoke-static {p0}, Ljk/p;->E(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljk/p;->M(Ljava/lang/CharSequence;CIZ)I

    move-result p0

    return p0
.end method

.method public static synthetic P(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    invoke-static {p0}, Ljk/p;->E(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljk/p;->N(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static final Q(Ljava/lang/CharSequence;[CIZ)I
    .locals 6
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [C
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p3, :cond_0

    array-length v1, p1

    if-ne v1, v0, :cond_0

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lqj/f;->s([C)C

    move-result p1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Ljk/p;->E(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p2, v1}, Lgk/g;->c(II)I

    move-result p2

    :goto_0
    const/4 v1, -0x1

    if-ge v1, p2, :cond_4

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-char v5, p1, v4

    invoke-static {v5, v1, p3}, Ljk/b;->d(CCZ)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v3, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method public static final R(Ljava/lang/CharSequence;)Lik/e;
    .locals 9
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lik/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\r\n"

    const-string v1, "\n"

    const-string v2, "\r"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ljk/p;->h0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Lik/e;

    move-result-object p0

    return-object p0
.end method

.method public static final S(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljk/p;->R(Ljava/lang/CharSequence;)Lik/e;

    move-result-object p0

    invoke-static {p0}, Lik/f;->n(Lik/e;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final T(Ljava/lang/CharSequence;IC)Ljava/lang/CharSequence;
    .locals 4
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Lgk/c;

    const/4 v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-direct {v1, v2, p1}, Lgk/c;-><init>(II)V

    invoke-virtual {v1}, Lgk/a;->d()Lqj/b0;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lqj/b0;->nextInt()I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Desired length "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than zero."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static U(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Ljk/p;->T(Ljava/lang/CharSequence;IC)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final V(Ljava/lang/CharSequence;[CIZI)Lik/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[CIZI)",
            "Lik/e<",
            "Lgk/c;",
            ">;"
        }
    .end annotation

    invoke-static {p4}, Ljk/p;->a0(I)V

    new-instance v0, Ljk/d;

    new-instance v1, Ljk/p$a;

    invoke-direct {v1, p1, p3}, Ljk/p$a;-><init>([CZ)V

    invoke-direct {v0, p0, p2, p4, v1}, Ljk/d;-><init>(Ljava/lang/CharSequence;IILak/p;)V

    return-object v0
.end method

.method private static final W(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lik/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "IZI)",
            "Lik/e<",
            "Lgk/c;",
            ">;"
        }
    .end annotation

    invoke-static {p4}, Ljk/p;->a0(I)V

    invoke-static {p1}, Lqj/f;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljk/d;

    new-instance v1, Ljk/p$b;

    invoke-direct {v1, p1, p3}, Ljk/p$b;-><init>(Ljava/util/List;Z)V

    invoke-direct {v0, p0, p2, p4, v1}, Ljk/d;-><init>(Ljava/lang/CharSequence;IILak/p;)V

    return-object v0
.end method

.method static synthetic X(Ljava/lang/CharSequence;[CIZIILjava/lang/Object;)Lik/e;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Ljk/p;->V(Ljava/lang/CharSequence;[CIZI)Lik/e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Y(Ljava/lang/CharSequence;[Ljava/lang/String;IZIILjava/lang/Object;)Lik/e;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Ljk/p;->W(Ljava/lang/CharSequence;[Ljava/lang/String;IZI)Lik/e;

    move-result-object p0

    return-object p0
.end method

.method public static final Z(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .locals 4
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p3, :cond_3

    if-ltz p1, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    add-int v2, p1, v1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p5}, Ljk/b;->d(CCZ)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static final a0(I)V
    .locals 2

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Limit must be non-negative, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b0(Ljava/lang/CharSequence;[CZI)Ljava/util/List;
    .locals 7
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [C
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[CZI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-char p1, p1, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Ljk/p;->d0(Ljava/lang/CharSequence;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Ljk/p;->X(Ljava/lang/CharSequence;[CIZIILjava/lang/Object;)Lik/e;

    move-result-object p1

    invoke-static {p1}, Lik/f;->f(Lik/e;)Ljava/lang/Iterable;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lqj/l;->o(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lgk/c;

    invoke-static {p0, p3}, Ljk/p;->i0(Ljava/lang/CharSequence;Lgk/c;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static final c0(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;
    .locals 7
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object v2, p1, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {p0, v2, p2, p3}, Ljk/p;->d0(Ljava/lang/CharSequence;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Ljk/p;->Y(Ljava/lang/CharSequence;[Ljava/lang/String;IZIILjava/lang/Object;)Lik/e;

    move-result-object p1

    invoke-static {p1}, Lik/f;->f(Lik/e;)Ljava/lang/Iterable;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lqj/l;->o(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lgk/c;

    invoke-static {p0, p3}, Ljk/p;->i0(Ljava/lang/CharSequence;Lgk/c;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object p2
.end method

.method private static final d0(Ljava/lang/CharSequence;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p3}, Ljk/p;->a0(I)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Ljk/p;->G(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    goto :goto_1

    :cond_0
    if-lez p3, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    if-eqz v4, :cond_2

    invoke-static {p3, v6}, Lgk/g;->c(II)I

    move-result v6

    :cond_2
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    if-eqz v4, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v6, p3, -0x1

    if-eq v1, v6, :cond_5

    :cond_4
    invoke-static {p0, p1, v0, p2}, Ljk/p;->G(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    if-ne v1, v2, :cond_3

    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v5

    :cond_6
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lqj/l;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljk/p;->b0(Ljava/lang/CharSequence;[CZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljk/p;->c0(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final g0(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lik/e;
    .locals 8
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/String;",
            "ZI)",
            "Lik/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiters"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Ljk/p;->Y(Ljava/lang/CharSequence;[Ljava/lang/String;IZIILjava/lang/Object;)Lik/e;

    move-result-object p1

    new-instance p2, Ljk/p$c;

    invoke-direct {p2, p0}, Ljk/p$c;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1, p2}, Lik/f;->k(Lik/e;Lak/l;)Lik/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Lik/e;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljk/p;->g0(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lik/e;

    move-result-object p0

    return-object p0
.end method

.method public static final i0(Ljava/lang/CharSequence;Lgk/c;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lgk/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lgk/c;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lgk/c;->g()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final j0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Ljk/f;->J(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public static final k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Ljk/f;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public static synthetic l0(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p0

    :cond_0
    invoke-static {p0, p1, p2}, Ljk/p;->j0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p0

    :cond_0
    invoke-static {p0, p1, p2}, Ljk/p;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final n0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Ljk/p;->O(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public static synthetic o0(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p0

    :cond_0
    invoke-static {p0, p1, p2}, Ljk/p;->n0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final p0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-static/range {v1 .. v6}, Ljk/f;->J(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public static final q0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiter"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Ljk/f;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string p0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p2, p0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public static synthetic r0(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p0

    :cond_0
    invoke-static {p0, p1, p2}, Ljk/p;->p0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    move-object p2, p0

    :cond_0
    invoke-static {p0, p1, p2}, Ljk/p;->q0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v2, v0, :cond_4

    if-nez v3, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljk/a;->c(C)Z

    move-result v4

    if-nez v3, :cond_2

    if-nez v4, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    add-int/2addr v0, v1

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static u0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljk/a;->c(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_2

    :cond_0
    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method public static final synthetic v(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Loj/l;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ljk/p;->C(Ljava/lang/CharSequence;Ljava/util/Collection;IZZ)Loj/l;

    move-result-object p0

    return-object p0
.end method

.method public static final w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 11
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p0

    move v6, p2

    invoke-static/range {v3 .. v8}, Ljk/f;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-static/range {v3 .. v10}, Ljk/p;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIZZILjava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public static synthetic x(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p0, p1, p2}, Ljk/p;->w(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p0

    return p0
.end method

.method public static final y(Ljava/lang/CharSequence;CZ)Z
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Ljk/p;->E(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0, p1, p2}, Ljk/b;->d(CCZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 8
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Ljk/o;->k(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v3, v0, v1

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move-object v2, p0

    move-object v4, p1

    move v7, p2

    invoke-static/range {v2 .. v7}, Ljk/p;->Z(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result p0

    return p0
.end method
