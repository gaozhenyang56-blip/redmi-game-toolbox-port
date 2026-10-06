.class public Lvf/l;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvf/l$f;,
        Lvf/l$e;,
        Lvf/l$b;,
        Lvf/l$d;,
        Lvf/l$c;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lvf/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvf/l;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "pic_db.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lvf/l$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lvf/l;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static D(IIJLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "uid"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "notification_id"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "notification_time"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "app_name"

    invoke-virtual {v0, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "app_package_name"

    invoke-virtual {v0, p0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic c(IIJLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 0

    invoke-static/range {p0 .. p5}, Lvf/l;->D(IIJLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lvf/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(ILvf/k;)Landroid/content/ContentValues;
    .locals 0

    invoke-static {p0, p1}, Lvf/l;->p(ILvf/k;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Landroid/database/Cursor;)Lvf/m;
    .locals 0

    invoke-static {p0}, Lvf/l;->n(Landroid/database/Cursor;)Lvf/m;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Landroid/database/Cursor;)Lvf/k;
    .locals 0

    invoke-static {p0}, Lvf/l;->l(Landroid/database/Cursor;)Lvf/k;

    move-result-object p0

    return-object p0
.end method

.method private static l(Landroid/database/Cursor;)Lvf/k;
    .locals 3

    const-string v0, "origin_path"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "now_path"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "msg_path"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance v2, Lvf/k;

    invoke-direct {v2, v0, v1, p0}, Lvf/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static n(Landroid/database/Cursor;)Lvf/m;
    .locals 8

    const-string v0, "uid"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v0, "notification_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v0, "notification_time"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v0, "app_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "app_package_name"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance p0, Lvf/m;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lvf/m;-><init>(IIJLjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static p(ILvf/k;)Landroid/content/ContentValues;
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "notification_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p0, p1, Lvf/k;->b:Ljava/lang/String;

    const-string v1, "now_path"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lvf/k;->a:Ljava/lang/String;

    const-string v1, "origin_path"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lvf/k;->c:Ljava/lang/String;

    const-string p1, "msg_path"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static s()Lvf/l;
    .locals 1

    invoke-static {}, Lvf/l$c;->a()Lvf/l;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A(IILjava/util/List;JLjava/lang/String;Ljava/lang/String;Lvf/b;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lvf/k;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lvf/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v10, Lvf/l$d;

    const/4 v9, 0x0

    move-object v0, v10

    move v1, p1

    move v2, p2

    move-wide v3, p4

    move-object v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lvf/l$d;-><init>(IIJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lvf/b;Lvf/l$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v10, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public F(Lvf/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvf/b<",
            "Ljava/util/List<",
            "Lvf/m;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lvf/l$e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lvf/l$e;-><init>(Lvf/b;Lvf/l$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public H(Lvf/b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvf/b<",
            "Ljava/util/List<",
            "Lvf/k;",
            ">;>;I)V"
        }
    .end annotation

    new-instance v0, Lvf/l$f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lvf/l$f;-><init>(Lvf/b;ILvf/l$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public J(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lvf/l;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lvf/l;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public o(I)V
    .locals 2

    new-instance v0, Lvf/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lvf/l$b;-><init>(ILvf/l$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE notification_table(id INTEGER PRIMARY KEY AUTOINCREMENT,uid INTEGER NOT NULL,notification_id INTEGER NOT NULL,notification_time INTEGER NOT NULL,app_name TEXT NOT NULL,app_package_name TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE pic_table(id INTEGER PRIMARY KEY AUTOINCREMENT,notification_id INTEGER NOT NULL,now_path TEXT NOT NULL,origin_path TEXT NOT NULL,msg_path TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object p1, Lvf/l;->b:Ljava/lang/String;

    const-string v0, "db create"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public t()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lvf/l;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object v0
.end method

.method public y(IILjava/util/List;JLjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lvf/k;",
            ">;J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v10, Lvf/l$d;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v1, p1

    move v2, p2

    move-wide v3, p4

    move-object v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lvf/l$d;-><init>(IIJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lvf/b;Lvf/l$a;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v10, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
