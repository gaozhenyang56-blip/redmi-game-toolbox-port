.class Lvf/l$d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvf/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
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
.field private a:I

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvf/k;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lvf/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvf/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IIJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lvf/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/List<",
            "Lvf/k;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lvf/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p1, p0, Lvf/l$d;->a:I

    iput p2, p0, Lvf/l$d;->b:I

    iput-wide p3, p0, Lvf/l$d;->c:J

    iput-object p6, p0, Lvf/l$d;->d:Ljava/lang/String;

    iput-object p7, p0, Lvf/l$d;->e:Ljava/lang/String;

    iput-object p5, p0, Lvf/l$d;->f:Ljava/util/List;

    iput-object p8, p0, Lvf/l$d;->g:Lvf/b;

    return-void
.end method

.method synthetic constructor <init>(IIJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lvf/b;Lvf/l$a;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lvf/l$d;-><init>(IIJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lvf/b;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    invoke-static {}, Lvf/l;->s()Lvf/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget v0, p0, Lvf/l$d;->a:I

    iget v1, p0, Lvf/l$d;->b:I

    iget-wide v2, p0, Lvf/l$d;->c:J

    iget-object v4, p0, Lvf/l$d;->d:Ljava/lang/String;

    iget-object v5, p0, Lvf/l$d;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lvf/l;->c(IIJLjava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "notification_table"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {}, Lvf/l;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insert n = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lvf/l$d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lvf/l$d;->b:I

    iget-object v3, p0, Lvf/l$d;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvf/k;

    invoke-static {v1, v3}, Lvf/l;->e(ILvf/k;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v3, "pic_table"

    invoke-virtual {p1, v3, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    invoke-static {}, Lvf/l;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v2
.end method

.method protected b(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lvf/l$d;->g:Lvf/b;

    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lvf/b;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lvf/l$d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lvf/l$d;->b(Ljava/lang/Void;)V

    return-void
.end method
