.class public Lxa/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxa/b$f;,
        Lxa/b$e;,
        Lxa/b$c;,
        Lxa/b$d;
    }
.end annotation


# static fields
.field private static c:Lxa/b;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lxa/b;)J
    .locals 4

    iget-wide v0, p0, Lxa/b;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lxa/b;->b:J

    return-wide v0
.end method

.method static synthetic b(Lxa/b;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lxa/b;->e(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c([Ljava/io/File;Ljava/util/LinkedList;Lxa/b$d;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/util/LinkedList<",
            "Ljava/io/File;",
            ">;",
            "Lxa/b$d;",
            ")J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_5

    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p3, v4}, Lxa/b$d;->b(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Lxa/b$d;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-wide v0
.end method

.method private e(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    if-gt v0, p2, :cond_1

    goto :goto_0

    :cond_1
    aget-object v1, p1, p2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static f()Lxa/b;
    .locals 1

    sget-object v0, Lxa/b;->c:Lxa/b;

    if-nez v0, :cond_0

    new-instance v0, Lxa/b;

    invoke-direct {v0}, Lxa/b;-><init>()V

    sput-object v0, Lxa/b;->c:Lxa/b;

    :cond_0
    sget-object v0, Lxa/b;->c:Lxa/b;

    return-object v0
.end method

.method private g(Ljava/io/File;Ljava/util/List;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    iget-wide v0, p0, Lxa/b;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lxa/b;->b:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    return-wide p1

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v3, v2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lxa/b$b;

    invoke-direct {v1, p0, p2, p1}, Lxa/b$b;-><init>(Lxa/b;Ljava/util/List;Ljava/io/File;)V

    invoke-direct {p0, v2, v0, v1}, Lxa/b;->c([Ljava/io/File;Ljava/util/LinkedList;Lxa/b$d;)J

    move-result-wide p1

    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lxa/b;->c([Ljava/io/File;Ljava/util/LinkedList;Lxa/b$d;)J

    move-result-wide v2

    add-long/2addr p1, v2

    goto :goto_0

    :cond_3
    return-wide p1

    :cond_4
    :goto_1
    return-wide v0
.end method

.method private h(Ljava/lang/String;Ljava/util/Set;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Lxa/b$a;

    invoke-direct {v1, p0, p2}, Lxa/b$a;-><init>(Lxa/b;Ljava/util/Set;)V

    invoke-direct {p0, p1, v0, v1}, Lxa/b;->c([Ljava/io/File;Ljava/util/LinkedList;Lxa/b$d;)J

    move-result-wide p1

    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lxa/b;->c([Ljava/io/File;Ljava/util/LinkedList;Lxa/b$d;)J

    move-result-wide v2

    add-long/2addr p1, v2

    goto :goto_0

    :cond_2
    return-wide p1

    :cond_3
    :goto_1
    const-wide/16 p1, 0x0

    return-wide p1

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public d(Ljava/util/Set;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lra/e;->b()Lra/e;

    move-result-object v0

    invoke-virtual {v0}, Lra/e;->e()Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lra/e;->g(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lra/e;->a()V

    return-object v1
.end method

.method public i(Lcom/google/common/collect/ImmutableMap;Ljava/util/Set;Lxa/b$f;)V
    .locals 16
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lxa/b$f;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v7, 0x0

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Lxa/b$c;->b()V

    iput-wide v7, v0, Lxa/b;->a:J

    :cond_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "RecordHelper"

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    move-object/from16 v11, p1

    invoke-virtual {v11, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , pkgPaths : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lx4/q0;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v4, v7

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v12, p2

    invoke-direct {v0, v6, v12}, Lxa/b;->h(Ljava/lang/String;Ljava/util/Set;)J

    move-result-wide v13

    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-long/2addr v4, v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , pathSize : "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "  , path : "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lx4/q0;->h(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v7, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v12, p2

    if-eqz p3, :cond_4

    const-wide/16 v6, 0x0

    move-object/from16 v1, p3

    move-object v2, v3

    move-wide v3, v4

    move-wide v5, v6

    invoke-interface/range {v1 .. v6}, Lxa/b$f;->d(Ljava/lang/String;JJ)V

    :cond_4
    const-wide/16 v7, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v12, p2

    goto/16 :goto_0

    :cond_6
    if-eqz p3, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rule fileSize = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lxa/b;->a:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {p3 .. p3}, Lxa/b$c;->e()V

    :cond_7
    return-void
.end method

.method public j(Lxa/b$e;)V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListTask START..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lxa/b;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-interface {p1}, Lxa/b$e;->c()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lxa/b;->g(Ljava/io/File;Ljava/util/List;)J

    move-result-wide v4

    invoke-interface {p1}, Lxa/b$e;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0, v4, v5}, Lxa/b$e;->a(Ljava/util/List;J)V

    const-string p1, "ListTask END..."

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "publicFIleCount \uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lxa/b;->b:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",time = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
