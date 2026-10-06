.class public La8/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "q"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/y;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/f;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/y;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/miui/gamebooster/model/z;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/miui/gamebooster/model/z;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/z;->h()Lcom/miui/gamebooster/model/y;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/y;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/y;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/miui/gamebooster/model/z;->i()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/model/z;->g(Lcom/miui/gamebooster/model/y;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/miui/gamebooster/model/z;

    invoke-direct {v2}, Lcom/miui/gamebooster/model/z;-><init>()V

    goto :goto_2

    :cond_4
    :goto_1
    new-instance v2, Lcom/miui/gamebooster/model/x;

    invoke-direct {v2}, Lcom/miui/gamebooster/model/x;-><init>()V

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/y;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/x;->h(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/gamebooster/model/z;

    invoke-direct {v2}, Lcom/miui/gamebooster/model/z;-><init>()V

    :goto_2
    invoke-virtual {v2, v1}, Lcom/miui/gamebooster/model/z;->g(Lcom/miui/gamebooster/model/y;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/miui/gamebooster/model/x;

    invoke-direct {v2}, Lcom/miui/gamebooster/model/x;-><init>()V

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/y;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/gamebooster/model/x;->h(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/miui/gamebooster/model/z;

    invoke-direct {v2}, Lcom/miui/gamebooster/model/z;-><init>()V

    goto :goto_2

    :cond_6
    return-object v0

    :cond_7
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;J)I
    .locals 1

    sget-object v0, La8/n$a;->b:La8/n$a;

    invoke-static {p0, v0, p1, p2}, La8/n;->a(Landroid/content/Context;La8/n$a;J)I

    move-result p0

    return p0
.end method

.method public static c(Lcom/miui/gamebooster/model/y;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/y;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La8/q;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/model/y;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, La8/q;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_2
    return-void
.end method

.method public static e(Landroid/content/Context;Lcom/miui/gamebooster/model/y;)V
    .locals 1

    sget-object v0, La8/n$a;->b:La8/n$a;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/y;->f()I

    move-result p1

    invoke-static {p0, v0, p1}, La8/n;->b(Landroid/content/Context;La8/n$a;I)I

    return-void
.end method

.method public static f(Landroid/content/Context;J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, La8/n$a;->b:La8/n$a;

    invoke-static {p0, v1, p1, p2}, La8/n;->f(Landroid/content/Context;La8/n$a;J)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    :try_start_0
    const-string p1, "file_path"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    :try_start_1
    sget-object p2, La8/q;->a:Ljava/lang/String;

    const-string v1, "get delete data error"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/y;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, La8/n$a;->b:La8/n$a;

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, La8/n;->e(Landroid/content/Context;La8/n$a;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const v3, 0x7f120b1e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v3, "duration"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "game_type"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "record_type"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "op_date"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "file_path"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "file_name"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "store_path"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "match_md5"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 p1, v2

    move v15, v3

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move/from16 v16, v6

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move/from16 v17, v4

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v18, v7

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v19, v9

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v20, v8

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v21, v5

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v22, v10

    new-instance v10, Lcom/miui/gamebooster/model/y;

    invoke-direct {v10}, Lcom/miui/gamebooster/model/y;-><init>()V

    invoke-virtual {v10, v6}, Lcom/miui/gamebooster/model/y;->q(I)V

    invoke-virtual {v10, v5}, Lcom/miui/gamebooster/model/y;->r(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Lcom/miui/gamebooster/model/y;->n(Ljava/lang/String;)V

    int-to-long v5, v13

    invoke-virtual {v10, v5, v6}, Lcom/miui/gamebooster/model/y;->l(J)V

    invoke-virtual {v10, v9}, Lcom/miui/gamebooster/model/y;->o(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Lcom/miui/gamebooster/model/y;->t(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Lcom/miui/gamebooster/model/y;->p(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Lcom/miui/gamebooster/model/y;->u(Ljava/lang/String;)V

    invoke-static {v9}, La8/y;->b(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4}, La8/y;->b(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v13, 0x0

    cmp-long v4, v5, v13

    if-lez v4, :cond_1

    invoke-virtual {v10, v5, v6}, Lcom/miui/gamebooster/model/y;->m(J)V

    goto :goto_1

    :cond_1
    cmp-long v5, v7, v13

    if-lez v5, :cond_2

    invoke-virtual {v10, v7, v8}, Lcom/miui/gamebooster/model/y;->m(J)V

    :cond_2
    :goto_1
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v2, p1

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/miui/gamebooster/model/y;->s(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/miui/gamebooster/model/y;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f120b21

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/miui/gamebooster/model/y;->s(Ljava/lang/String;)V

    :cond_3
    if-gtz v4, :cond_4

    cmp-long v3, v7, v13

    if-lez v3, :cond_5

    :cond_4
    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    move v3, v15

    move/from16 v6, v16

    move/from16 v4, v17

    move/from16 v7, v18

    move/from16 v9, v19

    move/from16 v8, v20

    move/from16 v5, v21

    move/from16 v10, v22

    goto/16 :goto_0

    :cond_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v12

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    :try_start_1
    sget-object v2, La8/q;->a:Ljava/lang/String;

    const-string v3, "get data error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/f;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1}, La8/q;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, La8/q;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, La8/n$a;->b:La8/n$a;

    invoke-static {p0, v0, p1}, La8/n;->g(Landroid/content/Context;La8/n$a;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "game_type"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/y;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    sget-object v2, La8/n$a;->b:La8/n$a;

    move-object/from16 v3, p1

    invoke-static {v0, v2, v3}, La8/n;->g(Landroid/content/Context;La8/n$a;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const v4, 0x7f120b1e

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "duration"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "game_type"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "record_type"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "op_date"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "file_path"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "file_name"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "store_path"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "match_md5"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v1

    :try_start_1
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move/from16 p1, v4

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v16, v5

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move/from16 v17, v7

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v18, v8

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move/from16 v19, v9

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v20, v6

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v21, v10

    new-instance v10, Lcom/miui/gamebooster/model/y;

    invoke-direct {v10}, Lcom/miui/gamebooster/model/y;-><init>()V

    invoke-virtual {v10, v4}, Lcom/miui/gamebooster/model/y;->q(I)V

    invoke-virtual {v10, v6}, Lcom/miui/gamebooster/model/y;->r(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Lcom/miui/gamebooster/model/y;->n(Ljava/lang/String;)V

    int-to-long v6, v13

    invoke-virtual {v10, v6, v7}, Lcom/miui/gamebooster/model/y;->l(J)V

    invoke-virtual {v10, v8}, Lcom/miui/gamebooster/model/y;->o(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Lcom/miui/gamebooster/model/y;->t(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Lcom/miui/gamebooster/model/y;->p(Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Lcom/miui/gamebooster/model/y;->u(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/miui/gamebooster/model/y;->s(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/miui/gamebooster/model/y;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120b21

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/miui/gamebooster/model/y;->s(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    :goto_1
    invoke-static {v8}, La8/y;->b(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5}, La8/y;->b(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_3

    cmp-long v0, v4, v8

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v15

    goto :goto_3

    :cond_3
    :goto_2
    move-object v4, v15

    :try_start_2
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    move-object v0, v1

    move-object v1, v4

    move/from16 v5, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v6, v20

    move/from16 v10, v21

    move/from16 v4, p1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_4
    move-object v4, v15

    goto :goto_6

    :cond_4
    move-object v4, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    move-object v4, v1

    :goto_6
    :try_start_3
    sget-object v1, La8/q;->a:Ljava/lang/String;

    const-string v3, "get match error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v4

    :goto_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_5
    move-object v4, v1

    return-object v4
.end method

.method private static k()Ljava/io/File;
    .locals 1

    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static l()Ljava/io/File;
    .locals 3

    invoke-static {}, La8/q;->k()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "mitime/storage"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    return-object v1
.end method

.method public static m(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, La8/n;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1
.end method

.method public static n(Landroid/content/Context;Lcom/miui/gamebooster/model/y;)Z
    .locals 0

    invoke-static {p0, p1}, La8/n;->h(Landroid/content/Context;Lcom/miui/gamebooster/model/y;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
