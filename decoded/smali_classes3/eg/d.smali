.class public Leg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;
    .locals 14

    invoke-static {p0}, Leg/d;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0}, Lsf/b;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    new-instance v1, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;

    invoke-direct {v1}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ldd/a;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    :goto_0
    const/4 v8, 0x0

    if-ltz v6, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v11, v10, Lcd/b;

    if-eqz v11, :cond_2

    check-cast v10, Lcd/b;

    iget-object v10, v10, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v11}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v8, v7

    :cond_4
    if-eqz v8, :cond_2

    :cond_5
    if-nez v8, :cond_6

    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v5, :cond_8

    invoke-static {v4}, Ldd/a;->a(Ljava/util/List;)V

    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v11, v10, Lcd/b;

    if-eqz v11, :cond_a

    check-cast v10, Lcd/b;

    iget-object v10, v10, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v11}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v13}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    move v12, v7

    goto :goto_2

    :cond_d
    move v12, v8

    :goto_2
    if-nez v12, :cond_b

    sget-object v12, Lcom/miui/common/card/GridFunctionData$DataSource;->USER_SET:Lcom/miui/common/card/GridFunctionData$DataSource;

    invoke-virtual {v11, v12}, Lcom/miui/common/card/GridFunctionData;->setDataSource(Lcom/miui/common/card/GridFunctionData$DataSource;)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filter commonly after userset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CardModelUtil"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v3, :cond_12

    invoke-static {p0, v0}, Lsf/b;->j(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v9, v5, Lcd/b;

    if-eqz v9, :cond_f

    check-cast v5, Lcd/b;

    iget-object v5, v5, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v9}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    sget-object v10, Lcom/miui/common/card/GridFunctionData$DataSource;->RECENT_USED:Lcom/miui/common/card/GridFunctionData$DataSource;

    invoke-virtual {v9, v10}, Lcom/miui/common/card/GridFunctionData;->setDataSource(Lcom/miui/common/card/GridFunctionData$DataSource;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v3, :cond_10

    :cond_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v3, :cond_f

    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filter commonly after recent: "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, v3, :cond_18

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v5, v4, Lcd/b;

    if-eqz v5, :cond_13

    check-cast v4, Lcd/b;

    iget-object v4, v4, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/GridFunctionData;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_15
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v10}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    move v9, v7

    goto :goto_4

    :cond_16
    move v9, v8

    :goto_4
    if-nez v9, :cond_14

    sget-object v9, Lcom/miui/common/card/GridFunctionData$DataSource;->RANDOM_RECOMMENDATION:Lcom/miui/common/card/GridFunctionData$DataSource;

    invoke-virtual {v5, v9}, Lcom/miui/common/card/GridFunctionData;->setDataSource(Lcom/miui/common/card/GridFunctionData$DataSource;)V

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_17
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    :goto_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    if-eqz v4, :cond_18

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-interface {p0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/GridFunctionData;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filter commonly after random: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v2}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;->setCommonlyUsedFuncDataList(Ljava/util/List;)V

    return-object v1
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;"
        }
    .end annotation

    invoke-static {p0}, Leg/d;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0}, Lsf/b;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    new-instance p0, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;

    invoke-direct {p0}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v5, v4, Lcd/b;

    if-eqz v5, :cond_3

    check-cast v4, Lcd/b;

    iget-object v4, v4, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/common/card/GridFunctionData;

    if-eqz v2, :cond_4

    invoke-virtual {v5}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v8}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v8}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    if-nez v6, :cond_4

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filter first commonly : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CardModelUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ldd/a;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v2}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/miui/common/card/GridFunctionData$DataSource;->USER_SET:Lcom/miui/common/card/GridFunctionData$DataSource;

    invoke-virtual {v2, v3}, Lcom/miui/common/card/GridFunctionData;->setDataSource(Lcom/miui/common/card/GridFunctionData$DataSource;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v1}, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModel;->setCommonlyUsedFuncDataList(Ljava/util/List;)V

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Leg/d;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {p0}, Lsf/b;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ldd/a;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :goto_0
    const/4 v7, 0x0

    if-ltz v5, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v10, v9, Lcd/b;

    if-eqz v10, :cond_2

    check-cast v9, Lcd/b;

    iget-object v9, v9, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v10}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v7, v6

    :cond_4
    if-eqz v7, :cond_2

    :cond_5
    if-nez v7, :cond_6

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v5, v4, :cond_8

    invoke-static {v3}, Ldd/a;->a(Ljava/util/List;)V

    :cond_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v9, v8, Lcd/b;

    if-eqz v9, :cond_a

    check-cast v8, Lcd/b;

    iget-object v8, v8, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v9}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v11}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    move v10, v6

    goto :goto_2

    :cond_d
    move v10, v7

    :goto_2
    if-nez v10, :cond_b

    sget-object v10, Lcom/miui/common/card/GridFunctionData$DataSource;->USER_SET:Lcom/miui/common/card/GridFunctionData$DataSource;

    invoke-virtual {v9, v10}, Lcom/miui/common/card/GridFunctionData;->setDataSource(Lcom/miui/common/card/GridFunctionData$DataSource;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filter commonly after userset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CardModelUtil"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_1c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v6

    :goto_3
    const-string v5, "#Intent"

    if-ltz v3, :cond_15

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v8}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    move v9, v6

    goto :goto_4

    :cond_f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v9, v7

    :cond_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v11, v10, Lcd/b;

    if-eqz v11, :cond_10

    check-cast v10, Lcd/b;

    iget-object v10, v10, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v11}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    move v9, v6

    :cond_12
    if-eqz v9, :cond_10

    :cond_13
    :goto_4
    if-nez v9, :cond_14

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_14
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17

    sget-object v8, Lcom/miui/common/card/GridFunctionData$DataSource;->SERVER_CONFIGURATION:Lcom/miui/common/card/GridFunctionData$DataSource;

    invoke-virtual {v3, v8}, Lcom/miui/common/card/GridFunctionData;->setDataSource(Lcom/miui/common/card/GridFunctionData$DataSource;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v10, v9, Lcd/b;

    if-eqz v10, :cond_18

    check-cast v9, Lcd/b;

    iget-object v9, v9, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_19
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v11}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    move v10, v6

    goto :goto_7

    :cond_1b
    move v10, v7

    :goto_7
    if-nez v10, :cond_19

    sget-object v10, Lcom/miui/common/card/GridFunctionData$DataSource;->SERVER_CONFIGURATION:Lcom/miui/common/card/GridFunctionData$DataSource;

    invoke-virtual {v3, v10}, Lcom/miui/common/card/GridFunctionData;->setDataSource(Lcom/miui/common/card/GridFunctionData$DataSource;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter commonly after server: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p1, v2, :cond_23

    invoke-static {p0, v0}, Lsf/b;->j(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v3, p1, Lcd/b;

    if-eqz v3, :cond_1d

    check-cast p1, Lcd/b;

    iget-object p1, p1, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/GridFunctionData;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v8}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    move v5, v6

    goto :goto_8

    :cond_20
    move v5, v7

    :goto_8
    if-nez v5, :cond_21

    sget-object v5, Lcom/miui/common/card/GridFunctionData$DataSource;->RECENT_USED:Lcom/miui/common/card/GridFunctionData$DataSource;

    invoke-virtual {v3, v5}, Lcom/miui/common/card/GridFunctionData;->setDataSource(Lcom/miui/common/card/GridFunctionData$DataSource;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_1e

    :cond_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_1d

    :cond_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "filter commonly after recent: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, v2, :cond_29

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v3, v0, Lcd/b;

    if-eqz v3, :cond_24

    check-cast v0, Lcd/b;

    iget-object v0, v0, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/common/card/GridFunctionData;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v8}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    move v5, v6

    goto :goto_a

    :cond_27
    move v5, v7

    :goto_a
    if-nez v5, :cond_25

    sget-object v5, Lcom/miui/common/card/GridFunctionData$DataSource;->RANDOM_RECOMMENDATION:Lcom/miui/common/card/GridFunctionData$DataSource;

    invoke-virtual {v3, v5}, Lcom/miui/common/card/GridFunctionData;->setDataSource(Lcom/miui/common/card/GridFunctionData$DataSource;)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_28
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/GridFunctionData;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_29
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "filter commonly after random: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static d(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/common/card/GridFunctionData;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lsf/d;->j(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v3, v2, Lcd/d;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcd/c;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcd/f;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcd/e;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcd/a;

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ldd/a;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    :goto_1
    if-ltz v5, :cond_3

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v6, v4, Lcd/b;

    if-eqz v6, :cond_5

    check-cast v4, Lcd/b;

    iget-object v4, v4, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v6}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v3}, Lcom/miui/common/card/GridFunctionData;->setEditVisible(Z)V

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_3
    if-ltz v1, :cond_a

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v5, v2, Lcd/b;

    if-eqz v5, :cond_9

    check-cast v2, Lcd/b;

    invoke-virtual {v2, v4}, Lcd/b;->c(Z)V

    iget-object v2, v2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v3

    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v6}, Lcom/miui/common/card/GridFunctionData;->isEditVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    if-nez v5, :cond_9

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_a
    return-object v0

    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "filterCommonlyUsedFuncEditModel getFunctionCardModels is null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lsf/d;->j(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v3, v2, Lcd/d;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcd/c;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcd/f;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcd/e;

    if-nez v3, :cond_1

    instance-of v3, v2, Lcd/a;

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v4, v2, Lcd/b;

    if-eqz v4, :cond_5

    check-cast v2, Lcd/b;

    iget-object v2, v2, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v4}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v1}, Lcom/miui/common/card/GridFunctionData;->setEditVisible(Z)V

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_3
    if-ltz p1, :cond_a

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v3, v0, Lcd/b;

    if-eqz v3, :cond_9

    check-cast v0, Lcd/b;

    invoke-virtual {v0, v2}, Lcd/b;->c(Z)V

    iget-object v0, v0, Lcom/miui/common/card/models/TitleCardModel;->gridFunctionDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v4}, Lcom/miui/common/card/GridFunctionData;->isEditVisible()Z

    move-result v4

    if-eqz v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    if-nez v3, :cond_9

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_a
    return-void

    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "filterCommonlyUsedFuncEditModel getFunctionCardModels is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Landroid/content/Context;II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lef/x;->C(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHomeListCacheDeleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CardModelUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const-string v3, "securityscan_homelist_cache"

    if-nez v0, :cond_0

    invoke-static {p0, v3}, Leg/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lef/x;->U(Landroid/content/Context;Z)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v3}, Leg/h;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1, p1, p2}, Lsf/d;->h(Lorg/json/JSONObject;III)Lsf/d;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p2, "create datamodel error:"

    invoke-static {v2, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lsf/d;->e()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lsf/d;->f()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lsf/d;->n(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lsf/d;->j(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "phonemanage_data_cache"

    invoke-static {p0, v1}, Leg/h;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x5

    invoke-static {v1, p0}, Lsf/d;->g(Lorg/json/JSONObject;I)Lsf/d;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "CardModelUtil"

    const-string v2, "filter function models error"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lsf/d;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lsf/d;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lsf/d;->m()Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lsf/d;->j(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.packageinstaller"

    const-string v2, "com.miui.packageInstaller.ui.secure.SecureModeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lx4/f1;->F(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static i(JLjava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    const-wide/16 v2, 0x2710

    cmp-long p0, p0, v2

    if-gez p0, :cond_3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/common/card/models/BaseCardModel;

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/card/models/BaseCardModel;->isOverseaChannel()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/card/models/BaseCardModel;->getLanguage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/card/models/BaseCardModel;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    sget-boolean p2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p2, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/card/models/BaseCardModel;->isOverseaChannel()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/card/models/BaseCardModel;->getLanguage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/common/card/models/BaseCardModel;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "zh_CN"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez p1, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public static j(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/BaseCardModel;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v2, v1, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;

    const/4 v3, -0x1

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/miui/common/card/models/FuncTopBannerScrollCnModel;

    invoke-virtual {v2, v3}, Lcom/miui/common/card/models/BaseCardModel;->setCurrentIndex(I)V

    :cond_0
    instance-of v2, v1, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/miui/common/card/models/FuncTopBannerScrollGlobalModel;

    invoke-virtual {v1, v3}, Lcom/miui/common/card/models/BaseCardModel;->setCurrentIndex(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
