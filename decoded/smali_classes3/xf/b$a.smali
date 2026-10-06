.class Lxf/b$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxf/b;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Lxf/b;


# direct methods
.method constructor <init>(Lxf/b;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lxf/b$a;->b:Lxf/b;

    iput-object p2, p0, Lxf/b$a;->a:Ljava/util/HashSet;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    const-string p1, "pkg_name"

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lxf/b$a;->b:Lxf/b;

    invoke-static {v1}, Lxf/b;->a(Lxf/b;)Lxf/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "no_kill_pkg"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :cond_0
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lxf/b$a;->a:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v3, :cond_1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v2, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception p1

    :goto_3
    move-object v0, v1

    :goto_4
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 1

    iget-object p1, p0, Lxf/b$a;->b:Lxf/b;

    invoke-static {p1}, Lxf/b;->b(Lxf/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lxf/b$a;->b:Lxf/b;

    invoke-static {p1}, Lxf/b;->b(Lxf/b;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lxf/b$a;->a:Ljava/util/HashSet;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lxf/b$a;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lxf/b$a;->b(Ljava/lang/Void;)V

    return-void
.end method
