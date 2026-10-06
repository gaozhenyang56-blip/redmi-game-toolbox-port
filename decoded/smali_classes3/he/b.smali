.class public Lhe/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lhe/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lhe/b;->b(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;IZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List<",
            "Lhe/a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->t()V

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->f()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    if-ge v3, p1, :cond_4

    if-eqz p2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    iget v4, v4, Lcom/miui/powercenter/legacypowerrank/BatteryData;->uid:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-virtual {v4}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lme/a;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-virtual {v4}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getValue()D

    move-result-wide v4

    invoke-static {}, Lcom/miui/powercenter/legacypowerrank/g;->l()D

    move-result-wide v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-static {p0, v6}, Lcom/miui/powercenter/legacypowerrank/a;->c(Landroid/content/Context;Lcom/miui/powercenter/legacypowerrank/BatteryData;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    new-instance v7, Lhe/a;

    invoke-direct {v7}, Lhe/a;-><init>()V

    iput-object v6, v7, Lhe/a;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-virtual {v6}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lhe/a;->a:Ljava/lang/String;

    iput-wide v4, v7, Lhe/a;->c:D

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-static {v4}, Lcom/miui/powercenter/legacypowerrank/a;->d(Lcom/miui/powercenter/legacypowerrank/BatteryData;)I

    move-result v4

    iput v4, v7, Lhe/a;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powercenter/legacypowerrank/BatteryData;

    invoke-virtual {v4}, Lcom/miui/powercenter/legacypowerrank/BatteryData;->getUid()I

    move-result v4

    iput v4, v7, Lhe/a;->e:I

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    :goto_2
    return-object v1
.end method
