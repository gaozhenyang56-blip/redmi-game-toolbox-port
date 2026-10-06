.class public La4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(DD)Lcom/miui/autotask/bean/m;
    .locals 3

    invoke-static {p0, p1, p2, p3}, La4/b;->c(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/autotask/bean/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/autotask/bean/m;-><init>(DD)V

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, La4/b;->b(DD)[D

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    sub-double/2addr p2, v1

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    sub-double/2addr p0, v1

    new-instance v0, Lcom/miui/autotask/bean/m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/autotask/bean/m;-><init>(DD)V

    return-object v0
.end method

.method public static b(DD)[D
    .locals 17

    const/4 v0, 0x2

    new-array v0, v0, [D

    const-wide v1, 0x4041800000000000L    # 35.0

    sub-double v1, p0, v1

    const-wide v3, 0x405a400000000000L    # 105.0

    sub-double v3, p2, v3

    invoke-static {v1, v2, v3, v4}, La4/b;->e(DD)D

    move-result-wide v5

    invoke-static {v1, v2, v3, v4}, La4/b;->d(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L    # 180.0

    div-double v7, p0, v3

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    const-wide v13, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    mul-double/2addr v13, v11

    mul-double/2addr v13, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    mul-double/2addr v5, v3

    const-wide v15, 0x415854c140000000L    # 6378245.0

    div-double/2addr v15, v13

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v15, v7

    mul-double/2addr v15, v9

    div-double/2addr v5, v15

    mul-double/2addr v1, v3

    mul-double/2addr v11, v13

    const-wide v3, 0x41582b102de355c1L    # 6335552.717000426

    div-double/2addr v3, v11

    mul-double/2addr v3, v9

    div-double/2addr v1, v3

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    const/4 v1, 0x1

    aput-wide v5, v0, v1

    return-object v0
.end method

.method public static c(DD)Z
    .locals 4

    const-wide v0, 0x4052004189374bc7L    # 72.004

    cmpg-double v0, p2, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_2

    const-wide v2, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double p2, p2, v2

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    const-wide p2, 0x3fea89a027525461L    # 0.8293

    cmpg-double p2, p0, p2

    if-ltz p2, :cond_2

    const-wide p2, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double p0, p0, p2

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private static d(DD)D
    .locals 16

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double v2, p2, v0

    const-wide/high16 v4, -0x3fa7000000000000L    # -100.0

    add-double/2addr v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v8, p0, v6

    add-double/2addr v4, v8

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double v10, p0, v8

    mul-double v10, v10, p0

    add-double/2addr v4, v10

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double v10, v10, p2

    mul-double v10, v10, p0

    add-double/2addr v4, v10

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v10, v8

    add-double/2addr v4, v10

    const-wide/high16 v8, 0x4018000000000000L    # 6.0

    mul-double v8, v8, p2

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    mul-double/2addr v8, v12

    mul-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, v12

    add-double/2addr v8, v2

    mul-double/2addr v8, v0

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    mul-double v2, p0, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v12

    div-double v12, p0, v6

    mul-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    mul-double/2addr v8, v0

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4028000000000000L    # 12.0

    div-double v8, p0, v8

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4064000000000000L    # 160.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v10, 0x4074000000000000L    # 320.0

    mul-double/2addr v2, v10

    add-double/2addr v8, v2

    mul-double/2addr v8, v0

    div-double/2addr v8, v6

    add-double/2addr v4, v8

    return-wide v4
.end method

.method private static e(DD)D
    .locals 16

    const-wide v0, 0x4072c00000000000L    # 300.0

    add-double v2, p2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v6, p0, v4

    add-double/2addr v2, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double v8, p2, v6

    mul-double v10, v8, p2

    add-double/2addr v2, v10

    mul-double v8, v8, p0

    add-double/2addr v2, v8

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v2, v8

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    mul-double v6, v6, p2

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    mul-double/2addr v6, v10

    mul-double v12, p2, v4

    mul-double/2addr v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    add-double/2addr v6, v12

    mul-double/2addr v6, v4

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    div-double/2addr v6, v12

    add-double/2addr v2, v6

    mul-double v6, p2, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v10

    div-double v10, p2, v12

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    mul-double/2addr v10, v14

    add-double/2addr v6, v10

    mul-double/2addr v6, v4

    div-double/2addr v6, v12

    add-double/2addr v2, v6

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    div-double v6, p2, v6

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v10, 0x4062c00000000000L    # 150.0

    mul-double/2addr v6, v10

    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    div-double v10, p2, v10

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v6, v4

    div-double/2addr v6, v12

    add-double/2addr v2, v6

    return-wide v2
.end method
