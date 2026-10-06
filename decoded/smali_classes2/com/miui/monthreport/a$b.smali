.class Lcom/miui/monthreport/a$b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/monthreport/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/monthreport/a;


# direct methods
.method public constructor <init>(Lcom/miui/monthreport/a;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/monthreport/a$b;->a:Lcom/miui/monthreport/a;

    const-string p1, "month_report.db"

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE report_json (_id INTEGER PRIMARY KEY AUTOINCREMENT, eventId TEXT, eventTime INTEGER, pkgName TEXT, eventType INTEGER, version INTEGER, data TEXT, moduleName TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE report_json ADD COLUMN moduleName TEXT DEFAULT monthReport;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/monthreport/a$b;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DROP TABLE report_json;"

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/miui/monthreport/a$b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/monthreport/a$b;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
