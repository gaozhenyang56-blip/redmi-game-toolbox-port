.class public Lxf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lxf/b;


# instance fields
.field private a:Lxf/a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lxf/b;->b:Ljava/util/List;

    new-instance v0, Lxf/a;

    invoke-direct {v0, p1}, Lxf/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lxf/b;->a:Lxf/a;

    iput-object p1, p0, Lxf/b;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lxf/b;)Lxf/a;
    .locals 0

    iget-object p0, p0, Lxf/b;->a:Lxf/a;

    return-object p0
.end method

.method static synthetic b(Lxf/b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lxf/b;->b:Ljava/util/List;

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Lxf/b;
    .locals 1

    sget-object v0, Lxf/b;->d:Lxf/b;

    if-nez v0, :cond_0

    new-instance v0, Lxf/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lxf/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxf/b;->d:Lxf/b;

    :cond_0
    sget-object p0, Lxf/b;->d:Lxf/b;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lxf/b;->a:Lxf/a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "pkg_name = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "no_kill_pkg"

    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    const/4 p1, -0x1

    return p1

    :goto_0
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lxf/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public f()V
    .locals 8

    iget-object v0, p0, Lxf/b;->c:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4037000000000000L    # 23.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lxf/b;->c:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lxf/b;->c:Landroid/content/Context;

    const-class v5, Lcom/miui/securitycenter/service/CloudDataUpdateService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x2715

    const/high16 v5, 0x4000000

    invoke-static {v2, v4, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const/4 v2, 0x1

    const-wide/32 v5, 0x5265c00

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public g(Ljava/lang/String;)J
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lxf/b;->a:Lxf/a;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "pkg_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "no_kill_pkg"

    invoke-virtual {v1, p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-wide v2

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :goto_1
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public h()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lxf/b$a;

    invoke-direct {v1, p0, v0}, Lxf/b$a;-><init>(Lxf/b;Ljava/util/HashSet;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
