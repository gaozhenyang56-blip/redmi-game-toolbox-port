.class public Lnj/c;
.super Lnj/f;
.source "SourceFile"


# static fields
.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[[Ljava/lang/String;

.field protected static final g:[Ljava/lang/String;

.field protected static final h:[I

.field private static final i:[Ljava/lang/String;


# instance fields
.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkj/b$a;",
            ">;"
        }
    .end annotation
.end field

.field protected c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "0123456789"

    const-string v1, "\uff10\uff11\uff12\uff13\uff14\uff15\uff16\uff17\uff18\uff19"

    const-string v2, "\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d"

    const-string v3, "\u96f6\u58f9\u8d30\u53c1\u8086\u4f0d\u9646\u67d2\u634c\u7396"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnj/c;->d:[Ljava/lang/String;

    const-string v0, "\u2460\u2461\u2462\u2463\u2464\u2465\u2466\u2467\u2468"

    const-string v1, "\u2488\u2489\u248a\u248b\u248c\u248d\u248e\u248f\u2490"

    const-string v2, "\u24f5\u24f6\u24f7\u24f8\u24f9\u24fa\u24fb\u24fc\u24fd"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnj/c;->e:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "I|loOBbgqzZ"

    const-string v2, "11100869922"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\uff5c\uff4f\uff51\uff4c\uff42\uff2f\uff29\uff22\uff3a\uff5a"

    const-string v2, "1091601822"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lnj/c;->f:[[Ljava/lang/String;

    const-string v3, "0123456789"

    const-string v4, "\uff10\uff11\uff12\uff13\uff14\uff15\uff16\uff17\uff18\uff19"

    const-string v5, "\u2460\u2461\u2462\u2463\u2464\u2465\u2466\u2467\u2468"

    const-string v6, "\u2488\u2489\u248a\u248b\u248c\u248d\u248e\u248f\u2490"

    const-string v7, "\u24f5\u24f6\u24f7\u24f8\u24f9\u24fa\u24fb\u24fc\u24fd"

    const-string v8, "\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d"

    const-string v9, "\u96f6\u58f9\u8d30\u53c1\u8086\u4f0d\u9646\u67d2\u634c\u7396"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnj/c;->g:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnj/c;->h:[I

    const-string v1, "BankCard"

    const-string v2, "Phone"

    const-string v3, "PhoneMobile"

    const-string v4, "Phone400"

    const-string v5, "Range"

    const-string v6, "Time"

    const-string v7, "Confus"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnj/c;->i:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0xf
        0x10
        0x12
        0x13
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnj/f;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnj/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lnj/c;->a()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lnj/c;->c:[I

    return-void
.end method

.method protected static g(C)C
    .locals 8

    sget-object v0, Lnj/c;->d:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "0123456789"

    const/4 v5, -0x1

    if-lt v3, v1, :cond_4

    sget-object v6, Lnj/c;->e:[Ljava/lang/String;

    array-length v7, v6

    move v0, v2

    :goto_1
    const/4 v1, 0x1

    if-lt v0, v7, :cond_2

    move v0, v2

    :goto_2
    sget-object v3, Lnj/c;->f:[[Ljava/lang/String;

    array-length v4, v3

    if-lt v0, v4, :cond_0

    return p0

    :cond_0
    aget-object v4, v3, v0

    aget-object v4, v4, v2

    invoke-virtual {v4, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_1

    aget-object p0, v3, v0

    aget-object p0, p0, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    aget-object v3, v6, v0

    invoke-virtual {v3, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_3

    add-int/2addr v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    aget-object v6, v0, v3

    invoke-virtual {v6, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v5, :cond_5

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lnj/c;->l(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lnj/c;->g(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private i(Ljava/lang/String;IZCZC)I
    .locals 21

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    if-gt v3, v4, :cond_0

    return v5

    :cond_0
    invoke-static/range {p1 .. p1}, Lnj/c;->n(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x1

    xor-int/2addr v3, v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "400"

    const/4 v10, 0x4

    const-string v11, "0123456789"

    const/4 v13, 0x3

    const/4 v14, 0x0

    if-eqz p3, :cond_9

    move v9, v14

    move v15, v9

    move/from16 v16, v15

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-lt v15, v12, :cond_6

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v14

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v0, v9, :cond_5

    const-string v0, "-\u2014\u4e00~"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v5, :cond_a

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_a

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_3

    if-nez p5, :cond_3

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v13, :cond_1

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v10, :cond_3

    :cond_1
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    :cond_2
    move v10, v6

    goto/16 :goto_3

    :cond_3
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz p5, :cond_4

    const/16 v9, 0x2e

    if-eq v2, v9, :cond_4

    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v0}, Lnj/c;->s(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v1}, Lnj/c;->s(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    cmpg-double v0, v17, v19

    if-gez v0, :cond_a

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    if-nez p5, :cond_b

    move v10, v13

    goto :goto_3

    :cond_5
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lnj/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v0, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v1, :cond_8

    if-nez v16, :cond_7

    invoke-virtual {v0, v9, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v16, v6

    :cond_7
    add-int/lit8 v9, v15, 0x1

    goto :goto_2

    :cond_8
    move/from16 v16, v14

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-static/range {p1 .. p1}, Lnj/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move v10, v5

    :cond_b
    :goto_3
    if-gez v10, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_17

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v9, 0x13

    if-le v1, v9, :cond_d

    :cond_c
    :goto_5
    move v4, v5

    goto/16 :goto_7

    :cond_d
    const/16 v12, 0xf

    if-eq v1, v12, :cond_15

    const/16 v12, 0x10

    if-eq v1, v12, :cond_15

    if-ne v1, v9, :cond_e

    goto :goto_6

    :cond_e
    const/16 v9, 0xc

    if-le v1, v9, :cond_f

    goto :goto_5

    :cond_f
    const/16 v9, 0xb

    if-lt v1, v9, :cond_11

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_10

    move v10, v6

    :cond_10
    invoke-static {v0}, Lnj/a;->d(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lnj/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_7

    :cond_11
    const/16 v4, 0xa

    if-ne v1, v4, :cond_12

    invoke-virtual {v0, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v4, v13

    goto :goto_7

    :cond_12
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v6, :cond_13

    if-eqz p5, :cond_13

    const-string v4, ":\uff1a"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v5, :cond_13

    const/4 v4, 0x5

    goto :goto_7

    :cond_13
    if-nez p5, :cond_c

    if-nez p3, :cond_c

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x31

    if-le v0, v2, :cond_c

    const/4 v9, 0x7

    if-eq v1, v9, :cond_14

    const/16 v12, 0x8

    if-ne v1, v12, :cond_c

    :cond_14
    move v4, v6

    goto :goto_7

    :cond_15
    :goto_6
    invoke-static {v0}, Lnj/c;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p5, :cond_16

    if-nez p3, :cond_c

    :cond_16
    move v4, v14

    goto :goto_7

    :cond_17
    const/4 v9, 0x7

    const/16 v12, 0x8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v4, "\\."

    const-string v5, ""

    invoke-virtual {v15, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    const/4 v5, -0x1

    goto/16 :goto_4

    :cond_18
    move v4, v10

    :goto_7
    move-object/from16 v0, p0

    if-ltz v4, :cond_1a

    iget-object v1, v0, Lnj/c;->c:[I

    aget v2, v1, v4

    add-int/2addr v2, v6

    aput v2, v1, v4

    if-nez v3, :cond_19

    if-eqz p2, :cond_1a

    :cond_19
    const/4 v2, 0x6

    aget v3, v1, v2

    add-int/2addr v3, v6

    aput v3, v1, v2

    :cond_1a
    return v4
.end method

.method protected static j(C)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lnj/c;->g:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, -0x1

    if-lt v0, v2, :cond_0

    return v3

    :cond_0
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static k(C)Z
    .locals 2

    const-string v0, "I|loOBbgqzZ"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\uff5c\uff4f\uff51\uff4c\uff42\uff2f\uff29\uff22\uff3a\uff5a"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected static l(C)Z
    .locals 2

    const-string v0, ",-\u2014\u4e00~ \u3000"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private static m(C)Z
    .locals 2

    const-string v0, ":\uff1a"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected static n(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lnj/c;->j(C)I

    move-result v1

    if-gez v1, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lnj/c;->j(C)I

    move-result v5

    if-eq v5, v1, :cond_3

    invoke-static {v4}, Lnj/c;->l(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Lnj/c;->m(C)Z

    move-result v4

    if-nez v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method private static o(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x36

    const/4 v3, 0x1

    const/16 v4, 0x34

    if-eq v1, v4, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x35

    if-eq v1, v4, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    move v4, v0

    move v5, v4

    :goto_1
    if-gez v1, :cond_5

    rem-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_0

    move v1, v3

    :goto_2
    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x13

    if-eq v4, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v1, 0x32

    if-ne p0, v1, :cond_3

    move v0, v3

    :cond_3
    move v1, v0

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v6, v6, -0x30

    if-eqz v4, :cond_6

    mul-int/lit8 v6, v6, 0x2

    const/16 v7, 0x9

    if-le v6, v7, :cond_6

    add-int/lit8 v6, v6, -0x9

    :cond_6
    add-int/2addr v5, v6

    xor-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method protected static p(C)Z
    .locals 2

    invoke-static {p0}, Lnj/c;->q(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u96f6\u58f9\u8d30\u53c1\u8086\u4f0d\u9646\u67d2\u634c\u7396"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static q(C)Z
    .locals 1

    invoke-static {p0}, Lnj/c;->j(C)I

    move-result v0

    if-gez v0, :cond_0

    invoke-static {p0}, Lnj/c;->k(C)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected static r(C)I
    .locals 1

    const-string v0, "\uff10\uff11\uff12\uff13\uff14\uff15\uff16\uff17\uff18\uff19"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static s(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected a()I
    .locals 1

    sget-object v0, Lnj/c;->i:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public b(Lkj/b;[II)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lnj/c;->c:[I

    array-length v3, v2

    if-lt v0, v3, :cond_1

    iget-object p2, p0, Lnj/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lkj/b;->n:Ljava/util/List;

    iget-object p1, p0, Lnj/c;->b:Ljava/util/ArrayList;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return v1

    :cond_1
    aget v2, v2, v0

    if-lez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int v3, p3, v0

    aput v2, p2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected d(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    if-nez v8, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x30

    const/16 v1, 0x2e

    move v12, v0

    move v13, v1

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v16, 0x1

    if-lt v14, v6, :cond_5

    if-ltz v0, :cond_3

    if-le v0, v1, :cond_1

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v15, v15, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v15, v1, :cond_2

    invoke-virtual {v8, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v8, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    move v4, v12

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lnj/c;->i(Ljava/lang/String;IZCZC)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v1, v7, Lnj/c;->b:Ljava/util/ArrayList;

    new-instance v2, Lkj/b$a;

    invoke-direct {v2, v8, v0}, Lkj/b$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-object v9

    :cond_5
    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lnj/c;->q(C)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v10, 0x4e00

    if-eq v6, v10, :cond_7

    if-gez v0, :cond_6

    invoke-static {v6}, Lnj/c;->p(C)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-static {v6}, Lnj/c;->r(C)I

    move-result v2

    move v0, v14

    :cond_6
    invoke-static {v6}, Lnj/c;->p(C)Z

    move-result v6

    if-eqz v6, :cond_e

    move v15, v14

    goto :goto_3

    :cond_7
    if-ltz v0, :cond_e

    invoke-static {v6}, Lnj/c;->l(C)Z

    move-result v10

    if-eqz v10, :cond_8

    if-nez v3, :cond_8

    move v12, v6

    move v4, v14

    move/from16 v3, v16

    goto :goto_3

    :cond_8
    invoke-static {v6}, Lnj/c;->m(C)Z

    move-result v10

    if-eqz v10, :cond_9

    if-nez v5, :cond_9

    move v13, v6

    move/from16 v5, v16

    goto :goto_3

    :cond_9
    if-eq v6, v12, :cond_e

    if-eq v6, v13, :cond_e

    if-le v0, v1, :cond_a

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v10, v15, 0x1

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_c

    if-ge v4, v15, :cond_b

    goto :goto_2

    :cond_b
    const/16 v16, 0x0

    :goto_2
    move/from16 v3, v16

    :cond_c
    move-object/from16 v0, p0

    move-object v1, v6

    move v4, v12

    move-object v11, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Lnj/c;->i(Ljava/lang/String;IZCZC)I

    move-result v0

    if-ltz v0, :cond_d

    iget-object v1, v7, Lnj/c;->b:Ljava/util/ArrayList;

    new-instance v2, Lkj/b$a;

    invoke-direct {v2, v11, v0}, Lkj/b$a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move v1, v10

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    :cond_e
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0
.end method

.method protected f()V
    .locals 4

    invoke-super {p0}, Lnj/f;->f()V

    iget-object v0, p0, Lnj/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lnj/c;->c:[I

    array-length v3, v2

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
