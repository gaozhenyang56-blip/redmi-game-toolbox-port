.class public Lra/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lra/m;

.field private static final d:[Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_size"

    const-string v1, "_data"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lra/m;->d:[Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lra/m;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".doc"

    const-string v1, ".docx"

    const-string v2, ".pdf"

    const-string v3, ".txt"

    const-string v4, ".ppt"

    const-string v5, ".pptx"

    const-string v6, ".xls"

    const-string v7, ".xlsx"

    const-string v8, ".html"

    const-string v9, ".xml"

    const-string v10, ".rar"

    const-string v11, ".tar"

    const-string v12, ".gz"

    const-string v13, ".zip"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lra/m;->b:Ljava/util/List;

    iput-object p1, p0, Lra/m;->a:Landroid/content/Context;

    return-void
.end method

.method private d(Ljava/lang/StringBuilder;Ljava/util/HashSet;Ljava/util/Set;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/optimizecenter/storage/model/StorageSizeBean;"
        }
    .end annotation

    new-instance v0, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;-><init>(JJ)V

    sget-object v1, Lab/h;->a:Lab/h;

    iget-object v2, p0, Lra/m;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lab/h;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentResolver;

    :try_start_0
    const-string v5, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lra/m;->d:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lra/m;->h(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lra/m;->i(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;)J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getTotal()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->setTotal(J)V

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getWorkSize()J

    move-result-wide v7

    add-long/2addr v7, v5

    invoke-virtual {v0, v7, v8}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->setWorkSize(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v3, :cond_0

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "MediaDataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getFileTypeSize err:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1

    :cond_3
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lra/m;
    .locals 1

    sget-object v0, Lra/m;->c:Lra/m;

    if-nez v0, :cond_0

    new-instance v0, Lra/m;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lra/m;-><init>(Landroid/content/Context;)V

    sput-object v0, Lra/m;->c:Lra/m;

    :cond_0
    sget-object p0, Lra/m;->c:Lra/m;

    return-object p0
.end method

.method private g(Landroid/net/Uri;Ljava/util/Set;Ljava/util/Set;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/optimizecenter/storage/model/StorageSizeBean;"
        }
    .end annotation

    move-object v1, p0

    new-instance v2, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v3, v4}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;-><init>(JJ)V

    sget-object v0, Lab/h;->a:Lab/h;

    iget-object v3, v1, Lra/m;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lab/h;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " LIKE \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lra/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lra/m;->h(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v0, 0x0

    move-object v13, v0

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    :try_start_0
    sget-object v7, Lra/m;->d:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v0

    move-object v6, p1

    move-object v8, v4

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    :try_start_1
    invoke-direct {p0, v13, v5, v6}, Lra/m;->i(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;)J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getTotal()J

    move-result-wide v9

    add-long/2addr v9, v7

    invoke-virtual {v2, v9, v10}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->setTotal(J)V

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->getWorkSize()J

    move-result-wide v9

    add-long/2addr v9, v7

    invoke-virtual {v2, v9, v10}, Lcom/miui/optimizecenter/storage/model/StorageSizeBean;->setWorkSize(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    if-eqz v13, :cond_0

    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    :goto_2
    :try_start_2
    const-string v7, "MediaDataManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getImageSize1: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v13, :cond_0

    goto :goto_1

    :goto_3
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    return-object v2
.end method

.method private h(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private i(Landroid/database/Cursor;Ljava/util/Set;Ljava/util/Set;)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    const-string v2, "_size"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "_data"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v4}, Lra/m;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Media Type path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " skip: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MediaDataManager"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-long/2addr v0, v5

    invoke-interface {p3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-wide v0
.end method

.method private static k(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Ljava/util/HashSet;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/optimizecenter/storage/model/StorageSizeBean;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_data LIKE \'%.apk\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lxa/a;->d:Ljava/util/Set;

    invoke-direct {p0, v0, p1, v1}, Lra/m;->d(Ljava/lang/StringBuilder;Ljava/util/HashSet;Ljava/util/Set;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/HashSet;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/optimizecenter/storage/model/StorageSizeBean;"
        }
    .end annotation

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lxa/a;->b:Ljava/util/Set;

    invoke-direct {p0, v0, p1, v1}, Lra/m;->g(Landroid/net/Uri;Ljava/util/Set;Ljava/util/Set;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/HashSet;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/optimizecenter/storage/model/StorageSizeBean;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lra/m;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v2, "_data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LIKE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lra/m;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lra/m;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, " or "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lxa/a;->e:Ljava/util/Set;

    invoke-direct {p0, v0, p1, v1}, Lra/m;->d(Ljava/lang/StringBuilder;Ljava/util/HashSet;Ljava/util/Set;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/util/HashSet;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/optimizecenter/storage/model/StorageSizeBean;"
        }
    .end annotation

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lxa/a;->a:Ljava/util/Set;

    invoke-direct {p0, v0, p1, v1}, Lra/m;->g(Landroid/net/Uri;Ljava/util/Set;Ljava/util/Set;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/util/HashSet;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/optimizecenter/storage/model/StorageSizeBean;"
        }
    .end annotation

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lxa/a;->c:Ljava/util/Set;

    invoke-direct {p0, v0, p1, v1}, Lra/m;->g(Landroid/net/Uri;Ljava/util/Set;Ljava/util/Set;)Lcom/miui/optimizecenter/storage/model/StorageSizeBean;

    move-result-object p1

    return-object p1
.end method
