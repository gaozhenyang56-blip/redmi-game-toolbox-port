.class public Lcom/miui/powercenter/batteryhistory/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/miui/powercenter/batteryhistory/d;IZZZZZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d;->a:Landroid/graphics/Path;

    int-to-float v0, p1

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/d;->b:I

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d;->c:Landroid/graphics/Path;

    int-to-float p3, p1

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/d;->d:I

    int-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    if-eqz p4, :cond_2

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d;->e:Landroid/graphics/Path;

    int-to-float p3, p1

    iget p4, p0, Lcom/miui/powercenter/batteryhistory/d;->f:I

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_2
    if-eqz p5, :cond_3

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d;->g:Landroid/graphics/Path;

    int-to-float p3, p1

    iget p4, p0, Lcom/miui/powercenter/batteryhistory/d;->h:I

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    if-eqz p6, :cond_4

    iget-object p2, p0, Lcom/miui/powercenter/batteryhistory/d;->i:Landroid/graphics/Path;

    int-to-float p3, p1

    iget p4, p0, Lcom/miui/powercenter/batteryhistory/d;->j:I

    int-to-float p4, p4

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_4
    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/d;->k:Lcom/miui/powercenter/batteryhistory/t;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/t;->c(I)V

    return-void
.end method

.method static declared-synchronized b(Lcom/miui/powercenter/batteryhistory/d;Ljava/util/List;IZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/powercenter/batteryhistory/d;",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/batteryhistory/u;",
            ">;IZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-class v8, Lcom/miui/powercenter/batteryhistory/e;

    monitor-enter v8

    if-eqz v1, :cond_10

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {v4}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {v6}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-nez v9, :cond_1

    const-wide/16 v6, 0x1

    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/powercenter/batteryhistory/u;

    invoke-virtual {v14}, Lcom/miui/powercenter/batteryhistory/u;->c()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-virtual {v14}, Lcom/miui/powercenter/batteryhistory/u;->b()J

    move-result-wide v15

    sub-long/2addr v15, v4

    move-wide/from16 v17, v4

    int-to-long v3, v2

    mul-long/2addr v15, v3

    div-long v3, v15, v6

    long-to-int v3, v3

    if-eqz p3, :cond_2

    sub-int v3, v2, v3

    :cond_2
    iget-boolean v4, v14, Lcom/miui/powercenter/batteryhistory/u;->k:Z

    if-eq v4, v9, :cond_4

    if-eqz v4, :cond_3

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d;->a:Landroid/graphics/Path;

    int-to-float v9, v3

    iget v15, v0, Lcom/miui/powercenter/batteryhistory/d;->b:I

    int-to-float v15, v15

    invoke-virtual {v5, v9, v15}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d;->a:Landroid/graphics/Path;

    int-to-float v9, v3

    iget v15, v0, Lcom/miui/powercenter/batteryhistory/d;->b:I

    int-to-float v15, v15

    invoke-virtual {v5, v9, v15}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    move v9, v4

    :cond_4
    iget-boolean v4, v14, Lcom/miui/powercenter/batteryhistory/u;->l:Z

    if-eq v4, v10, :cond_6

    if-eqz v4, :cond_5

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d;->c:Landroid/graphics/Path;

    int-to-float v10, v3

    iget v15, v0, Lcom/miui/powercenter/batteryhistory/d;->d:I

    int-to-float v15, v15

    invoke-virtual {v5, v10, v15}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_2

    :cond_5
    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d;->c:Landroid/graphics/Path;

    int-to-float v10, v3

    iget v15, v0, Lcom/miui/powercenter/batteryhistory/d;->d:I

    int-to-float v15, v15

    invoke-virtual {v5, v10, v15}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    move v10, v4

    :cond_6
    iget-boolean v4, v14, Lcom/miui/powercenter/batteryhistory/u;->j:Z

    if-eq v4, v11, :cond_8

    if-eqz v4, :cond_7

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d;->e:Landroid/graphics/Path;

    int-to-float v11, v3

    iget v15, v0, Lcom/miui/powercenter/batteryhistory/d;->f:I

    int-to-float v15, v15

    invoke-virtual {v5, v11, v15}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_3

    :cond_7
    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d;->e:Landroid/graphics/Path;

    int-to-float v11, v3

    iget v15, v0, Lcom/miui/powercenter/batteryhistory/d;->f:I

    int-to-float v15, v15

    invoke-virtual {v5, v11, v15}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_3
    move v11, v4

    :cond_8
    iget-boolean v4, v14, Lcom/miui/powercenter/batteryhistory/u;->i:Z

    if-eq v4, v12, :cond_a

    if-eqz v4, :cond_9

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d;->g:Landroid/graphics/Path;

    int-to-float v12, v3

    iget v15, v0, Lcom/miui/powercenter/batteryhistory/d;->h:I

    int-to-float v15, v15

    invoke-virtual {v5, v12, v15}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_4

    :cond_9
    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d;->g:Landroid/graphics/Path;

    int-to-float v12, v3

    iget v15, v0, Lcom/miui/powercenter/batteryhistory/d;->h:I

    int-to-float v15, v15

    invoke-virtual {v5, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_4
    move v12, v4

    :cond_a
    iget-boolean v4, v14, Lcom/miui/powercenter/batteryhistory/u;->o:Z

    iget-boolean v5, v14, Lcom/miui/powercenter/batteryhistory/u;->l:Z

    or-int/2addr v4, v5

    if-eq v4, v13, :cond_c

    if-eqz v4, :cond_b

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d;->i:Landroid/graphics/Path;

    int-to-float v13, v3

    iget v15, v0, Lcom/miui/powercenter/batteryhistory/d;->j:I

    int-to-float v15, v15

    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_5

    :cond_b
    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d;->i:Landroid/graphics/Path;

    int-to-float v13, v3

    iget v15, v0, Lcom/miui/powercenter/batteryhistory/d;->j:I

    int-to-float v15, v15

    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    move v13, v4

    :cond_c
    iget v4, v14, Lcom/miui/powercenter/batteryhistory/u;->n:I

    iget-object v5, v0, Lcom/miui/powercenter/batteryhistory/d;->k:Lcom/miui/powercenter/batteryhistory/t;

    invoke-virtual {v5, v3, v4}, Lcom/miui/powercenter/batteryhistory/t;->a(II)V

    goto :goto_6

    :cond_d
    move-wide/from16 v17, v4

    invoke-virtual {v14}, Lcom/miui/powercenter/batteryhistory/u;->d()Z

    move-result v3

    :goto_6
    move-wide/from16 v4, v17

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_e
    if-eqz p3, :cond_f

    const/4 v2, 0x0

    :cond_f
    move-object/from16 v1, p0

    move v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    move v7, v13

    invoke-static/range {v1 .. v7}, Lcom/miui/powercenter/batteryhistory/e;->a(Lcom/miui/powercenter/batteryhistory/d;IZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_10
    :goto_7
    monitor-exit v8

    return-void
.end method
