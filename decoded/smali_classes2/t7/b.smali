.class public Lt7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lt7/b;


# instance fields
.field private final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lt7/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lt7/b;->a:Landroid/util/ArrayMap;

    return-void
.end method

.method public static synthetic a(Lt7/b;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lt7/b;->o(II)V

    return-void
.end method

.method private b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized d()Lt7/b;
    .locals 2

    const-class v0, Lt7/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lt7/b;->b:Lt7/b;

    if-nez v1, :cond_0

    new-instance v1, Lt7/b;

    invoke-direct {v1}, Lt7/b;-><init>()V

    sput-object v1, Lt7/b;->b:Lt7/b;

    :cond_0
    sget-object v1, Lt7/b;->b:Lt7/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private synthetic o(II)V
    .locals 3

    invoke-virtual {p0}, Lt7/b;->c()I

    move-result v0

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    const/high16 v2, 0x40600000    # 3.5f

    invoke-virtual {v1, v2}, La8/b;->t(F)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, La8/b;->A(III)Z

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, La8/b;->w(II)Z

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncState2ITouchFeature displayId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", featureId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", state = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SMotionManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private p(Landroid/content/Context;Ljava/lang/String;I)Lt7/d;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move/from16 v10, p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFeatureFromDB : packageUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , boosterPkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v11, "SMotionManager"

    invoke-static {v11, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v10}, La8/j0;->j(Landroid/content/Context;Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_5

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "settings_follow"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "settings_finger"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "settings_hot_area"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "settings_shake"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "settings_edge"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v2, v7, :cond_0

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v2

    sget v8, La8/b;->i:I

    invoke-virtual {v2, v0, v8}, La8/b;->f(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    move v8, v2

    if-ne v3, v7, :cond_1

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v2

    sget v3, La8/b;->j:I

    invoke-virtual {v2, v0, v3}, La8/b;->f(Ljava/lang/String;I)I

    move-result v2

    move v9, v2

    goto :goto_0

    :cond_1
    move v9, v3

    :goto_0
    if-ne v4, v7, :cond_2

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v2

    sget v3, La8/b;->k:I

    invoke-virtual {v2, v0, v3}, La8/b;->f(Ljava/lang/String;I)I

    move-result v2

    move v14, v2

    goto :goto_1

    :cond_2
    move v14, v4

    :goto_1
    if-ne v5, v7, :cond_3

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v2

    sget v3, La8/b;->l:I

    invoke-virtual {v2, v0, v3}, La8/b;->f(Ljava/lang/String;I)I

    move-result v2

    move v15, v2

    goto :goto_2

    :cond_3
    move v15, v5

    :goto_2
    if-ne v6, v7, :cond_4

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v2

    sget v3, La8/b;->m:I

    invoke-virtual {v2, v0, v3}, La8/b;->f(Ljava/lang/String;I)I

    move-result v2

    move/from16 v16, v2

    goto :goto_3

    :cond_4
    move/from16 v16, v6

    :goto_3
    new-instance v7, Lt7/d;

    move-object v2, v7

    move-object/from16 v3, p2

    move/from16 v4, p3

    move v5, v8

    move v6, v9

    move-object v9, v7

    move v7, v14

    move v8, v15

    move-object v14, v9

    move/from16 v9, v16

    invoke-direct/range {v2 .. v9}, Lt7/d;-><init>(Ljava/lang/String;IIIIII)V

    iget-object v2, v1, Lt7/b;->a:Landroid/util/ArrayMap;

    invoke-direct {v1, v0, v10}, Lt7/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFeatureFromDB model="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v13}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v14

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v13, v12

    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    invoke-static {v13}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v12

    :catchall_1
    move-exception v0

    move-object v12, v13

    :goto_5
    invoke-static {v12}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private w(II)V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lt7/a;

    invoke-direct {v1, p0, p1, p2}, Lt7/a;-><init>(Lt7/b;II)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    invoke-static {}, La8/z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/z;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Ljava/lang/String;I)Lt7/d;
    .locals 2

    iget-object v0, p0, Lt7/b;->a:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, p2}, Lt7/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/d;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lt7/b;->p(Landroid/content/Context;Ljava/lang/String;I)Lt7/d;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public f(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lt7/b;->a:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, p2}, Lt7/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/d;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lt7/b;->p(Landroid/content/Context;Ljava/lang/String;I)Lt7/d;

    move-result-object v0

    :cond_0
    const/4 p1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lt7/d;->b()I

    move-result p2

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lt7/b;->a:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, p2}, Lt7/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/d;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lt7/b;->p(Landroid/content/Context;Ljava/lang/String;I)Lt7/d;

    move-result-object v0

    :cond_0
    const/4 p1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lt7/d;->a()I

    move-result p2

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public h(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lt7/b;->a:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, p2}, Lt7/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/d;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lt7/b;->p(Landroid/content/Context;Ljava/lang/String;I)Lt7/d;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lt7/d;->d()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i(Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lt7/b;->a:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, p2}, Lt7/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/d;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lt7/b;->p(Landroid/content/Context;Ljava/lang/String;I)Lt7/d;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lt7/d;->e()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j()Z
    .locals 2

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    invoke-virtual {v0}, La8/b;->h()Ljava/util/Set;

    move-result-object v0

    const-string v1, "SUPER ALGO"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    invoke-virtual {v0}, La8/b;->h()Ljava/util/Set;

    move-result-object v0

    const-string v1, "SUPER CHIP"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 2

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    invoke-virtual {v0}, La8/b;->h()Ljava/util/Set;

    move-result-object v0

    const-string v1, "SUPER CORE"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 4

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    invoke-virtual {v0}, La8/b;->h()Ljava/util/Set;

    move-result-object v0

    const-string v1, "SUPER_HOTAREA"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    invoke-virtual {p0}, Lt7/b;->c()I

    move-result v2

    sget v3, La8/b;->k:I

    invoke-virtual {v0, v2, v3}, La8/b;->i(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public n()Z
    .locals 2

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    invoke-virtual {v0}, La8/b;->h()Ljava/util/Set;

    move-result-object v0

    const-string v1, "SUPER_MISTOUCH"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lt7/b;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public r(ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lt7/b;->a:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, p3}, Lt7/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lt7/d;->g(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "settings_follow"

    invoke-static {v0, p2, p3, v1, p1}, La8/j0;->s(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-static {}, La8/b;->d()La8/b;

    sget p2, La8/b;->i:I

    invoke-direct {p0, p2, p1}, Lt7/b;->w(II)V

    :cond_0
    return-void
.end method

.method public s(ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lt7/b;->a:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, p3}, Lt7/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lt7/d;->h(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "settings_hot_area"

    invoke-static {v0, p2, p3, v1, p1}, La8/j0;->s(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-static {}, La8/b;->d()La8/b;

    sget p2, La8/b;->k:I

    invoke-direct {p0, p2, p1}, Lt7/b;->w(II)V

    :cond_0
    return-void
.end method

.method public t(ZLjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lt7/b;->a:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, p3}, Lt7/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lt7/d;->f(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "settings_finger"

    invoke-static {v0, p2, p3, v1, p1}, La8/j0;->s(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-static {}, La8/b;->d()La8/b;

    sget p2, La8/b;->j:I

    invoke-direct {p0, p2, p1}, Lt7/b;->w(II)V

    :cond_0
    return-void
.end method

.method public u(ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lt7/b;->a:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, p3}, Lt7/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lt7/d;->i(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "settings_edge"

    invoke-static {v0, p2, p3, v1, p1}, La8/j0;->s(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-static {}, La8/b;->d()La8/b;

    sget p2, La8/b;->m:I

    invoke-direct {p0, p2, p1}, Lt7/b;->w(II)V

    :cond_0
    return-void
.end method

.method public v(ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lt7/b;->a:Landroid/util/ArrayMap;

    invoke-direct {p0, p2, p3}, Lt7/b;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt7/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lt7/d;->j(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "settings_shake"

    invoke-static {v0, p2, p3, v1, p1}, La8/j0;->s(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    invoke-static {}, La8/b;->d()La8/b;

    sget p2, La8/b;->l:I

    invoke-direct {p0, p2, p1}, Lt7/b;->w(II)V

    :cond_0
    return-void
.end method
