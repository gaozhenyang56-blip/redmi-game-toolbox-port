.class public Lcom/miui/securityscan/scanner/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/scanner/m$c;,
        Lcom/miui/securityscan/scanner/m$d;
    }
.end annotation


# static fields
.field private static d:Lcom/miui/securityscan/scanner/m;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lo2/b;

.field private c:Lo4/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/m;->a:Landroid/content/Context;

    invoke-static {p1}, Lo2/b;->g(Landroid/content/Context;)Lo2/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/m;->b:Lo2/b;

    invoke-static {p1}, Lo4/a;->c(Landroid/content/Context;)Lo4/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/securityscan/scanner/m;->c:Lo4/a;

    return-void
.end method

.method public static synthetic a(Lcom/miui/securityscan/scanner/m;Ljava/util/Map;Lrf/e;ZZLjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/miui/securityscan/scanner/m;->j(Ljava/util/Map;Lrf/e;ZZLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/securityscan/scanner/m;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/scanner/m;->i(I)V

    return-void
.end method

.method static synthetic c(Landroid/content/Context;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/miui/securityscan/scanner/m;->h(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/miui/securityscan/scanner/m;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/securityscan/scanner/m;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation

    const-string v0, "SystemCheckManager"

    const-string v1, "getAllScanAppPaths start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v1

    invoke-virtual {v1}, Li4/a;->j()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    new-instance v4, Lcom/miui/antivirus/model/i;

    invoke-direct {v4}, Lcom/miui/antivirus/model/i;-><init>()V

    sget-object v5, Lo2/b$c;->a:Lo2/b$c;

    invoke-virtual {v4, v5}, Lcom/miui/antivirus/model/i;->o(Lo2/b$c;)V

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/antivirus/model/i;->m(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v5}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/antivirus/model/i;->k(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/antivirus/model/i;->r(Ljava/lang/String;)V

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v1, "getAllScanAppPaths start apks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    :try_start_0
    const-string v5, "external"

    const-string v6, "_data"

    const-string v7, "date_modified"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "_data LIKE \'%.apk\'"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lx4/f1;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/miui/antivirus/model/i;

    invoke-direct {v6}, Lcom/miui/antivirus/model/i;-><init>()V

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v3}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/antivirus/model/i;->k(Ljava/lang/String;)V

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lcom/miui/antivirus/model/i;->m(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/miui/antivirus/model/i;->r(Ljava/lang/String;)V

    sget-object v5, Lo2/b$c;->b:Lo2/b$c;

    invoke-virtual {v6, v5}, Lcom/miui/antivirus/model/i;->o(Lo2/b$c;)V

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    const-string v3, "getAllScanAppPaths Exception"

    invoke-static {v0, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    const-string p0, "getAllScanAppPaths end"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :goto_3
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static declared-synchronized g(Landroid/content/Context;)Lcom/miui/securityscan/scanner/m;
    .locals 2

    const-class v0, Lcom/miui/securityscan/scanner/m;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/securityscan/scanner/m;->d:Lcom/miui/securityscan/scanner/m;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/securityscan/scanner/m;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/miui/securityscan/scanner/m;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/securityscan/scanner/m;->d:Lcom/miui/securityscan/scanner/m;

    :cond_0
    sget-object p0, Lcom/miui/securityscan/scanner/m;->d:Lcom/miui/securityscan/scanner/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static h(Landroid/content/Context;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation

    const-string v0, "SystemCheckManager"

    const-string v1, "getRunningAppPaths start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v1

    invoke-virtual {v1}, Li4/a;->m()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    aget-object v7, v3, v5

    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_1

    new-instance v7, Lcom/miui/antivirus/model/i;

    invoke-direct {v7}, Lcom/miui/antivirus/model/i;-><init>()V

    sget-object v8, Lo2/b$c;->a:Lo2/b$c;

    invoke-virtual {v7, v8}, Lcom/miui/antivirus/model/i;->o(Lo2/b$c;)V

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/miui/antivirus/model/i;->m(Ljava/lang/String;)V

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v8}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/antivirus/model/i;->k(Ljava/lang/String;)V

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/miui/antivirus/model/i;->r(Ljava/lang/String;)V

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "getRunningAppPaths NameNotFoundException"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "getRunningAppPaths end"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private synthetic i(I)V
    .locals 3

    const-string v0, "SystemCheckManager"

    const-string v1, "SystemCheckManager cancel run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/m;->c:Lo4/a;

    new-instance v1, Lcom/miui/securityscan/scanner/m$d;

    invoke-direct {v1, p1}, Lcom/miui/securityscan/scanner/m$d;-><init>(I)V

    const-string p1, "com.miui.guardprovider.action.antivirusservice"

    const-string v2, "com.miui.guardprovider"

    invoke-virtual {v0, p1, v2, v1}, Lo4/a;->d(Ljava/lang/String;Ljava/lang/String;Lo4/a$a;)Z

    return-void
.end method

.method private synthetic j(Ljava/util/Map;Lrf/e;ZZLjava/lang/String;I)V
    .locals 11

    move-object v0, p0

    const-string v1, "SystemCheckManager"

    const-string v2, "SystemCheckManager startScan run()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/miui/securityscan/scanner/m;->c:Lo4/a;

    if-nez p1, :cond_0

    new-instance v9, Lcom/miui/securityscan/scanner/m$c;

    iget-object v3, v0, Lcom/miui/securityscan/scanner/m;->a:Landroid/content/Context;

    move-object v2, v9

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/miui/securityscan/scanner/m$c;-><init>(Landroid/content/Context;Lrf/e;ZZLjava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance v10, Lcom/miui/securityscan/scanner/m$c;

    iget-object v3, v0, Lcom/miui/securityscan/scanner/m;->a:Landroid/content/Context;

    move-object v2, v10

    move v4, p3

    move-object v5, p2

    move-object v6, p1

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/miui/securityscan/scanner/m$c;-><init>(Landroid/content/Context;ZLrf/e;Ljava/util/Map;ZLjava/lang/String;I)V

    move-object v9, v10

    :goto_0
    const-string v2, "com.miui.guardprovider.action.antivirusservice"

    const-string v3, "com.miui.guardprovider"

    invoke-virtual {v1, v2, v3, v9}, Lo4/a;->d(Ljava/lang/String;Ljava/lang/String;Lo4/a$a;)Z

    return-void
.end method


# virtual methods
.method public e(I)V
    .locals 1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SystemCheckManager"

    const-string v0, "SystemCheckManager return because network not allowed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lzf/j;

    invoke-direct {v0, p0, p1}, Lzf/j;-><init>(Lcom/miui/securityscan/scanner/m;I)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(Ljava/util/List;Lcom/miui/securityscan/scanner/k$k;Lrf/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/GroupModel;",
            ">;",
            "Lcom/miui/securityscan/scanner/k$k;",
            "Lrf/d;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/miui/securityscan/scanner/m$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/securityscan/scanner/m$b;-><init>(Lcom/miui/securityscan/scanner/m;Ljava/util/List;Lcom/miui/securityscan/scanner/k$k;Lrf/d;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l(ZLrf/e;Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Lo2/h;->w()Z

    move-result v3

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/securityscan/scanner/m;->m(ZLrf/e;ZLjava/lang/String;I)V

    return-void
.end method

.method public m(ZLrf/e;ZLjava/lang/String;I)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/securityscan/scanner/m;->n(ZLrf/e;ZLjava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method public n(ZLrf/e;ZLjava/util/Map;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lrf/e;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/antivirus/model/i;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "SystemCheckManager"

    const-string p2, "SystemCheckManager return because network not allowed"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v8, Lzf/i;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move v4, p1

    move v5, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lzf/i;-><init>(Lcom/miui/securityscan/scanner/m;Ljava/util/Map;Lrf/e;ZZLjava/lang/String;I)V

    invoke-static {v8}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public o(Lrf/e;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/scanner/m$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/scanner/m$a;-><init>(Lcom/miui/securityscan/scanner/m;Lrf/e;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
