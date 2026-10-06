.class public final Lcc/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcc/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lcc/b0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZLjava/util/List;Landroid/content/pm/PackageInfo;JIILjava/lang/String;)Z
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/pm/PackageInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "JII",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-wide/from16 v3, p5

    move/from16 v5, p7

    move-object/from16 v6, p9

    const-string v7, "context"

    invoke-static {v0, v7}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "requiredPermission"

    invoke-static {v1, v7}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "packageInfo"

    invoke-static {v2, v7}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "mPkgName"

    invoke-static {v6, v7}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    if-nez p2, :cond_c

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    xor-int/2addr v8, v7

    if-eqz v8, :cond_c

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    move v9, v7

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v11, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x6

    const/4 v14, 0x3

    const/4 v15, 0x0

    if-eqz v12, :cond_8

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-nez v11, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v11, v3

    if-eqz v11, :cond_2

    :goto_2
    invoke-static/range {p5 .. p6}, Lxc/m;->d(J)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0x21

    if-ge v11, v12, :cond_7

    const-string v11, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v11, v10}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v11, v10}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_2
    if-eq v5, v14, :cond_4

    if-ne v5, v13, :cond_3

    invoke-static {v3, v4, v0, v6}, Lcom/miui/permcenter/l;->r(JLandroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    move v9, v15

    goto :goto_4

    :cond_4
    :goto_3
    move v9, v7

    :goto_4
    xor-int/2addr v9, v7

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1d

    if-lt v10, v11, :cond_7

    const-wide/16 v10, 0x20

    cmp-long v10, v3, v10

    if-nez v10, :cond_7

    const-string v9, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    move/from16 v11, p8

    if-eqz v10, :cond_5

    invoke-static {v0, v9, v6, v11}, Lcom/miui/permcenter/l;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_6

    :goto_5
    goto :goto_0

    :cond_5
    if-eq v5, v14, :cond_6

    if-eq v5, v13, :cond_6

    goto :goto_5

    :cond_6
    move v9, v15

    goto :goto_1

    :cond_7
    move/from16 v11, p8

    goto :goto_1

    :cond_8
    move/from16 v11, p8

    invoke-static/range {p5 .. p6}, Lxc/m;->d(J)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static/range {p5 .. p6}, Lxc/m;->c(J)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-eq v5, v14, :cond_9

    if-ne v5, v13, :cond_a

    :cond_9
    move v15, v7

    :cond_a
    xor-int/lit8 v9, v15, 0x1

    goto/16 :goto_1

    :cond_b
    move v7, v9

    :cond_c
    return v7
.end method

.method public final b(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mPkgName"

    invoke-static {p4, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p4}, Lx4/k1;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2, p3}, Lx4/k1;->k(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
