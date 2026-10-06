.class public Lkj/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lkj/f;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "thread_id"

    const-string v2, "type"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+86"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v5, "content://sms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v13

    const-string v8, "address=? or address=?"

    const/4 v14, 0x2

    new-array v9, v14, [Ljava/lang/String;

    aput-object v0, v9, v4

    const/4 v15, 0x1

    aput-object v3, v9, v15

    const/4 v10, 0x0

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "thread_id=?"

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    new-array v9, v15, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v4

    const/4 v1, 0x0

    move-object v5, v11

    move-object v6, v12

    move-object v7, v13

    move v13, v10

    move-object v10, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    move v1, v4

    :cond_0
    :try_start_1
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v15, :cond_1

    or-int/lit8 v1, v1, 0x1

    :cond_1
    if-ne v6, v14, :cond_2

    or-int/lit8 v1, v1, 0x2

    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_3
    move v1, v4

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const-string v5, "body"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    move-object v6, v12

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_9

    or-int/lit8 v1, v1, 0x4

    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "number=? or number=?"

    new-array v9, v14, [Ljava/lang/String;

    aput-object v0, v9, v4

    aput-object v3, v9, v15

    const-string v10, "date DESC"

    move-object v5, v11

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :cond_5
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v15, :cond_6

    or-int/lit8 v1, v1, 0x20

    goto :goto_4

    :cond_6
    if-ne v2, v14, :cond_7

    or-int/lit8 v1, v1, 0x40

    goto :goto_4

    :cond_7
    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    or-int/lit8 v1, v1, 0x10

    :cond_8
    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    :cond_9
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move v4, v1

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SQLiteException in queryAddress"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    :goto_6
    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "queryAddress result:"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
