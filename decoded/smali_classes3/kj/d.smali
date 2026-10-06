.class public Lkj/d;
.super Lkj/e;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "kj.d"


# instance fields
.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lkj/e;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkj/d;->b:J

    return-void
.end method

.method private i(Ljava/lang/String;[CI)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    if-le v1, v2, :cond_0

    return v0

    :cond_0
    move v2, v0

    :goto_1
    const/4 v3, 0x1

    if-lt v2, p3, :cond_1

    move v2, v3

    goto :goto_2

    :cond_1
    add-int v4, v1, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-char v5, p2, v2

    if-eq v4, v5, :cond_3

    move v2, v0

    :goto_2
    if-eqz v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private j(Ljava/util/List;[CII)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[CII)I"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p4, v0, :cond_0

    return p4

    :cond_0
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, p3, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-lt v2, p3, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-char v4, p2, v2

    if-eq v3, v4, :cond_2

    :goto_2
    if-eqz v1, :cond_3

    return p4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected d(Lkj/b;Landroid/content/Context;)Z
    .locals 7

    iget-object v0, p1, Lkj/b;->g:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p1, Lkj/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    move v3, v1

    :goto_0
    iget-object v4, p1, Lkj/b;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    :try_start_0
    const-string p1, "phish"

    invoke-static {p2, p1}, Lkj/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v1

    :goto_1
    if-nez v3, :cond_3

    :try_start_1
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_3

    :cond_0
    move v5, v1

    :goto_2
    if-lt v5, v0, :cond_1

    goto :goto_1

    :cond_1
    aget-object v6, v2, v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v3

    goto :goto_4

    :catch_0
    move v1, v3

    :catch_1
    sget-object p1, Lkj/d;->c:Ljava/lang/String;

    const-string p2, "Exception on read phish."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    iget-object v4, p1, Lkj/b;->g:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lkj/i;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_4
    return v1
.end method

.method public h(Lkj/b;Landroid/content/Context;)Z
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p2}, Lkj/e;->f(Lkj/b;Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p2}, Lkj/e;->a(Lkj/b;Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Lkj/e;->e(Lkj/b;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-static/range {p1 .. p1}, Lkj/e;->b(Lkj/b;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    return v5

    :cond_1
    invoke-virtual {v0, v2}, Lkj/d;->k(Landroid/content/Context;)Lkj/g;

    move-result-object v3

    new-instance v6, Lnj/e;

    invoke-direct {v6}, Lnj/e;-><init>()V

    invoke-virtual {v6, v3}, Lnj/e;->g(Lkj/g;)V

    const-string v7, "model"

    invoke-static {v2, v7}, Lkj/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    new-array v9, v8, [D

    const/4 v10, 0x2

    new-array v11, v10, [D

    move v12, v4

    move v13, v12

    :goto_0
    if-ge v12, v8, :cond_17

    move v14, v4

    :goto_1
    if-lt v14, v10, :cond_16

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    new-array v14, v10, [I

    aput v15, v14, v5

    aput v10, v14, v4

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    invoke-virtual {v6}, Lnj/e;->c()[Lnj/g;

    move-result-object v14

    const/4 v5, 0x0

    :goto_2
    array-length v10, v14

    if-lt v5, v10, :cond_15

    invoke-virtual {v6}, Lnj/e;->d()V

    const/4 v5, 0x0

    :goto_3
    if-lt v5, v15, :cond_14

    invoke-virtual {v6, v1}, Lnj/e;->f(Lkj/b;)V

    invoke-virtual/range {p1 .. p1}, Lkj/b;->f()[I

    move-result-object v10

    const/4 v5, 0x0

    :goto_4
    array-length v14, v10

    if-lt v5, v14, :cond_11

    invoke-virtual/range {p1 .. p1}, Lkj/b;->i()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    const/16 v5, 0x40

    new-array v5, v5, [C

    move-object/from16 v20, v6

    move/from16 v21, v8

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_5
    const/16 v8, 0xa

    if-lt v10, v4, :cond_b

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lkj/b;->d()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x0

    :goto_6
    if-lt v10, v4, :cond_7

    invoke-static {}, Lnj/a;->b()I

    move-result v4

    const/4 v5, 0x2

    new-array v6, v5, [I

    const/4 v8, 0x1

    aput v4, v6, v8

    const/4 v4, 0x0

    aput v5, v6, v4

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, [[D

    const/4 v4, 0x0

    :goto_7
    invoke-static {}, Lnj/a;->b()I

    move-result v6

    if-lt v4, v6, :cond_6

    invoke-virtual/range {p1 .. p1}, Lkj/b;->c()I

    move-result v6

    const/4 v4, 0x0

    :goto_8
    if-lt v4, v5, :cond_5

    const/4 v4, 0x3

    new-array v4, v4, [D

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v14

    const/16 v18, 0x0

    aput-wide v14, v4, v18

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v14

    const/4 v6, 0x1

    aput-wide v14, v4, v6

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v14

    aput-wide v14, v4, v5

    aget-wide v14, v11, v18

    aget-wide v22, v11, v6

    sub-double v14, v14, v22

    invoke-virtual {v0, v4, v1}, Lkj/e;->g([DLkj/b;)[D

    move-result-object v4

    aget-wide v22, v4, v6

    cmpg-double v5, v14, v22

    if-gez v5, :cond_2

    move/from16 v8, v18

    const/4 v1, 0x1

    :goto_9
    const/16 v19, 0x1

    goto/16 :goto_14

    :cond_2
    aget-wide v5, v4, v18

    cmpl-double v5, v14, v5

    if-lez v5, :cond_3

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/16 v18, 0x1

    goto :goto_9

    :cond_3
    const/4 v5, 0x2

    aget-wide v22, v4, v5

    sub-double v14, v14, v22

    aput-wide v14, v9, v12

    const-wide/16 v4, 0x0

    cmpl-double v4, v14, v4

    if-lez v4, :cond_4

    add-int/lit8 v13, v13, 0x1

    :cond_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v20

    move/from16 v8, v21

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x2

    goto/16 :goto_0

    :cond_5
    aget-wide v22, v11, v4

    aget-object v5, v14, v4

    aget-wide v24, v5, v6

    add-double v22, v22, v24

    aput-wide v22, v11, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x2

    goto :goto_8

    :cond_6
    const/4 v5, 0x0

    aget-object v6, v14, v5

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v22

    aput-wide v22, v6, v4

    const/4 v5, 0x1

    aget-object v6, v14, v5

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v22

    aput-wide v22, v6, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x2

    goto/16 :goto_7

    :cond_7
    const/4 v14, 0x0

    :goto_a
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readChar()C

    move-result v15

    if-ne v15, v8, :cond_a

    invoke-direct {v0, v6, v5, v14}, Lkj/d;->i(Ljava/lang/String;[CI)Z

    move-result v22

    const/4 v14, 0x0

    :goto_b
    const/4 v15, 0x2

    if-lt v14, v15, :cond_8

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    :cond_8
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v23

    aget-wide v25, v11, v14

    if-eqz v22, :cond_9

    goto :goto_c

    :cond_9
    invoke-static/range {v23 .. v24}, Lkj/i;->g(D)D

    move-result-wide v23

    :goto_c
    add-double v25, v25, v23

    aput-wide v25, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v22, v14, 0x1

    aput-char v15, v5, v14

    move/from16 v14, v22

    goto :goto_a

    :cond_b
    move/from16 v22, v4

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readChar()C

    move-result v4

    if-ne v4, v8, :cond_10

    invoke-direct {v0, v14, v5, v1, v6}, Lkj/d;->j(Ljava/util/List;[CII)I

    move-result v1

    if-ge v1, v15, :cond_c

    const/16 v23, 0x1

    goto :goto_e

    :cond_c
    const/16 v23, 0x0

    :goto_e
    if-eqz v23, :cond_d

    add-int/lit8 v1, v1, 0x1

    move/from16 v24, v1

    goto :goto_f

    :cond_d
    move/from16 v24, v6

    :goto_f
    const/4 v1, 0x0

    const/4 v4, 0x2

    :goto_10
    if-lt v1, v4, :cond_e

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move/from16 v4, v22

    move/from16 v6, v24

    goto/16 :goto_5

    :cond_e
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v25

    aget-wide v27, v11, v1

    if-eqz v23, :cond_f

    goto :goto_11

    :cond_f
    invoke-static/range {v25 .. v26}, Lkj/i;->g(D)D

    move-result-wide v25

    :goto_11
    add-double v27, v27, v25

    aput-wide v27, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_10
    const/16 v25, 0x2

    add-int/lit8 v23, v1, 0x1

    aput-char v4, v5, v1

    move/from16 v1, v23

    goto :goto_d

    :cond_11
    move-object/from16 v20, v6

    move/from16 v21, v8

    const/16 v23, 0x0

    const/16 v25, 0x2

    aget-wide v14, v11, v23

    aget v1, v10, v5

    if-lez v1, :cond_12

    aget-object v1, v4, v23

    aget-wide v26, v1, v5

    goto :goto_12

    :cond_12
    aget-object v1, v4, v23

    aget-wide v26, v1, v5

    invoke-static/range {v26 .. v27}, Lkj/i;->g(D)D

    move-result-wide v26

    :goto_12
    add-double v14, v14, v26

    aput-wide v14, v11, v23

    const/4 v1, 0x1

    aget-wide v14, v11, v1

    aget v6, v10, v5

    if-lez v6, :cond_13

    aget-object v6, v4, v1

    aget-wide v22, v6, v5

    goto :goto_13

    :cond_13
    aget-object v6, v4, v1

    aget-wide v22, v6, v5

    invoke-static/range {v22 .. v23}, Lkj/i;->g(D)D

    move-result-wide v22

    :goto_13
    add-double v14, v14, v22

    aput-wide v14, v11, v1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v6, v20

    move/from16 v8, v21

    goto/16 :goto_4

    :cond_14
    move-object/from16 v20, v6

    move/from16 v21, v8

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/16 v25, 0x2

    aget-object v6, v4, v8

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v18

    aput-wide v18, v6, v5

    aget-object v6, v4, v1

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v18

    aput-wide v18, v6, v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v6, v20

    move/from16 v8, v21

    goto/16 :goto_3

    :cond_15
    move-object/from16 v20, v6

    move/from16 v21, v8

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/16 v25, 0x2

    aget-object v6, v14, v5

    invoke-virtual {v6, v7}, Lnj/g;->d(Ljava/io/DataInputStream;)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v6, v20

    move/from16 v8, v21

    goto/16 :goto_2

    :cond_16
    move v1, v5

    move-object/from16 v20, v6

    move/from16 v21, v8

    move/from16 v25, v10

    const-wide/16 v16, 0x0

    move v8, v4

    aput-wide v16, v11, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v8, v21

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_17
    move v1, v5

    move/from16 v21, v8

    move v8, v4

    move/from16 v18, v8

    move/from16 v19, v18

    :goto_14
    invoke-virtual {v3}, Lkj/g;->b()V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    if-nez v19, :cond_1c

    sub-int v2, v21, v13

    if-le v13, v2, :cond_18

    :goto_15
    move v4, v1

    goto :goto_17

    :cond_18
    if-ge v13, v2, :cond_1a

    :cond_19
    move v4, v8

    goto :goto_17

    :cond_1a
    move v4, v8

    move/from16 v5, v21

    const-wide/16 v2, 0x0

    :goto_16
    const-wide/16 v6, 0x0

    if-lt v4, v5, :cond_1b

    cmpl-double v2, v2, v6

    if-lez v2, :cond_19

    goto :goto_15

    :cond_1b
    aget-wide v10, v9, v4

    add-double/2addr v2, v10

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_1c
    move/from16 v4, v18

    :goto_17
    return v4
.end method

.method protected k(Landroid/content/Context;)Lkj/g;
    .locals 1

    new-instance v0, Lkj/g;

    invoke-direct {v0}, Lkj/g;-><init>()V

    invoke-virtual {v0, p1}, Lkj/g;->d(Landroid/content/Context;)V

    return-object v0
.end method
