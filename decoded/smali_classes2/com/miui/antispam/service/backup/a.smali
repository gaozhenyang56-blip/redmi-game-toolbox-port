.class public Lcom/miui/antispam/service/backup/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field protected b:Landroid/content/ContentResolver;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/a;->b:Landroid/content/ContentResolver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/a;->c:Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->c:Ljava/util/HashMap;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/a;->d:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->d:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/a;->e:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->e:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/a;->f:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->f:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->c:Ljava/util/HashMap;

    sget-object v2, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "number"

    const-string v9, "sim_id"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/String;

    const-string v0, "1"

    const/4 v10, 0x0

    aput-object v0, v5, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const-string v4, "type = ? AND sync_dirty <> ? "

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/antispam/service/backup/a;->p(Ljava/util/HashMap;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->d:Ljava/util/HashMap;

    sget-object v2, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/String;

    const-string v0, "2"

    aput-object v0, v5, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const-string v4, "type = ? AND sync_dirty <> ? "

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/antispam/service/backup/a;->p(Ljava/util/HashMap;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->e:Ljava/util/HashMap;

    invoke-direct {p0, v0, v6}, Lcom/miui/antispam/service/backup/a;->o(Ljava/util/HashMap;I)V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->f:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/miui/antispam/service/backup/a;->o(Ljava/util/HashMap;I)V

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/a;->q()V

    return-void
.end method

.method private e(ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->c:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private o(Ljava/util/HashMap;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    const-string v0, "sim_id"

    const-string v1, "data"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/miui/antispam/service/backup/a;->b:Landroid/content/ContentResolver;

    sget-object v4, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "type=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private p(Ljava/util/HashMap;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->b:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    aget-object p2, p3, p2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    aget-object p4, p3, p4

    invoke-interface {v0, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {v0, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/HashSet;

    invoke-virtual {p4, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private q()V
    .locals 41

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    const-string v2, "stranger_sms_mode"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    iget-object v5, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    const-string v6, "stranger_call_mode"

    invoke-static {v5, v6, v3, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v5

    iget-object v7, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    const-string v8, "contact_sms_mode"

    invoke-static {v7, v8, v3, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v7

    iget-object v9, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    const-string v10, "contact_call_mode"

    invoke-static {v9, v10, v3, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v9

    iget-object v11, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    const-string v12, "service_sms_mode"

    invoke-static {v11, v12, v3, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v11

    iget-object v13, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    const-string v14, "empty_call_mode"

    invoke-static {v13, v14, v3, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v13

    iget-object v15, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    move/from16 v16, v13

    const-string v13, "oversea_call_mode"

    invoke-static {v15, v13, v3, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v15

    iget-object v3, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    move/from16 v18, v15

    const-string v15, "mms_mode"

    move/from16 v19, v11

    const/4 v11, 0x2

    move/from16 v20, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v21, v9

    const/4 v9, 0x1

    invoke-static {v3, v15, v9, v11}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v3

    invoke-static {v9}, Le2/b;->g(I)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    invoke-static {v9}, Le2/b;->k(I)Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    iget-object v11, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v11, v9}, Le2/b;->i(Landroid/content/Context;I)Z

    move-result v11

    xor-int/2addr v11, v9

    move/from16 v24, v11

    iget-object v11, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v11, v9}, Le2/b;->f(Landroid/content/Context;I)Z

    move-result v11

    xor-int/2addr v11, v9

    move/from16 v25, v11

    iget-object v11, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v11, v9}, Le2/b;->m(Landroid/content/Context;I)Z

    move-result v11

    xor-int/2addr v11, v9

    move/from16 v26, v11

    iget-object v11, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v11, v9}, Le2/b;->j(Landroid/content/Context;I)Z

    move-result v11

    xor-int/2addr v11, v9

    move/from16 v27, v11

    iget-object v11, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    move/from16 v28, v3

    const/4 v3, 0x2

    invoke-static {v11, v2, v3, v9}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v11

    move/from16 v23, v11

    iget-object v11, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v11, v6, v3, v9}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v11

    move/from16 v29, v11

    iget-object v11, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v11, v8, v3, v9}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v11

    move/from16 v30, v11

    iget-object v11, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v11, v10, v3, v9}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v11

    move/from16 v31, v11

    iget-object v11, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v11, v12, v3, v9}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v11

    move/from16 v32, v11

    iget-object v11, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v11, v14, v3, v9}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v11

    move/from16 v33, v11

    iget-object v11, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v11, v13, v3, v9}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v11

    iget-object v9, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v9, v15, v3, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v9

    invoke-static {v3}, Le2/b;->g(I)Z

    move-result v35

    const/16 v34, 0x1

    xor-int/lit8 v35, v35, 0x1

    invoke-static {v3}, Le2/b;->k(I)Z

    move-result v36

    xor-int/lit8 v36, v36, 0x1

    move/from16 v37, v9

    iget-object v9, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v9, v3}, Le2/b;->i(Landroid/content/Context;I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    move/from16 v38, v9

    iget-object v9, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v9, v3}, Le2/b;->f(Landroid/content/Context;I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    move/from16 v39, v9

    iget-object v9, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v9, v3}, Le2/b;->m(Landroid/content/Context;I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    move/from16 v40, v9

    iget-object v9, v0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v9, v3}, Le2/b;->j(Landroid/content/Context;I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iget-object v9, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "is_call_transfer_blocked"

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v9, "is_repeated_marked_number_permit"

    invoke-virtual {v1, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move/from16 v16, v3

    const-string v3, "fraud_num_state"

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v17, v3

    const-string v3, "agent_num_state"

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v18, v3

    const-string v3, "sell_num_state"

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "harass_num_state"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    move-object/from16 v4, v21

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    move-object/from16 v19, v5

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v5, v17

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v5, v18

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v19

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/antispam/service/backup/e;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/e;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/e;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/e;->w()I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/e;->v()I

    move-result p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/antispam/service/backup/a;->e(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "number"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notes"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "sim_id"

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "type"

    const-string v0, "1"

    invoke-virtual {v3, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antispam/service/backup/a;->b:Landroid/content/ContentResolver;

    sget-object v0, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/miui/antispam/service/backup/f;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/f;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/f;->q()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/f;->r()I

    move-result p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    iget-object v4, p0, Lcom/miui/antispam/service/backup/a;->e:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    const/4 v4, 0x4

    if-ne v4, p1, :cond_2

    iget-object v4, p0, Lcom/miui/antispam/service/backup/a;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sim_id"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "type"

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/miui/antispam/service/backup/a;->b:Landroid/content/ContentResolver;

    sget-object v0, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return v2
.end method

.method public c(Lcom/miui/antispam/service/backup/h;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/h;->n()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/h;->o()I

    move-result p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    return v3

    :cond_1
    const-string v2, "stranger_sms_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_e

    const-string v2, "stranger_call_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "contact_sms_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "contact_call_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "service_sms_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "empty_call_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "oversea_call_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "mms_mode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v2, "is_call_transfer_blocked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v0, v3}, Le2/b;->t(IZ)V

    goto :goto_1

    :cond_4
    const-string v2, "is_repeated_marked_number_permit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez p1, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v0, v3}, Le2/b;->x(IZ)V

    goto :goto_1

    :cond_6
    const-string v2, "fraud_num_state"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    if-nez p1, :cond_7

    move v3, v4

    :cond_7
    invoke-static {v1, v0, v3}, Le2/b;->v(Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_8
    const-string v2, "agent_num_state"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    if-nez p1, :cond_9

    move v3, v4

    :cond_9
    invoke-static {v1, v0, v3}, Le2/b;->q(Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_a
    const-string v2, "sell_num_state"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    if-nez p1, :cond_b

    move v3, v4

    :cond_b
    invoke-static {v1, v0, v3}, Le2/b;->z(Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_c
    const-string v2, "harass_num_state"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    if-nez p1, :cond_d

    move v3, v4

    :cond_d
    invoke-static {v1, v0, v3}, Le2/b;->w(Landroid/content/Context;IZ)V

    goto :goto_1

    :cond_e
    :goto_0
    iget-object v2, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v2, v1, v0, p1}, Le2/b;->r(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_f
    :goto_1
    return v4
.end method

.method public d(Lcom/miui/antispam/service/backup/l;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/l;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/l;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/l;->y()I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/l;->x()I

    move-result p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-static {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getDialableNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/antispam/service/backup/a;->e(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "number"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "notes"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "sim_id"

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "type"

    const-string v0, "2"

    invoke-virtual {v3, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/antispam/service/backup/a;->b:Landroid/content/ContentResolver;

    sget-object v0, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 p1, 0x1

    return p1
.end method

.method public f()Ljava/util/Vector;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/miui/antispam/service/backup/e;",
            ">;"
        }
    .end annotation

    const-string v0, "sim_id"

    const-string v1, "state"

    const-string v2, "notes"

    const-string v3, "number"

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/miui/antispam/service/backup/a;->b:Landroid/content/ContentResolver;

    sget-object v7, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "type = ? AND sync_dirty <> ? "

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "1"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {}, Lcom/miui/antispam/service/backup/e;->C()Lcom/miui/antispam/service/backup/e$b;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/miui/antispam/service/backup/e$b;->j(Ljava/lang/String;)Lcom/miui/antispam/service/backup/e$b;

    invoke-virtual {v10, v8}, Lcom/miui/antispam/service/backup/e$b;->l(I)Lcom/miui/antispam/service/backup/e$b;

    invoke-virtual {v10, v9}, Lcom/miui/antispam/service/backup/e$b;->k(I)Lcom/miui/antispam/service/backup/e$b;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v10, v7}, Lcom/miui/antispam/service/backup/e$b;->i(Ljava/lang/String;)Lcom/miui/antispam/service/backup/e$b;

    :cond_0
    invoke-virtual {v10}, Lcom/miui/antispam/service/backup/e$b;->b()Lcom/miui/antispam/service/backup/e;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-static {v5}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public g()Ljava/util/Vector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/miui/antispam/service/backup/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/miui/antispam/service/backup/a;->b:Landroid/content/ContentResolver;

    sget-object v3, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "type = ? OR type = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sim_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "type"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/miui/antispam/service/backup/f;->x()Lcom/miui/antispam/service/backup/f$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/miui/antispam/service/backup/f$b;->i(Ljava/lang/String;)Lcom/miui/antispam/service/backup/f$b;

    invoke-virtual {v5, v3}, Lcom/miui/antispam/service/backup/f$b;->j(I)Lcom/miui/antispam/service/backup/f$b;

    invoke-virtual {v5, v4}, Lcom/miui/antispam/service/backup/f$b;->k(I)Lcom/miui/antispam/service/backup/f$b;

    invoke-virtual {v5}, Lcom/miui/antispam/service/backup/f$b;->b()Lcom/miui/antispam/service/backup/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public h()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/miui/antispam/service/backup/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-static {}, Lcom/miui/antispam/service/backup/g;->s()Lcom/miui/antispam/service/backup/g$b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/antispam/service/backup/g$b;->i(I)Lcom/miui/antispam/service/backup/g$b;

    iget-object v4, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lm2/a;->d(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/antispam/service/backup/g$b;->j(I)Lcom/miui/antispam/service/backup/g$b;

    invoke-virtual {v2}, Lcom/miui/antispam/service/backup/g$b;->b()Lcom/miui/antispam/service/backup/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/antispam/service/backup/g;->s()Lcom/miui/antispam/service/backup/g$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/antispam/service/backup/g$b;->i(I)Lcom/miui/antispam/service/backup/g$b;

    iget-object v3, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v3, v1}, Lm2/a;->d(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/miui/antispam/service/backup/g$b;->j(I)Lcom/miui/antispam/service/backup/g$b;

    invoke-virtual {v2}, Lcom/miui/antispam/service/backup/g$b;->b()Lcom/miui/antispam/service/backup/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public i()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/miui/antispam/service/backup/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/miui/antispam/service/backup/h;->v()Lcom/miui/antispam/service/backup/h$b;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/miui/antispam/service/backup/h$b;->j(I)Lcom/miui/antispam/service/backup/h$b;

    invoke-virtual {v5, v4}, Lcom/miui/antispam/service/backup/h$b;->i(Ljava/lang/String;)Lcom/miui/antispam/service/backup/h$b;

    iget-object v6, p0, Lcom/miui/antispam/service/backup/a;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/miui/antispam/service/backup/h$b;->k(I)Lcom/miui/antispam/service/backup/h$b;

    invoke-virtual {v5}, Lcom/miui/antispam/service/backup/h$b;->b()Lcom/miui/antispam/service/backup/h;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public j()Ljava/util/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/miui/antispam/service/backup/k;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-static {}, Lcom/miui/antispam/service/backup/k;->s()Lcom/miui/antispam/service/backup/k$b;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/antispam/service/backup/k$b;->i(I)Lcom/miui/antispam/service/backup/k$b;

    iget-object v4, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v4, v3}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/antispam/service/backup/k$b;->j(Z)Lcom/miui/antispam/service/backup/k$b;

    invoke-virtual {v2}, Lcom/miui/antispam/service/backup/k$b;->b()Lcom/miui/antispam/service/backup/k;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/antispam/service/backup/k;->s()Lcom/miui/antispam/service/backup/k$b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/antispam/service/backup/k$b;->i(I)Lcom/miui/antispam/service/backup/k$b;

    iget-object v3, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v3, v1}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/miui/antispam/service/backup/k$b;->j(Z)Lcom/miui/antispam/service/backup/k$b;

    invoke-virtual {v2}, Lcom/miui/antispam/service/backup/k$b;->b()Lcom/miui/antispam/service/backup/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public k()Ljava/util/Vector;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/miui/antispam/service/backup/l;",
            ">;"
        }
    .end annotation

    const-string v0, "sim_id"

    const-string v1, "state"

    const-string v2, "notes"

    const-string v3, "number"

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/miui/antispam/service/backup/a;->b:Landroid/content/ContentResolver;

    sget-object v7, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v3, v2, v1, v0}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "type = ? AND sync_dirty <> ? "

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "2"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_1

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {}, Lcom/miui/antispam/service/backup/l;->F()Lcom/miui/antispam/service/backup/l$b;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/miui/antispam/service/backup/l$b;->k(Ljava/lang/String;)Lcom/miui/antispam/service/backup/l$b;

    invoke-virtual {v10, v8}, Lcom/miui/antispam/service/backup/l$b;->m(I)Lcom/miui/antispam/service/backup/l$b;

    invoke-virtual {v10, v9}, Lcom/miui/antispam/service/backup/l$b;->l(I)Lcom/miui/antispam/service/backup/l$b;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v10, v7}, Lcom/miui/antispam/service/backup/l$b;->j(Ljava/lang/String;)Lcom/miui/antispam/service/backup/l$b;

    :cond_0
    invoke-virtual {v10}, Lcom/miui/antispam/service/backup/l$b;->b()Lcom/miui/antispam/service/backup/l;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-static {v5}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public l()Lcom/miui/antispam/service/backup/d;
    .locals 2

    invoke-static {}, Lcom/miui/antispam/service/backup/d;->o()Lcom/miui/antispam/service/backup/d$b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lm2/a;->n(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/backup/d$b;->i(Z)Lcom/miui/antispam/service/backup/d$b;

    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/d$b;->b()Lcom/miui/antispam/service/backup/d;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/miui/antispam/service/backup/i;
    .locals 3

    invoke-static {}, Lcom/miui/antispam/service/backup/i;->w()Lcom/miui/antispam/service/backup/i$b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    const-string v2, "mark_guide_fraud"

    invoke-static {v1, v2}, Lm2/a;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/backup/i$b;->j(Z)Lcom/miui/antispam/service/backup/i$b;

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    const-string v2, "mark_guide_agent"

    invoke-static {v1, v2}, Lm2/a;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/backup/i$b;->i(Z)Lcom/miui/antispam/service/backup/i$b;

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    const-string v2, "mark_guide_sell"

    invoke-static {v1, v2}, Lm2/a;->m(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/backup/i$b;->k(Z)Lcom/miui/antispam/service/backup/i$b;

    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/i$b;->b()Lcom/miui/antispam/service/backup/i;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/miui/antispam/service/backup/j;
    .locals 2

    invoke-static {}, Lcom/miui/antispam/service/backup/j;->o()Lcom/miui/antispam/service/backup/j$b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lm2/a;->k(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/backup/j$b;->i(Z)Lcom/miui/antispam/service/backup/j$b;

    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/j$b;->b()Lcom/miui/antispam/service/backup/j;

    move-result-object v0

    return-object v0
.end method

.method public r(Lcom/miui/antispam/service/backup/d;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/d;->k()Z

    move-result p1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lm2/a;->A(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public s(Lcom/miui/antispam/service/backup/g;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/g;->m()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/g;->l()I

    move-result p1

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lm2/a;->z(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method

.method public t(Lcom/miui/antispam/service/backup/i;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/i;->l()Z

    move-result v1

    const-string v2, "mark_guide_fraud"

    invoke-static {v0, v2, v1}, Lm2/a;->x(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/i;->i()Z

    move-result v1

    const-string v2, "mark_guide_agent"

    invoke-static {v0, v2, v1}, Lm2/a;->x(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/i;->o()Z

    move-result p1

    const-string v1, "mark_guide_sell"

    invoke-static {v0, v1, p1}, Lm2/a;->x(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public u(Lcom/miui/antispam/service/backup/j;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/j;->k()Z

    move-result p1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lm2/a;->u(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public v(Lcom/miui/antispam/service/backup/k;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/k;->m()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/k;->l()I

    move-result p1

    iget-object v1, p0, Lcom/miui/antispam/service/backup/a;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lm2/a;->t(Landroid/content/Context;IZ)V

    :cond_0
    return-void
.end method
