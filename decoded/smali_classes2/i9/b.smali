.class public Li9/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li9/b$c;,
        Li9/b$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Li9/b$c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "global_satisfaction_data.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Li9/b;->a:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "DBThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Li9/b$c;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Li9/b$c;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Li9/b;->b:Li9/b$c;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Li9/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Li9/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private A(Lcom/miui/globalsatisfaction/bean/Questionnaire;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getIsValid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_valid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Ll9/f;->a(Lcom/miui/globalsatisfaction/bean/Questionnaire;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized F(Li9/a;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Li9/b;->o()Li9/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "questions_table"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Lh9/e;

    iget-object v2, p0, Li9/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lh9/e;-><init>(Landroid/content/Context;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Li9/b;->l(Landroid/database/Cursor;)Lcom/miui/globalsatisfaction/bean/Questionnaire;

    move-result-object v2

    invoke-virtual {v1, v2}, Lh9/a;->d(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lh9/e;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Li9/b;->H(Lcom/miui/globalsatisfaction/bean/Questionnaire;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Li9/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized H(Lcom/miui/globalsatisfaction/bean/Questionnaire;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "globalsatisfaction_GSDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOutDateQuestionnaire: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Li9/b;->o()Li9/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "questions_table"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized J(Ljava/util/List;)V
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/Questionnaire;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    const-string v1, "globalsatisfaction_GSDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateData: set invalid question = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Li9/b;->o()Li9/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "questions_table"

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Li9/b;->A(Lcom/miui/globalsatisfaction/bean/Questionnaire;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic c(Li9/b;Li9/a;)V
    .locals 0

    invoke-direct {p0, p1}, Li9/b;->t(Li9/a;)V

    return-void
.end method

.method static synthetic d(Li9/b;Li9/a;)V
    .locals 0

    invoke-direct {p0, p1}, Li9/b;->F(Li9/a;)V

    return-void
.end method

.method static synthetic e(Li9/b;Ljava/util/List;Li9/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li9/b;->g(Ljava/util/List;Li9/a;)V

    return-void
.end method

.method static synthetic f(Li9/b;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Li9/b;->J(Ljava/util/List;)V

    return-void
.end method

.method private declared-synchronized g(Ljava/util/List;Li9/a;)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/Questionnaire;",
            ">;",
            "Li9/a;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Li9/b;->o()Li9/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "questions_table"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Li9/b;->l(Landroid/database/Cursor;)Lcom/miui/globalsatisfaction/bean/Questionnaire;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const-string v3, "globalsatisfaction_GSDBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkUpdateData: insert question = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Li9/b;->o()Li9/b;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "questions_table"

    invoke-direct {p0, v1}, Li9/b;->A(Lcom/miui/globalsatisfaction/bean/Questionnaire;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v3, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    :cond_1
    const-string v2, "globalsatisfaction_GSDBHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkUpdateData: question id already exists question = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " do not handle"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->setIsValid(I)V

    const-string v1, "globalsatisfaction_GSDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUpdateData: set invalid question = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->isWhiteDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Li9/b;->H(Lcom/miui/globalsatisfaction/bean/Questionnaire;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Li9/b;->o()Li9/b;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "questions_table"

    invoke-direct {p0, v0}, Li9/b;->A(Lcom/miui/globalsatisfaction/bean/Questionnaire;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {v1, v3, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Li9/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private j(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE questions_table(id TEXT NOT NULL PRIMARY KEY,data TEXT NOT NULL,is_valid INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private l(Landroid/database/Cursor;)Lcom/miui/globalsatisfaction/bean/Questionnaire;
    .locals 1

    const-string v0, "data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-static {p1, v0}, Ll9/f;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    return-object p1
.end method

.method private n(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS questions_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "globalsatisfaction_GSDBHelper"

    const-string v2, "exception when onDowngrade dropping tables"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public static o()Li9/b;
    .locals 1

    invoke-static {}, Li9/b$b;->a()Li9/b;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized t(Li9/a;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Li9/b;->o()Li9/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "questions_table"

    const/4 v3, 0x0

    const-string v4, "is_valid = \'1\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Li9/b;->l(Landroid/database/Cursor;)Lcom/miui/globalsatisfaction/bean/Questionnaire;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lh9/d;

    invoke-direct {v0}, Lh9/d;-><init>()V

    new-instance v3, Lh9/g;

    iget-object v4, p0, Li9/b;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lh9/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lh9/a;->c(Lh9/a;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    invoke-virtual {v0, v3}, Lh9/a;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lh9/d;->b()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Li9/a;->b(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private y(IILandroid/database/Cursor;)Lcom/miui/globalsatisfaction/bean/Questionnaire;
    .locals 21
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "rom_version_end"

    const-string v3, "rom_version_start"

    const/4 v4, 0x4

    move/from16 v5, p2

    if-ne v5, v4, :cond_4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    move-object/from16 v5, p0

    :try_start_0
    invoke-direct {v5, v1}, Li9/b;->l(Landroid/database/Cursor;)Lcom/miui/globalsatisfaction/bean/Questionnaire;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->compatibleHandle()V

    return-object v0

    :cond_1
    move-object/from16 v5, p0

    goto/16 :goto_2

    :cond_2
    :goto_0
    move-object/from16 v5, p0

    const-string v0, "id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "url"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v0, "language"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll9/b;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    const-string v0, "display_mode"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v0, "show_time"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string v0, "delay_time"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v6, "miui_version"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, -0x1

    const-string v14, ""

    if-eq v7, v12, :cond_3

    :try_start_1
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v12, :cond_3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v14

    :goto_1
    const-string v3, "valid_period"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v7, "display_timestamp"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v12, "is_valid"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v18, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    const-string v19, ""

    new-instance v20, Lcom/miui/globalsatisfaction/bean/ShowConditions;

    new-array v12, v4, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v4, 0x0

    aput-object v15, v12, v4

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/4 v12, 0x1

    new-array v4, v12, [Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v4, v16

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-array v6, v12, [Lcom/miui/globalsatisfaction/bean/RomConditions;

    new-instance v12, Lcom/miui/globalsatisfaction/bean/RomConditions;

    new-instance v5, Lcom/miui/globalsatisfaction/bean/RomCondition;

    invoke-direct {v5, v14, v2}, Lcom/miui/globalsatisfaction/bean/RomCondition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v12, v5}, Lcom/miui/globalsatisfaction/bean/RomConditions;-><init>(Lcom/miui/globalsatisfaction/bean/RomCondition;)V

    const/4 v2, 0x0

    aput-object v12, v6, v2

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;

    new-instance v6, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;

    invoke-direct {v6, v0, v7, v2}, Lcom/miui/globalsatisfaction/bean/ShowedDelayTime;-><init>(ILjava/lang/String;Z)V

    aput-object v6, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v12, v20

    move-object v14, v15

    move-object v15, v4

    invoke-direct/range {v12 .. v17}, Lcom/miui/globalsatisfaction/bean/ShowConditions;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v6, v18

    move-object v0, v7

    move-object/from16 v7, v19

    move-object/from16 v12, v20

    move v13, v3

    move-object v14, v0

    move v15, v1

    invoke-direct/range {v6 .. v15}, Lcom/miui/globalsatisfaction/bean/Questionnaire;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/miui/globalsatisfaction/bean/ShowConditions;ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v18

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public D(Li9/a;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Li9/b;->b:Li9/b$c;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public L(Ljava/util/List;Li9/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/Questionnaire;",
            ">;",
            "Li9/a;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "list"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "callback"

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Li9/b;->b:Li9/b$c;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public M(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/Questionnaire;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Li9/b;->b:Li9/b$c;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public declared-synchronized O(ZLjava/lang/String;I)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Li9/b;->o()Li9/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "questions_table"

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Li9/b;->l(Landroid/database/Cursor;)Lcom/miui/globalsatisfaction/bean/Questionnaire;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getShowConditions()Lcom/miui/globalsatisfaction/bean/ShowConditions;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/globalsatisfaction/bean/ShowConditions;->setValidDelayTime(I)V

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->updateShowState(ZZ)V

    invoke-static {}, Li9/b;->o()Li9/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p3, "questions_table"

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Li9/b;->A(Lcom/miui/globalsatisfaction/bean/Questionnaire;)Landroid/content/ContentValues;

    move-result-object p2

    invoke-virtual {p1, p3, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "globalsatisfaction_GSDBHelper"

    const-string v1, "db onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Li9/b;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-direct {p0, p1}, Li9/b;->n(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Li9/b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10

    const-string v0, "globalsatisfaction_GSDBHelper"

    const-string v1, "onUpgrade: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "questions_table"

    const/4 v4, 0x0

    const-string v5, "is_valid = \'0\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2, p3, v0}, Li9/b;->y(IILandroid/database/Cursor;)Lcom/miui/globalsatisfaction/bean/Questionnaire;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Li9/b;->n(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Li9/b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    const/4 v0, 0x0

    invoke-direct {p0, p3}, Li9/b;->A(Lcom/miui/globalsatisfaction/bean/Questionnaire;)Landroid/content/ContentValues;

    move-result-object p3

    const-string v1, "questions_table"

    invoke-virtual {p1, v1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    :cond_2
    return-void
.end method

.method public declared-synchronized p()Ljava/util/List;
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/Questionnaire;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Li9/b;->o()Li9/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "questions_table"

    const/4 v3, 0x0

    const-string v4, "is_valid = \'1\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lh9/f;

    invoke-direct {v2}, Lh9/f;-><init>()V

    new-instance v3, Lh9/g;

    iget-object v4, p0, Li9/b;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lh9/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lh9/a;->c(Lh9/a;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Li9/b;->l(Landroid/database/Cursor;)Lcom/miui/globalsatisfaction/bean/Questionnaire;

    move-result-object v3

    invoke-virtual {v2, v3}, Lh9/a;->d(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lh9/f;->b()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Li9/b;->J(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public s(Li9/a;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Li9/b;->b:Li9/b$c;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
