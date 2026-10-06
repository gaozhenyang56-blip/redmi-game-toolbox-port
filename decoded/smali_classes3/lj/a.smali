.class public Llj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String; = "lj.a"

.field private static final l:[[I


# instance fields
.field private a:[D

.field private b:[[D

.field private c:[I

.field private d:[I

.field private e:I

.field private f:[I

.field private g:[I

.field private h:I

.field private i:I

.field private j:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x4

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v5, v3, v4

    aput-object v3, v1, v4

    new-array v2, v2, [I

    aput v0, v2, v4

    aput v5, v2, v0

    const/4 v3, 0x3

    aput v0, v2, v3

    aput-object v2, v1, v5

    sput-object v1, Llj/a;->l:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([BI[CII)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p5, :cond_0

    return v0

    :cond_0
    mul-int/lit8 v2, v1, 0x2

    add-int v3, v2, p2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    add-int v3, p4, v1

    aget-char v3, p3, v3

    if-eq v3, v2, :cond_1

    sub-int/2addr v3, v2

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b([CII)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sub-int v3, p3, p2

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    const/4 v7, 0x4

    aput v7, v5, v6

    const/4 v8, 0x0

    aput v3, v5, v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    new-array v4, v4, [I

    aput v7, v4, v6

    aput v3, v4, v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    move v9, v8

    :goto_0
    if-lt v9, v3, :cond_9

    add-int/lit8 v7, v3, -0x1

    aget-object v5, v5, v7

    aget-wide v9, v5, v6

    const/4 v11, 0x3

    aget-wide v12, v5, v11

    cmpg-double v5, v9, v12

    if-gtz v5, :cond_0

    goto :goto_1

    :cond_0
    move v11, v6

    :goto_1
    new-array v10, v3, [I

    aput v11, v10, v7

    add-int/lit8 v5, v3, -0x2

    :goto_2
    if-gez v5, :cond_8

    move v4, v8

    :goto_3
    if-lt v4, v3, :cond_1

    goto :goto_7

    :cond_1
    sget-object v5, Llj/a;->l:[[I

    aget-object v5, v5, v8

    aget v7, v10, v4

    aget v5, v5, v7

    add-int/lit8 v7, v4, 0x1

    :goto_4
    if-ge v7, v3, :cond_3

    if-eq v5, v6, :cond_2

    goto :goto_5

    :cond_2
    sget-object v9, Llj/a;->l:[[I

    aget-object v5, v9, v5

    aget v9, v10, v7

    aget v5, v5, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    :goto_5
    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/String;

    add-int v9, p2, v4

    sub-int v4, v7, v4

    invoke-direct {v5, v1, v9, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v7

    goto :goto_3

    :cond_4
    if-lt v7, v3, :cond_6

    :goto_6
    if-lt v4, v3, :cond_5

    :goto_7
    return-object v2

    :cond_5
    new-instance v5, Ljava/lang/String;

    add-int v7, p2, v4

    invoke-direct {v5, v1, v7, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    :goto_8
    add-int/lit8 v5, v7, -0x1

    if-lt v4, v5, :cond_7

    move v4, v5

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/lang/String;

    add-int v9, p2, v4

    invoke-direct {v5, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v7, v5, 0x1

    aget-object v9, v4, v7

    aget v7, v10, v7

    aget v7, v9, v7

    aput v7, v10, v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_9
    move v10, v8

    if-nez v9, :cond_b

    :goto_9
    if-lt v10, v7, :cond_a

    goto :goto_b

    :cond_a
    aget-object v11, v5, v9

    iget-object v12, v0, Llj/a;->a:[D

    aget-wide v13, v12, v10

    add-int v12, v9, p2

    aget-char v12, v1, v12

    invoke-direct {v0, v10, v12}, Llj/a;->e(IC)D

    move-result-wide v15

    add-double/2addr v13, v15

    aput-wide v13, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_b
    :goto_a
    if-lt v10, v7, :cond_c

    :goto_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_c
    const-wide v11, -0x2b3349c4a3b7b89bL    # -3.14E100

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move v14, v8

    :goto_c
    if-lt v14, v7, :cond_f

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpl-double v14, v14, v11

    if-eqz v14, :cond_d

    add-int v14, v9, p2

    aget-char v14, v1, v14

    invoke-direct {v0, v10, v14}, Llj/a;->e(IC)D

    move-result-wide v14

    cmpl-double v11, v14, v11

    if-nez v11, :cond_e

    :cond_d
    aget-object v11, v4, v9

    aput v6, v11, v10

    :cond_e
    aget-object v11, v5, v9

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    add-int v14, v9, p2

    aget-char v14, v1, v14

    invoke-direct {v0, v10, v14}, Llj/a;->e(IC)D

    move-result-wide v14

    add-double/2addr v12, v14

    aput-wide v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v15, v9, -0x1

    aget-object v15, v5, v15

    aget-wide v16, v15, v14

    iget-object v15, v0, Llj/a;->b:[[D

    aget-object v15, v15, v14

    aget-wide v18, v15, v10

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    cmpl-double v16, v16, v18

    if-lez v16, :cond_10

    aget-object v13, v4, v9

    aput v14, v13, v10

    move-object v13, v15

    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto :goto_c
.end method

.method private d([CII)I
    .locals 16

    move-object/from16 v6, p0

    move/from16 v7, p3

    iget v0, v6, Llj/a;->e:I

    const/4 v8, 0x0

    if-le v7, v0, :cond_0

    return v8

    :cond_0
    iget-object v0, v6, Llj/a;->g:[I

    add-int/lit8 v1, v7, -0x1

    aget v9, v0, v1

    iget-object v0, v6, Llj/a;->f:[I

    aget v0, v0, v1

    mul-int/lit8 v10, v7, 0x2

    add-int/lit8 v11, v10, 0x4

    add-int/lit8 v0, v0, -0x1

    move v12, v0

    move v13, v8

    :goto_0
    if-le v13, v12, :cond_1

    return v8

    :cond_1
    add-int v0, v13, v12

    div-int/lit8 v14, v0, 0x2

    iget-object v1, v6, Llj/a;->j:[B

    mul-int v0, v11, v14

    add-int v15, v9, v0

    move-object/from16 v0, p0

    move v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Llj/a;->a([BI[CII)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v6, Llj/a;->j:[B

    add-int/2addr v15, v10

    invoke-static {v0, v15}, Llj/b;->b([BI)I

    move-result v0

    return v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v13, v14, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v12, v14, -0x1

    goto :goto_0
.end method

.method private e(IC)D
    .locals 7

    iget-object v0, p0, Llj/a;->d:[I

    aget v0, v0, p1

    iget-object v1, p0, Llj/a;->c:[I

    aget p1, v1, p1

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    :goto_0
    if-le v1, p1, :cond_0

    const-wide p1, -0x2b3349c4a3b7b89bL    # -3.14E100

    return-wide p1

    :cond_0
    add-int v2, v1, p1

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v2, 0x6

    add-int/2addr v3, v0

    iget-object v4, p0, Llj/a;->j:[B

    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-char v5, v5

    if-ne v5, p2, :cond_1

    add-int/lit8 v3, v3, 0x2

    invoke-static {v4, v3}, Llj/b;->a([BI)F

    move-result p1

    float-to-double p1, p1

    return-wide p1

    :cond_1
    if-ge v5, p2, :cond_2

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 p1, v2, -0x1

    goto :goto_0
.end method

.method private g(C)Z
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    add-int/lit8 v2, v1, 0x1

    new-array v3, v2, [D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    new-array v2, v2, [I

    add-int/lit8 v4, v1, -0x1

    move v5, v4

    :goto_0
    if-gez v5, :cond_e

    iget v5, p0, Llj/a;->i:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    iget v7, p0, Llj/a;->h:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    move v9, v4

    :goto_1
    if-gez v9, :cond_a

    const/4 v4, 0x0

    move v3, v4

    :goto_2
    if-lt v3, v1, :cond_0

    new-array p1, v4, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_0
    aget v5, v2, v3

    add-int/lit8 v6, v3, 0x1

    if-ne v5, v6, :cond_9

    move v6, v3

    :goto_3
    if-ge v6, v1, :cond_2

    aget v5, v2, v6

    add-int/lit8 v7, v6, 0x1

    if-eq v5, v7, :cond_1

    goto :goto_4

    :cond_1
    move v6, v7

    goto :goto_3

    :cond_2
    :goto_4
    if-lt v3, v6, :cond_3

    move v3, v6

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_5
    if-ge v5, v6, :cond_5

    aget-char v7, p1, v5

    invoke-direct {p0, v7}, Llj/a;->g(C)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    :goto_6
    if-ge v3, v5, :cond_6

    invoke-direct {p0, p1, v3, v5}, Llj/a;->b([CII)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    move v3, v5

    :goto_7
    if-ge v3, v6, :cond_8

    aget-char v7, p1, v3

    invoke-direct {p0, v7}, Llj/a;->g(C)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    :goto_8
    if-ge v5, v3, :cond_2

    if-ge v5, v6, :cond_2

    new-instance v7, Ljava/lang/String;

    sub-int v8, v3, v5

    invoke-direct {v7, p1, v5, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    new-instance v6, Ljava/lang/String;

    sub-int/2addr v5, v3

    invoke-direct {v6, p1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v3, v2, v3

    goto :goto_2

    :cond_a
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v7

    add-int/lit8 v10, v9, 0x1

    aget-wide v11, v3, v10

    add-double/2addr v4, v11

    aput-wide v4, v3, v9

    :goto_9
    if-le v10, v1, :cond_b

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_b
    sub-int v4, v10, v9

    invoke-direct {p0, p1, v9, v4}, Llj/a;->d([CII)I

    move-result v4

    if-nez v4, :cond_c

    goto :goto_a

    :cond_c
    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget v5, p0, Llj/a;->h:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    aget-wide v11, v3, v10

    add-double/2addr v4, v11

    aget-wide v11, v3, v9

    cmpl-double v11, v4, v11

    if-lez v11, :cond_d

    aput v10, v2, v9

    aput-wide v4, v3, v9

    :cond_d
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_e
    add-int/lit8 v6, v5, 0x1

    aput v6, v2, v5

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Llj/a;->d([CII)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public h(Ljava/io/InputStream;)Z
    .locals 11

    const-string v0, "Dict"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    const/4 v3, 0x4

    new-array v4, v3, [D

    iput-object v4, p0, Llj/a;->a:[D

    move v4, v1

    :goto_0
    if-lt v4, v3, :cond_8

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    aput v3, v5, v6

    aput v3, v5, v1

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    iput-object v5, p0, Llj/a;->b:[[D

    move v5, v1

    :goto_1
    if-lt v5, v3, :cond_6

    new-array v5, v3, [I

    iput-object v5, p0, Llj/a;->c:[I

    move v5, v1

    :goto_2
    if-lt v5, v3, :cond_5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Llj/a;->e:I

    new-array v5, v5, [I

    iput-object v5, p0, Llj/a;->f:[I

    move v5, v1

    :goto_3
    iget v7, p0, Llj/a;->e:I

    if-lt v5, v7, :cond_4

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Llj/a;->h:I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, p0, Llj/a;->i:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "mLengthCount:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Llj/a;->e:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\tmTotalFreq:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Llj/a;->h:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\tmMinFreq:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Llj/a;->i:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v5, v3, [I

    iput-object v5, p0, Llj/a;->d:[I

    aput v1, v5, v1

    move v5, v6

    :goto_4
    if-lt v5, v3, :cond_3

    iget-object v5, p0, Llj/a;->d:[I

    const/4 v7, 0x3

    aget v5, v5, v7

    iget-object v8, p0, Llj/a;->c:[I

    aget v7, v8, v7

    mul-int/lit8 v7, v7, 0x6

    add-int/2addr v5, v7

    add-int/2addr v5, v1

    iget v7, p0, Llj/a;->e:I

    new-array v7, v7, [I

    iput-object v7, p0, Llj/a;->g:[I

    aput v5, v7, v1

    move v5, v6

    :goto_5
    iget v7, p0, Llj/a;->e:I

    if-lt v5, v7, :cond_2

    iget-object v5, p0, Llj/a;->g:[I

    add-int/lit8 v8, v7, -0x1

    aget v5, v5, v8

    iget-object v8, p0, Llj/a;->f:[I

    add-int/lit8 v9, v7, -0x1

    aget v8, v8, v9

    mul-int/2addr v7, v4

    add-int/2addr v7, v3

    mul-int/2addr v8, v7

    add-int/2addr v5, v8

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v3

    if-eq v5, v3, :cond_0

    const-string p1, "The dict file is wrong, please make sure it\'s not be modified."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-array v4, v3, [B

    iput-object v4, p0, Llj/a;->j:[B

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-eq p1, v3, :cond_1

    const-string p1, "Reading dict file failed, availabe size is not equal to realy read size."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return v6

    :cond_2
    iget-object v7, p0, Llj/a;->g:[I

    add-int/lit8 v8, v5, -0x1

    aget v9, v7, v8

    iget-object v10, p0, Llj/a;->f:[I

    aget v8, v10, v8

    mul-int/lit8 v10, v5, 0x2

    add-int/2addr v10, v3

    mul-int/2addr v8, v10

    add-int/2addr v9, v8

    aput v9, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_3
    iget-object v7, p0, Llj/a;->d:[I

    add-int/lit8 v8, v5, -0x1

    aget v9, v7, v8

    iget-object v10, p0, Llj/a;->c:[I

    aget v8, v10, v8

    mul-int/lit8 v8, v8, 0x6

    add-int/2addr v9, v8

    aput v9, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    iget-object v7, p0, Llj/a;->f:[I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_5
    iget-object v7, p0, Llj/a;->c:[I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_6
    move v7, v1

    :goto_6
    if-lt v7, v3, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_7
    iget-object v8, p0, Llj/a;->b:[[D

    aget-object v8, v8, v5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v9

    aput-wide v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_8
    iget-object v5, p0, Llj/a;->a:[D

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v6

    aput-wide v6, v5, v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    sget-object p1, Llj/a;->k:Ljava/lang/String;

    const-string v0, "IOException on load dict."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
