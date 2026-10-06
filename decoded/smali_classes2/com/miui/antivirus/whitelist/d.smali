.class public Lcom/miui/antivirus/whitelist/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/whitelist/d$c;,
        Lcom/miui/antivirus/whitelist/d$b;,
        Lcom/miui/antivirus/whitelist/d$a;
    }
.end annotation


# static fields
.field private static b:Lcom/miui/antivirus/whitelist/d;

.field private static c:Landroid/content/ContentResolver;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/d;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sput-object p1, Lcom/miui/antivirus/whitelist/d;->c:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/model/d;)Z
    .locals 0

    invoke-static {p0}, Lcom/miui/antivirus/whitelist/d;->i(Lcom/miui/antivirus/model/d;)Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/miui/antivirus/whitelist/d;
    .locals 2

    const-class v0, Lcom/miui/antivirus/whitelist/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/whitelist/d;->b:Lcom/miui/antivirus/whitelist/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/antivirus/whitelist/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/antivirus/whitelist/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/antivirus/whitelist/d;->b:Lcom/miui/antivirus/whitelist/d;

    :cond_0
    sget-object p0, Lcom/miui/antivirus/whitelist/d;->b:Lcom/miui/antivirus/whitelist/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static i(Lcom/miui/antivirus/model/d;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/miui/antivirus/model/d;->u()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lw2/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v4, "virus_md5=?"

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    aput-object p0, v5, v0

    const/4 p0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/whitelist/d;->c:Landroid/content/ContentResolver;

    sget-object v2, Lx2/a;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-static {p0}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v7

    :cond_1
    :goto_0
    invoke-static {p0}, Lbl/e;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "WhiteListManager"

    const-string v3, "msg"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v0

    :goto_2
    invoke-static {p0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public b(Lcom/miui/antivirus/model/d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/antivirus/whitelist/d$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/antivirus/whitelist/d$a;-><init>(Lcom/miui/antivirus/whitelist/d;Lcom/miui/antivirus/model/d;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public c([Ljava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "dir_path = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    const-string v2, " or dir_path = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/miui/antivirus/whitelist/d;->c:Landroid/content/ContentResolver;

    sget-object v2, Lx2/a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public e()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/whitelist/d$b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "scan_result_type=?"

    const-string v2, "riskapp"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/miui/antivirus/whitelist/d;->c:Landroid/content/ContentResolver;

    sget-object v3, Lx2/a;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/miui/antivirus/whitelist/d$b;

    invoke-direct {v2}, Lcom/miui/antivirus/whitelist/d$b;-><init>()V

    const-string v3, "app_label"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$b;->c:Ljava/lang/String;

    const-string v3, "desc"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$b;->d:Ljava/lang/String;

    const-string v3, "dir_path"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$b;->e:Ljava/lang/String;

    const-string v3, "pkg_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$b;->f:Ljava/lang/String;

    const-string v3, "virus_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$b;->g:Ljava/lang/String;

    const-string v3, "scan_item_type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$b;->a:Ljava/lang/String;

    const-string v3, "scan_result_type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$b;->b:Ljava/lang/String;

    const-string v3, "virus_md5"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$b;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antivirus/whitelist/d;->a:Landroid/content/Context;

    iget-object v4, v2, Lcom/miui/antivirus/whitelist/d$b;->f:Ljava/lang/String;

    invoke-static {v3, v4}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/miui/antivirus/whitelist/d$b;->h:Ljava/lang/String;

    iget-object v4, v2, Lcom/miui/antivirus/whitelist/d$b;->e:Ljava/lang/String;

    invoke-static {v4}, Lw2/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "WhiteListManager"

    const-string v4, "msg"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :goto_1
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public f()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antivirus/whitelist/d$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "scan_result_type=?"

    const-string v2, "trojan"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/miui/antivirus/whitelist/d;->c:Landroid/content/ContentResolver;

    sget-object v3, Lx2/a;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/miui/antivirus/whitelist/d$c;

    invoke-direct {v2}, Lcom/miui/antivirus/whitelist/d$c;-><init>()V

    const-string v3, "app_label"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$c;->c:Ljava/lang/String;

    const-string v3, "desc"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$c;->d:Ljava/lang/String;

    const-string v3, "dir_path"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$c;->e:Ljava/lang/String;

    const-string v3, "pkg_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$c;->f:Ljava/lang/String;

    const-string v3, "virus_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$c;->g:Ljava/lang/String;

    const-string v3, "scan_item_type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$c;->a:Ljava/lang/String;

    const-string v3, "scan_result_type"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$c;->b:Ljava/lang/String;

    const-string v3, "virus_md5"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/antivirus/whitelist/d$c;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antivirus/whitelist/d;->a:Landroid/content/Context;

    iget-object v4, v2, Lcom/miui/antivirus/whitelist/d$c;->f:Ljava/lang/String;

    invoke-static {v3, v4}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/miui/antivirus/whitelist/d$c;->h:Ljava/lang/String;

    iget-object v4, v2, Lcom/miui/antivirus/whitelist/d$c;->e:Ljava/lang/String;

    invoke-static {v4}, Lw2/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "WhiteListManager"

    const-string v4, "msg"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :goto_1
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public g()I
    .locals 8

    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/miui/antivirus/whitelist/d;->c:Landroid/content/ContentResolver;

    sget-object v3, Lx2/a;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "pkg_name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "virus_md5"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dir_path"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/antivirus/whitelist/d;->a:Landroid/content/Context;

    invoke-static {v5, v2}, Lx4/g1;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v4}, Lw2/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "WhiteListManager"

    const-string v4, "msg"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0

    :goto_3
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "scan_result_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "scan_item_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_label"

    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "desc"

    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dir_path"

    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "pkg_name"

    invoke-virtual {v0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "virus_name"

    invoke-virtual {v0, p1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "virus_md5"

    invoke-virtual {v0, p1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/miui/antivirus/whitelist/d;->c:Landroid/content/ContentResolver;

    sget-object p2, Lx2/a;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method public j(Lcom/miui/antivirus/model/d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/antivirus/whitelist/d$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/antivirus/whitelist/d$a;-><init>(Lcom/miui/antivirus/whitelist/d;Lcom/miui/antivirus/model/d;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
