.class public Lwi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(DDDD)[D
    .locals 18

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double v2, p0, v0

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    mul-double v6, p2, v0

    div-double/2addr v6, v4

    const/4 v8, 0x4

    new-array v8, v8, [D

    div-double v9, p4, p6

    sub-double v11, v2, v9

    add-double v13, v2, v9

    const-wide v4, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpl-double v15, v11, v4

    const-wide v16, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    if-lez v15, :cond_2

    cmpg-double v15, v13, v4

    if-gez v15, :cond_2

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    div-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    sub-double v4, v6, v2

    cmpg-double v9, v4, v16

    const-wide v15, 0x401921fb54442d18L    # 6.283185307179586

    if-gez v9, :cond_0

    add-double/2addr v4, v15

    :cond_0
    add-double/2addr v6, v2

    cmpl-double v2, v6, v0

    if-lez v2, :cond_1

    sub-double/2addr v6, v15

    :cond_1
    move-wide/from16 v16, v4

    goto :goto_0

    :cond_2
    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    invoke-static {v11, v12, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    move-wide v6, v0

    :goto_0
    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v11, v2

    div-double/2addr v11, v0

    mul-double/2addr v13, v2

    div-double/2addr v13, v0

    mul-double v16, v16, v2

    div-double v16, v16, v0

    mul-double/2addr v6, v2

    div-double/2addr v6, v0

    const/4 v0, 0x0

    aput-wide v11, v8, v0

    const/4 v0, 0x1

    aput-wide v13, v8, v0

    const/4 v0, 0x2

    aput-wide v16, v8, v0

    const/4 v0, 0x3

    aput-wide v6, v8, v0

    return-object v8
.end method

.method public static b(DD)[D
    .locals 20

    move-wide/from16 v8, p0

    move-wide/from16 v10, p2

    const/4 v12, 0x2

    new-array v13, v12, [D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x40b8e3028f5c28f6L    # 6371.01

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    :try_start_0
    invoke-static/range {v0 .. v7}, Lwi/a;->a(DDDD)[D

    move-result-object v0

    new-instance v1, Lyi/b;

    invoke-direct {v1}, Lyi/b;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Lyi/a;->e(Ljava/lang/Float;)Lxi/c;

    aget-wide v3, v0, v14

    aget-wide v5, v0, v15

    sub-double/2addr v3, v5

    double-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Lxi/c;->c(Ljava/lang/Float;)Lxi/c;

    aget-wide v3, v0, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aget-wide v4, v0, v14

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lyi/d;->f(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Object;

    new-instance v3, Lyi/c;

    const/16 v4, 0x64

    invoke-direct {v3, v1, v4}, Lyi/c;-><init>(Lyi/a;I)V

    invoke-virtual {v3, v8, v9}, Lxi/b;->c(D)D

    move-result-wide v5

    new-instance v1, Lyi/b;

    invoke-direct {v1}, Lyi/b;-><init>()V

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyi/a;->e(Ljava/lang/Float;)Lxi/c;

    const/4 v2, 0x3

    aget-wide v16, v0, v2

    aget-wide v18, v0, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    sub-double v14, v16, v18

    double-to-float v14, v14

    :try_start_1
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v1, v14}, Lxi/c;->c(Ljava/lang/Float;)Lxi/c;

    aget-wide v14, v0, v12

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aget-wide v14, v0, v2

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Lyi/d;->f(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Object;

    new-instance v0, Lyi/c;

    invoke-direct {v0, v1, v4}, Lyi/c;-><init>(Lyi/a;I)V

    invoke-virtual {v0, v10, v11}, Lxi/b;->c(D)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    :try_start_2
    aput-wide v5, v13, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x1

    :try_start_3
    aput-wide v0, v13, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move v0, v2

    goto :goto_0

    :catch_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_2
    move v0, v15

    :goto_0
    aput-wide v8, v13, v0

    const/4 v0, 0x1

    aput-wide v10, v13, v0

    :goto_1
    return-object v13
.end method
