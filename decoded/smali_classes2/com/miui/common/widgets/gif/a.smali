.class Lcom/miui/common/widgets/gif/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/widgets/gif/a$a;
    }
.end annotation


# static fields
.field private static final w:Ljava/lang/String; = "a"


# instance fields
.field private a:[I

.field private b:Ljava/nio/ByteBuffer;

.field private c:[B

.field private d:[B

.field private e:I

.field private f:I

.field private g:Lcom/miui/common/widgets/gif/d;

.field private h:[S

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[I

.field private m:I

.field private n:Lcom/miui/common/widgets/gif/c;

.field private o:Lcom/miui/common/widgets/gif/a$a;

.field private p:Landroid/graphics/Bitmap;

.field private q:Z

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    new-instance v0, Lcom/miui/common/widgets/gif/e;

    invoke-direct {v0}, Lcom/miui/common/widgets/gif/e;-><init>()V

    invoke-direct {p0, v0}, Lcom/miui/common/widgets/gif/a;-><init>(Lcom/miui/common/widgets/gif/a$a;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/common/widgets/gif/a$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/widgets/gif/a;->e:I

    iput v0, p0, Lcom/miui/common/widgets/gif/a;->f:I

    iput-object p1, p0, Lcom/miui/common/widgets/gif/a;->o:Lcom/miui/common/widgets/gif/a$a;

    new-instance p1, Lcom/miui/common/widgets/gif/c;

    invoke-direct {p1}, Lcom/miui/common/widgets/gif/c;-><init>()V

    iput-object p1, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    return-void
.end method

.method private b(III)I
    .locals 9

    const/4 v0, 0x0

    move v1, p1

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    iget v7, p0, Lcom/miui/common/widgets/gif/a;->s:I

    add-int/2addr v7, p1

    if-ge v1, v7, :cond_1

    iget-object v7, p0, Lcom/miui/common/widgets/gif/a;->k:[B

    array-length v8, v7

    if-ge v1, v8, :cond_1

    if-ge v1, p2, :cond_1

    aget-byte v7, v7, v1

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/miui/common/widgets/gif/a;->a:[I

    aget v7, v8, v7

    if-eqz v7, :cond_0

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v2, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr p1, p3

    move p3, p1

    :goto_1
    iget v1, p0, Lcom/miui/common/widgets/gif/a;->s:I

    add-int/2addr v1, p1

    if-ge p3, v1, :cond_3

    iget-object v1, p0, Lcom/miui/common/widgets/gif/a;->k:[B

    array-length v7, v1

    if-ge p3, v7, :cond_3

    if-ge p3, p2, :cond_3

    aget-byte v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    iget-object v7, p0, Lcom/miui/common/widgets/gif/a;->a:[I

    aget v1, v7, v1

    if-eqz v1, :cond_2

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v5, v1

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    return v0

    :cond_4
    div-int/2addr v2, v6

    shl-int/lit8 p1, v2, 0x18

    div-int/2addr v3, v6

    shl-int/lit8 p2, v3, 0x10

    or-int/2addr p1, p2

    div-int/2addr v4, v6

    shl-int/lit8 p2, v4, 0x8

    or-int/2addr p1, p2

    div-int/2addr v5, v6

    or-int/2addr p1, v5

    return p1
.end method

.method private c(Lcom/miui/common/widgets/gif/b;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput v2, v0, Lcom/miui/common/widgets/gif/a;->e:I

    iput v2, v0, Lcom/miui/common/widgets/gif/a;->f:I

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/miui/common/widgets/gif/a;->b:Ljava/nio/ByteBuffer;

    iget v4, v1, Lcom/miui/common/widgets/gif/b;->j:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget v3, v1, Lcom/miui/common/widgets/gif/c;->f:I

    iget v1, v1, Lcom/miui/common/widgets/gif/c;->g:I

    goto :goto_0

    :cond_1
    iget v3, v1, Lcom/miui/common/widgets/gif/b;->c:I

    iget v1, v1, Lcom/miui/common/widgets/gif/b;->d:I

    :goto_0
    mul-int/2addr v3, v1

    iget-object v1, v0, Lcom/miui/common/widgets/gif/a;->k:[B

    if-eqz v1, :cond_2

    array-length v1, v1

    if-ge v1, v3, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/miui/common/widgets/gif/a;->o:Lcom/miui/common/widgets/gif/a$a;

    invoke-interface {v1, v3}, Lcom/miui/common/widgets/gif/a$a;->a(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/miui/common/widgets/gif/a;->k:[B

    :cond_3
    iget-object v1, v0, Lcom/miui/common/widgets/gif/a;->h:[S

    const/16 v4, 0x1000

    if-nez v1, :cond_4

    new-array v1, v4, [S

    iput-object v1, v0, Lcom/miui/common/widgets/gif/a;->h:[S

    :cond_4
    iget-object v1, v0, Lcom/miui/common/widgets/gif/a;->i:[B

    if-nez v1, :cond_5

    new-array v1, v4, [B

    iput-object v1, v0, Lcom/miui/common/widgets/gif/a;->i:[B

    :cond_5
    iget-object v1, v0, Lcom/miui/common/widgets/gif/a;->j:[B

    if-nez v1, :cond_6

    const/16 v1, 0x1001

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/miui/common/widgets/gif/a;->j:[B

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/miui/common/widgets/gif/a;->n()I

    move-result v1

    const/4 v5, 0x1

    shl-int v6, v5, v1

    add-int/lit8 v7, v6, 0x1

    add-int/lit8 v8, v6, 0x2

    add-int/2addr v1, v5

    shl-int v9, v5, v1

    sub-int/2addr v9, v5

    move v10, v2

    :goto_1
    if-ge v10, v6, :cond_7

    iget-object v11, v0, Lcom/miui/common/widgets/gif/a;->h:[S

    aput-short v2, v11, v10

    iget-object v11, v0, Lcom/miui/common/widgets/gif/a;->i:[B

    int-to-byte v12, v10

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    const/4 v10, -0x1

    move/from16 v19, v1

    move v11, v2

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v21, v16

    move/from16 v22, v21

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v20, v10

    :goto_2
    if-ge v11, v3, :cond_15

    const/4 v2, 0x3

    if-nez v12, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/miui/common/widgets/gif/a;->m()I

    move-result v12

    if-gtz v12, :cond_8

    iput v2, v0, Lcom/miui/common/widgets/gif/a;->r:I

    goto/16 :goto_8

    :cond_8
    const/4 v13, 0x0

    :cond_9
    iget-object v4, v0, Lcom/miui/common/widgets/gif/a;->c:[B

    aget-byte v4, v4, v13

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v14

    add-int/2addr v15, v4

    add-int/lit8 v14, v14, 0x8

    add-int/2addr v13, v5

    add-int/2addr v12, v10

    move/from16 v4, v17

    move/from16 v5, v19

    move/from16 v23, v20

    move/from16 v24, v21

    :goto_3
    if-lt v14, v5, :cond_14

    and-int v10, v15, v18

    shr-int/2addr v15, v5

    sub-int/2addr v14, v5

    if-ne v10, v6, :cond_a

    move v5, v1

    move v4, v8

    move/from16 v18, v9

    const/4 v10, -0x1

    const/16 v23, -0x1

    goto :goto_3

    :cond_a
    if-le v10, v4, :cond_b

    iput v2, v0, Lcom/miui/common/widgets/gif/a;->r:I

    goto :goto_4

    :cond_b
    if-ne v10, v7, :cond_c

    :goto_4
    move/from16 v17, v4

    move/from16 v19, v5

    move/from16 v20, v23

    move/from16 v21, v24

    const/4 v2, 0x0

    const/16 v4, 0x1000

    const/4 v5, 0x1

    const/4 v10, -0x1

    goto :goto_2

    :cond_c
    move/from16 v19, v1

    move/from16 v2, v23

    const/4 v1, -0x1

    if-ne v2, v1, :cond_d

    iget-object v2, v0, Lcom/miui/common/widgets/gif/a;->j:[B

    add-int/lit8 v21, v22, 0x1

    iget-object v1, v0, Lcom/miui/common/widgets/gif/a;->i:[B

    aget-byte v1, v1, v10

    aput-byte v1, v2, v22

    move/from16 v23, v10

    move/from16 v24, v23

    move/from16 v1, v19

    move/from16 v22, v21

    const/4 v2, 0x3

    const/4 v10, -0x1

    goto :goto_3

    :cond_d
    if-lt v10, v4, :cond_e

    iget-object v1, v0, Lcom/miui/common/widgets/gif/a;->j:[B

    add-int/lit8 v21, v22, 0x1

    move/from16 v25, v7

    move/from16 v7, v24

    int-to-byte v7, v7

    aput-byte v7, v1, v22

    move v1, v2

    move/from16 v22, v21

    goto :goto_5

    :cond_e
    move/from16 v25, v7

    move v1, v10

    :goto_5
    if-lt v1, v6, :cond_f

    iget-object v7, v0, Lcom/miui/common/widgets/gif/a;->j:[B

    add-int/lit8 v21, v22, 0x1

    move/from16 v24, v6

    iget-object v6, v0, Lcom/miui/common/widgets/gif/a;->i:[B

    aget-byte v6, v6, v1

    aput-byte v6, v7, v22

    iget-object v6, v0, Lcom/miui/common/widgets/gif/a;->h:[S

    aget-short v1, v6, v1

    move/from16 v22, v21

    move/from16 v6, v24

    goto :goto_5

    :cond_f
    move/from16 v24, v6

    iget-object v6, v0, Lcom/miui/common/widgets/gif/a;->i:[B

    aget-byte v1, v6, v1

    and-int/lit16 v1, v1, 0xff

    iget-object v7, v0, Lcom/miui/common/widgets/gif/a;->j:[B

    add-int/lit8 v21, v22, 0x1

    move/from16 v26, v8

    int-to-byte v8, v1

    aput-byte v8, v7, v22

    const/16 v7, 0x1000

    if-ge v4, v7, :cond_11

    iget-object v7, v0, Lcom/miui/common/widgets/gif/a;->h:[S

    int-to-short v2, v2

    aput-short v2, v7, v4

    aput-byte v8, v6, v4

    add-int/lit8 v4, v4, 0x1

    and-int v2, v4, v18

    if-nez v2, :cond_10

    const/16 v2, 0x1000

    if-ge v4, v2, :cond_12

    add-int/lit8 v5, v5, 0x1

    add-int v18, v18, v4

    goto :goto_6

    :cond_10
    const/16 v2, 0x1000

    goto :goto_6

    :cond_11
    move v2, v7

    :cond_12
    :goto_6
    move/from16 v22, v21

    :goto_7
    if-lez v22, :cond_13

    iget-object v6, v0, Lcom/miui/common/widgets/gif/a;->k:[B

    add-int/lit8 v7, v16, 0x1

    iget-object v8, v0, Lcom/miui/common/widgets/gif/a;->j:[B

    add-int/lit8 v22, v22, -0x1

    aget-byte v8, v8, v22

    aput-byte v8, v6, v16

    add-int/lit8 v11, v11, 0x1

    move/from16 v16, v7

    goto :goto_7

    :cond_13
    move/from16 v23, v10

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v26

    const/4 v2, 0x3

    const/4 v10, -0x1

    move/from16 v24, v1

    move/from16 v1, v19

    goto/16 :goto_3

    :cond_14
    move/from16 v25, v7

    move/from16 v2, v23

    move/from16 v7, v24

    move/from16 v20, v2

    move/from16 v17, v4

    move/from16 v19, v5

    move/from16 v21, v7

    move/from16 v7, v25

    const/4 v2, 0x0

    const/16 v4, 0x1000

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_15
    :goto_8
    move/from16 v1, v16

    :goto_9
    if-ge v1, v3, :cond_16

    iget-object v2, v0, Lcom/miui/common/widgets/gif/a;->k:[B

    const/4 v4, 0x0

    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_16
    return-void
.end method

.method private f()Lcom/miui/common/widgets/gif/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/widgets/gif/a;->g:Lcom/miui/common/widgets/gif/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/common/widgets/gif/d;

    invoke-direct {v0}, Lcom/miui/common/widgets/gif/d;-><init>()V

    iput-object v0, p0, Lcom/miui/common/widgets/gif/a;->g:Lcom/miui/common/widgets/gif/d;

    :cond_0
    iget-object v0, p0, Lcom/miui/common/widgets/gif/a;->g:Lcom/miui/common/widgets/gif/d;

    return-object v0
.end method

.method private h()Landroid/graphics/Bitmap;
    .locals 4

    iget-boolean v0, p0, Lcom/miui/common/widgets/gif/a;->v:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    iget-object v1, p0, Lcom/miui/common/widgets/gif/a;->o:Lcom/miui/common/widgets/gif/a$a;

    iget v2, p0, Lcom/miui/common/widgets/gif/a;->u:I

    iget v3, p0, Lcom/miui/common/widgets/gif/a;->t:I

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/common/widgets/gif/a$a;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/widgets/gif/a;->p(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private m()I
    .locals 7

    invoke-direct {p0}, Lcom/miui/common/widgets/gif/a;->n()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/miui/common/widgets/gif/a;->c:[B

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/common/widgets/gif/a;->o:Lcom/miui/common/widgets/gif/a$a;

    const/16 v3, 0xff

    invoke-interface {v2, v3}, Lcom/miui/common/widgets/gif/a$a;->a(I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/miui/common/widgets/gif/a;->c:[B

    :cond_0
    iget v2, p0, Lcom/miui/common/widgets/gif/a;->e:I

    iget v3, p0, Lcom/miui/common/widgets/gif/a;->f:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-lt v2, v0, :cond_1

    iget-object v2, p0, Lcom/miui/common/widgets/gif/a;->d:[B

    iget-object v5, p0, Lcom/miui/common/widgets/gif/a;->c:[B

    invoke-static {v2, v3, v5, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/miui/common/widgets/gif/a;->f:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/miui/common/widgets/gif/a;->f:I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/miui/common/widgets/gif/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    add-int/2addr v3, v2

    if-lt v3, v0, :cond_2

    iget-object v3, p0, Lcom/miui/common/widgets/gif/a;->d:[B

    iget v5, p0, Lcom/miui/common/widgets/gif/a;->f:I

    iget-object v6, p0, Lcom/miui/common/widgets/gif/a;->c:[B

    invoke-static {v3, v5, v6, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/miui/common/widgets/gif/a;->e:I

    iput v3, p0, Lcom/miui/common/widgets/gif/a;->f:I

    invoke-direct {p0}, Lcom/miui/common/widgets/gif/a;->o()V

    sub-int v3, v0, v2

    iget-object v5, p0, Lcom/miui/common/widgets/gif/a;->d:[B

    iget-object v6, p0, Lcom/miui/common/widgets/gif/a;->c:[B

    invoke-static {v5, v4, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/miui/common/widgets/gif/a;->f:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/miui/common/widgets/gif/a;->f:I

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/miui/common/widgets/gif/a;->r:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/miui/common/widgets/gif/a;->w:Ljava/lang/String;

    const-string v4, "Error Reading Block"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v1, p0, Lcom/miui/common/widgets/gif/a;->r:I

    :cond_3
    :goto_0
    return v0
.end method

.method private n()I
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/miui/common/widgets/gif/a;->o()V

    iget-object v0, p0, Lcom/miui/common/widgets/gif/a;->d:[B

    iget v1, p0, Lcom/miui/common/widgets/gif/a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/miui/common/widgets/gif/a;->f:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/common/widgets/gif/a;->r:I

    const/4 v0, 0x0

    return v0
.end method

.method private o()V
    .locals 4

    iget v0, p0, Lcom/miui/common/widgets/gif/a;->e:I

    iget v1, p0, Lcom/miui/common/widgets/gif/a;->f:I

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/widgets/gif/a;->d:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/widgets/gif/a;->o:Lcom/miui/common/widgets/gif/a$a;

    invoke-interface {v0, v1}, Lcom/miui/common/widgets/gif/a$a;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/widgets/gif/a;->d:[B

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/widgets/gif/a;->f:I

    iget-object v2, p0, Lcom/miui/common/widgets/gif/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/miui/common/widgets/gif/a;->e:I

    iget-object v2, p0, Lcom/miui/common/widgets/gif/a;->b:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/miui/common/widgets/gif/a;->d:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static p(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-void
.end method

.method private t(Lcom/miui/common/widgets/gif/b;Lcom/miui/common/widgets/gif/b;)Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v10, v0, Lcom/miui/common/widgets/gif/a;->l:[I

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v2, :cond_3

    iget v2, v2, Lcom/miui/common/widgets/gif/b;->g:I

    if-lez v2, :cond_3

    if-ne v2, v12, :cond_2

    iget-boolean v2, v1, Lcom/miui/common/widgets/gif/b;->f:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget v2, v2, Lcom/miui/common/widgets/gif/c;->l:I

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/miui/common/widgets/gif/a;->m:I

    if-nez v2, :cond_1

    iput-boolean v14, v0, Lcom/miui/common/widgets/gif/a;->v:Z

    :cond_1
    move v2, v13

    :goto_0
    invoke-static {v10, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    :cond_2
    if-ne v2, v11, :cond_3

    iget-object v2, v0, Lcom/miui/common/widgets/gif/a;->p:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    iget v8, v0, Lcom/miui/common/widgets/gif/a;->u:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v9, v0, Lcom/miui/common/widgets/gif/a;->t:I

    move-object v3, v10

    move v5, v8

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/miui/common/widgets/gif/a;->c(Lcom/miui/common/widgets/gif/b;)V

    iget v2, v1, Lcom/miui/common/widgets/gif/b;->d:I

    iget v3, v0, Lcom/miui/common/widgets/gif/a;->s:I

    div-int/2addr v2, v3

    iget v4, v1, Lcom/miui/common/widgets/gif/b;->b:I

    div-int/2addr v4, v3

    iget v5, v1, Lcom/miui/common/widgets/gif/b;->c:I

    div-int/2addr v5, v3

    iget v6, v1, Lcom/miui/common/widgets/gif/b;->a:I

    div-int/2addr v6, v3

    const/16 v3, 0x8

    iget v7, v0, Lcom/miui/common/widgets/gif/a;->m:I

    if-nez v7, :cond_4

    move v7, v14

    goto :goto_2

    :cond_4
    move v7, v13

    :goto_2
    move v8, v13

    move v9, v14

    :goto_3
    if-ge v13, v2, :cond_e

    iget-boolean v15, v1, Lcom/miui/common/widgets/gif/b;->e:Z

    if-eqz v15, :cond_9

    const/4 v15, 0x4

    if-lt v8, v2, :cond_8

    add-int/lit8 v9, v9, 0x1

    if-eq v9, v12, :cond_7

    if-eq v9, v11, :cond_6

    if-eq v9, v15, :cond_5

    goto :goto_4

    :cond_5
    move v3, v12

    move v8, v14

    goto :goto_4

    :cond_6
    move v8, v12

    move v3, v15

    goto :goto_4

    :cond_7
    move v8, v15

    :cond_8
    :goto_4
    add-int v15, v8, v3

    goto :goto_5

    :cond_9
    move v15, v8

    move v8, v13

    :goto_5
    add-int/2addr v8, v4

    iget v11, v0, Lcom/miui/common/widgets/gif/a;->t:I

    if-ge v8, v11, :cond_d

    iget v11, v0, Lcom/miui/common/widgets/gif/a;->u:I

    mul-int/2addr v8, v11

    add-int v16, v8, v6

    add-int v12, v16, v5

    add-int v14, v8, v11

    if-ge v14, v12, :cond_a

    add-int v12, v8, v11

    :cond_a
    iget v8, v0, Lcom/miui/common/widgets/gif/a;->s:I

    mul-int v11, v13, v8

    iget v14, v1, Lcom/miui/common/widgets/gif/b;->c:I

    mul-int/2addr v11, v14

    sub-int v14, v12, v16

    mul-int/2addr v14, v8

    add-int/2addr v14, v11

    move/from16 v8, v16

    :goto_6
    if-ge v8, v12, :cond_d

    move/from16 p2, v2

    iget v2, v1, Lcom/miui/common/widgets/gif/b;->c:I

    invoke-direct {v0, v11, v14, v2}, Lcom/miui/common/widgets/gif/a;->b(III)I

    move-result v2

    if-eqz v2, :cond_b

    aput v2, v10, v8

    goto :goto_7

    :cond_b
    iget-boolean v2, v0, Lcom/miui/common/widgets/gif/a;->v:Z

    if-nez v2, :cond_c

    if-eqz v7, :cond_c

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/miui/common/widgets/gif/a;->v:Z

    :cond_c
    :goto_7
    iget v2, v0, Lcom/miui/common/widgets/gif/a;->s:I

    add-int/2addr v11, v2

    add-int/lit8 v8, v8, 0x1

    move/from16 v2, p2

    goto :goto_6

    :cond_d
    move/from16 p2, v2

    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p2

    move v8, v15

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v14, 0x1

    goto :goto_3

    :cond_e
    iget-boolean v2, v0, Lcom/miui/common/widgets/gif/a;->q:Z

    if-eqz v2, :cond_11

    iget v1, v1, Lcom/miui/common/widgets/gif/b;->g:I

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    :cond_f
    iget-object v1, v0, Lcom/miui/common/widgets/gif/a;->p:Landroid/graphics/Bitmap;

    if-nez v1, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/miui/common/widgets/gif/a;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/common/widgets/gif/a;->p:Landroid/graphics/Bitmap;

    :cond_10
    iget-object v1, v0, Lcom/miui/common/widgets/gif/a;->p:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v7, v0, Lcom/miui/common/widgets/gif/a;->u:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lcom/miui/common/widgets/gif/a;->t:I

    move-object v2, v10

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/miui/common/widgets/gif/a;->h()Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, 0x0

    iget v7, v0, Lcom/miui/common/widgets/gif/a;->u:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v8, v0, Lcom/miui/common/widgets/gif/a;->t:I

    move-object v1, v9

    move-object v2, v10

    move v4, v7

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v9
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget v0, v0, Lcom/miui/common/widgets/gif/c;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/common/widgets/gif/a;->m:I

    add-int/lit8 v1, v1, 0x1

    rem-int v0, v1, v0

    :goto_0
    iput v0, p0, Lcom/miui/common/widgets/gif/a;->m:I

    return-void
.end method

.method d(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget v1, v0, Lcom/miui/common/widgets/gif/c;->c:I

    if-ge p1, v1, :cond_0

    iget-object v0, v0, Lcom/miui/common/widgets/gif/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/common/widgets/gif/b;

    iget p1, p1, Lcom/miui/common/widgets/gif/b;->i:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method e()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget v0, v0, Lcom/miui/common/widgets/gif/c;->c:I

    return v0
.end method

.method g()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget v0, v0, Lcom/miui/common/widgets/gif/c;->g:I

    return v0
.end method

.method i()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget v0, v0, Lcom/miui/common/widgets/gif/c;->c:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/common/widgets/gif/a;->m:I

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/common/widgets/gif/a;->d(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized j()Landroid/graphics/Bitmap;
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget v0, v0, Lcom/miui/common/widgets/gif/c;->c:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/common/widgets/gif/a;->m:I

    if-gez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/miui/common/widgets/gif/a;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to decode frame, frameCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget v4, v4, Lcom/miui/common/widgets/gif/c;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/common/widgets/gif/a;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput v2, p0, Lcom/miui/common/widgets/gif/a;->r:I

    :cond_2
    iget v0, p0, Lcom/miui/common/widgets/gif/a;->r:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    goto/16 :goto_3

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/widgets/gif/a;->r:I

    iget-object v4, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget-object v4, v4, Lcom/miui/common/widgets/gif/c;->e:Ljava/util/List;

    iget v5, p0, Lcom/miui/common/widgets/gif/a;->m:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/widgets/gif/b;

    iget v5, p0, Lcom/miui/common/widgets/gif/a;->m:I

    sub-int/2addr v5, v2

    if-ltz v5, :cond_4

    iget-object v6, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget-object v6, v6, Lcom/miui/common/widgets/gif/c;->e:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    check-cast v5, Lcom/miui/common/widgets/gif/b;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget-object v5, v5, Lcom/miui/common/widgets/gif/c;->e:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/common/widgets/gif/a;->e()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    :goto_1
    iget-object v6, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget v7, v6, Lcom/miui/common/widgets/gif/c;->l:I

    iget-object v8, v4, Lcom/miui/common/widgets/gif/b;->k:[I

    if-nez v8, :cond_5

    iget-object v6, v6, Lcom/miui/common/widgets/gif/c;->a:[I

    iput-object v6, p0, Lcom/miui/common/widgets/gif/a;->a:[I

    goto :goto_2

    :cond_5
    iput-object v8, p0, Lcom/miui/common/widgets/gif/a;->a:[I

    iget v8, v6, Lcom/miui/common/widgets/gif/c;->j:I

    iget v9, v4, Lcom/miui/common/widgets/gif/b;->h:I

    if-ne v8, v9, :cond_6

    iput v0, v6, Lcom/miui/common/widgets/gif/c;->l:I

    :cond_6
    :goto_2
    iget-boolean v6, v4, Lcom/miui/common/widgets/gif/b;->f:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/miui/common/widgets/gif/a;->a:[I

    iget v8, v4, Lcom/miui/common/widgets/gif/b;->h:I

    aget v9, v6, v8

    aput v0, v6, v8

    move v0, v9

    :cond_7
    iget-object v6, p0, Lcom/miui/common/widgets/gif/a;->a:[I

    if-nez v6, :cond_9

    sget-object v0, Lcom/miui/common/widgets/gif/a;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput v2, p0, Lcom/miui/common/widgets/gif/a;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_9
    :try_start_1
    invoke-direct {p0, v4, v5}, Lcom/miui/common/widgets/gif/a;->t(Lcom/miui/common/widgets/gif/b;Lcom/miui/common/widgets/gif/b;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean v2, v4, Lcom/miui/common/widgets/gif/b;->f:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/miui/common/widgets/gif/a;->a:[I

    iget v3, v4, Lcom/miui/common/widgets/gif/b;->h:I

    aput v0, v2, v3

    :cond_a
    iget-object v0, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iput v7, v0, Lcom/miui/common/widgets/gif/c;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_b
    :goto_3
    :try_start_2
    sget-object v0, Lcom/miui/common/widgets/gif/a;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to decode frame, status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/common/widgets/gif/a;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_c
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method k()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iget v0, v0, Lcom/miui/common/widgets/gif/c;->f:I

    return v0
.end method

.method declared-synchronized l([B)I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/miui/common/widgets/gif/a;->f()Lcom/miui/common/widgets/gif/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/common/widgets/gif/d;->p([B)Lcom/miui/common/widgets/gif/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/widgets/gif/d;->b()Lcom/miui/common/widgets/gif/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/miui/common/widgets/gif/a;->s(Lcom/miui/common/widgets/gif/c;[B)V

    :cond_0
    iget p1, p0, Lcom/miui/common/widgets/gif/a;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized q(Lcom/miui/common/widgets/gif/c;Ljava/nio/ByteBuffer;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/common/widgets/gif/a;->r(Lcom/miui/common/widgets/gif/c;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized r(Lcom/miui/common/widgets/gif/c;Ljava/nio/ByteBuffer;I)V
    .locals 2

    monitor-enter p0

    if-lez p3, :cond_2

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/widgets/gif/a;->r:I

    iput-object p1, p0, Lcom/miui/common/widgets/gif/a;->n:Lcom/miui/common/widgets/gif/c;

    iput-boolean v0, p0, Lcom/miui/common/widgets/gif/a;->v:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/common/widgets/gif/a;->m:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/common/widgets/gif/a;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/miui/common/widgets/gif/a;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/miui/common/widgets/gif/a;->q:Z

    iget-object p2, p1, Lcom/miui/common/widgets/gif/c;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/widgets/gif/b;

    iget v0, v0, Lcom/miui/common/widgets/gif/b;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/common/widgets/gif/a;->q:Z

    :cond_1
    iput p3, p0, Lcom/miui/common/widgets/gif/a;->s:I

    iget-object p2, p0, Lcom/miui/common/widgets/gif/a;->o:Lcom/miui/common/widgets/gif/a$a;

    iget v0, p1, Lcom/miui/common/widgets/gif/c;->f:I

    iget v1, p1, Lcom/miui/common/widgets/gif/c;->g:I

    mul-int/2addr v0, v1

    invoke-interface {p2, v0}, Lcom/miui/common/widgets/gif/a$a;->a(I)[B

    move-result-object p2

    iput-object p2, p0, Lcom/miui/common/widgets/gif/a;->k:[B

    iget-object p2, p0, Lcom/miui/common/widgets/gif/a;->o:Lcom/miui/common/widgets/gif/a$a;

    iget v0, p1, Lcom/miui/common/widgets/gif/c;->f:I

    div-int/2addr v0, p3

    iget v1, p1, Lcom/miui/common/widgets/gif/c;->g:I

    div-int/2addr v1, p3

    mul-int/2addr v0, v1

    invoke-interface {p2, v0}, Lcom/miui/common/widgets/gif/a$a;->c(I)[I

    move-result-object p2

    iput-object p2, p0, Lcom/miui/common/widgets/gif/a;->l:[I

    iget p2, p1, Lcom/miui/common/widgets/gif/c;->f:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/miui/common/widgets/gif/a;->u:I

    iget p1, p1, Lcom/miui/common/widgets/gif/c;->g:I

    div-int/2addr p1, p3

    iput p1, p0, Lcom/miui/common/widgets/gif/a;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sample size must be >=0, not: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized s(Lcom/miui/common/widgets/gif/c;[B)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/common/widgets/gif/a;->q(Lcom/miui/common/widgets/gif/c;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
