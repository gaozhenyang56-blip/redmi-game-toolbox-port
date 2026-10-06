.class public Lf2/c;
.super Lf2/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf2/a<",
        "Lg2/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf2/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lf2/c;->c(Landroid/database/Cursor;)Lg2/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/database/Cursor;)Lg2/b;
    .locals 2

    new-instance v0, Lg2/b;

    invoke-direct {v0}, Lg2/b;-><init>()V

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lg2/b;->f(I)V

    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg2/b;->h(Ljava/lang/String;)V

    const-string v1, "display_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg2/b;->e(Ljava/lang/String;)V

    const-string v1, "notes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg2/b;->g(Ljava/lang/String;)V

    const-string v1, "state"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lg2/b;->i(I)V

    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lg2/b;->j(I)V

    return-object v0
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lf2/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Lf2/c;->d()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "cloudUid = ? "

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    aput-object p1, v7, v0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    move v0, v2

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v0

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method

.method public f(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Lg2/b;",
            ">;"
        }
    .end annotation

    const-string v0, "select * from phone_list where number NOT LIKE \'%*\' AND number NOT LIKE \'***%\'"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf2/a;->b(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroid/util/SparseArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lg2/b;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "state"

    const-string v6, "type"

    const-string v7, "number"

    const/16 v8, 0x64

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg2/b;

    invoke-virtual {p0}, Lf2/c;->d()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v4}, Lg2/b;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v4}, Lg2/b;->d()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v4}, Lg2/b;->c()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lg2/b;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, "cloudUid"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    iget-object v5, p0, Lf2/a;->b:Lmiui/provider/BatchOperation;

    invoke-virtual {v5, v4}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    iget-object v4, p0, Lf2/a;->b:Lmiui/provider/BatchOperation;

    invoke-virtual {v4}, Lmiui/provider/BatchOperation;->size()I

    move-result v4

    if-le v4, v8, :cond_0

    iget-object v4, p0, Lf2/a;->b:Lmiui/provider/BatchOperation;

    invoke-virtual {v4}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v9, "cloudUid = ? "

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg2/b;

    invoke-virtual {p0}, Lf2/c;->d()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v4}, Lg2/b;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v4}, Lg2/b;->d()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    invoke-virtual {v4}, Lg2/b;->c()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v5, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    new-array v11, v2, [Ljava/lang/String;

    invoke-virtual {v4}, Lg2/b;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v0

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    iget-object v9, p0, Lf2/a;->b:Lmiui/provider/BatchOperation;

    invoke-virtual {v9, v4}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    iget-object v4, p0, Lf2/a;->b:Lmiui/provider/BatchOperation;

    invoke-virtual {v4}, Lmiui/provider/BatchOperation;->size()I

    move-result v4

    if-le v4, v8, :cond_2

    iget-object v4, p0, Lf2/a;->b:Lmiui/provider/BatchOperation;

    invoke-virtual {v4}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg2/b;

    invoke-virtual {p0}, Lf2/c;->d()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {v1}, Lg2/b;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {v4, v9, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    iget-object v4, p0, Lf2/a;->b:Lmiui/provider/BatchOperation;

    invoke-virtual {v4, v1}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    iget-object v1, p0, Lf2/a;->b:Lmiui/provider/BatchOperation;

    invoke-virtual {v1}, Lmiui/provider/BatchOperation;->size()I

    move-result v1

    if-le v1, v8, :cond_4

    iget-object v1, p0, Lf2/a;->b:Lmiui/provider/BatchOperation;

    invoke-virtual {v1}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lf2/a;->b:Lmiui/provider/BatchOperation;

    invoke-virtual {p1}, Lmiui/provider/BatchOperation;->size()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lf2/a;->b:Lmiui/provider/BatchOperation;

    invoke-virtual {p1}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lf2/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lb2/b;->c(Landroid/content/Context;)Lb2/b;

    move-result-object p1

    invoke-virtual {p1}, Lb2/b;->d()Lh2/b;

    move-result-object p1

    invoke-virtual {p1}, Lh2/b;->l()V

    :cond_7
    return-void
.end method
