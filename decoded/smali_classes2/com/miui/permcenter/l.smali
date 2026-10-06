.class public Lcom/miui/permcenter/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/permcenter/l;->a:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x272c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/permcenter/l;->a:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x272d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/permcenter/l;->a:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x272e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/permcenter/l;->a:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x272f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/permcenter/l;->a:Ljava/util/Map;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2730

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/HashMap;J)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;J)I"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    const/4 p0, 0x3

    if-ne v0, p0, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x6

    if-ne v0, p0, :cond_2

    return p0

    :cond_2
    const-wide v1, 0x4000000000L

    cmp-long p1, p1, v1

    const/4 p2, 0x2

    if-nez p1, :cond_3

    if-ne v0, p2, :cond_3

    return p0

    :cond_3
    if-ne v0, p2, :cond_4

    return p2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Ljava/util/ArrayList;Ljava/util/HashMap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/miui/permission/PermissionManager;->virtualMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/miui/permcenter/l;->c(Ljava/util/HashMap;)I

    move-result p0

    return p0
.end method

.method public static c(Ljava/util/HashMap;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v6, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    if-ne v8, v5, :cond_3

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide v9, 0x4000000000L

    cmp-long v4, v4, v9

    if-nez v4, :cond_4

    if-ne v8, v7, :cond_4

    goto :goto_1

    :cond_4
    if-ne v8, v7, :cond_1

    move v3, v0

    goto :goto_0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    return v6

    :cond_6
    if-eqz v2, :cond_7

    return v5

    :cond_7
    if-eqz v3, :cond_8

    return v7

    :cond_8
    :goto_3
    return v0
.end method

.method public static d(Ljava/util/ArrayList;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 8

    const-class v0, Ljava/lang/String;

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-le v1, v2, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/miui/permcenter/l;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const-string v1, "android.permission.PermissionManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "checkPackageNamePermission"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v0, v5, v7

    const/4 v0, 0x2

    aput-object v2, v5, v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, v0

    invoke-static {v1, v2, v3, v5, v4}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p3

    const-string v0, "PermissionUtils"

    const-string v1, "checkPackageNamePermission Exception"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7

    const-class v0, Ljava/lang/String;

    const-string v1, "permission"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v6, 0x3

    aput-object v1, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    const-string p1, "checkPackageNamePermission"

    invoke-static {p0, v1, p1, v3, v2}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static g(Landroid/content/Context;ILjava/lang/String;J)I
    .locals 33

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/4 v11, 0x0

    :try_start_0
    const-string v12, "suggestAccept"

    const-string v13, "suggestForeground"

    const-string v14, "suggestPrompt"

    const-string v15, "suggestReject"

    const-string v16, "userAccept"

    const-string v17, "userForeground"

    const-string v18, "userPrompt"

    const-string v19, "userReject"

    filled-new-array/range {v12 .. v19}, [Ljava/lang/String;

    move-result-object v3

    sget-boolean v2, Lcom/miui/permcenter/o;->w:Z

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v4, "pkgName =? AND userId = ?"

    new-array v5, v12, [Ljava/lang/String;

    aput-object p2, v5, v14

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v13

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v4, "pkgName =?"

    new-array v5, v13, [Ljava/lang/String;

    aput-object p2, v5, v14

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    move-object v11, v1

    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    move-wide/from16 v15, p3

    invoke-static/range {v15 .. v32}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJ)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v11}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v0

    :cond_2
    invoke-static {v11}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v14

    :cond_3
    :goto_1
    invoke-static {v11}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v14

    :catchall_0
    move-exception v0

    invoke-static {v11}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static h(Landroid/content/Context;ILjava/lang/String;)Ljava/util/HashMap;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/16 v11, 0x8

    const/16 v12, 0x9

    :try_start_0
    const-string v14, "permMask"

    const-string v15, "suggestAccept"

    const-string v16, "suggestForeground"

    const-string v17, "suggestPrompt"

    const-string v18, "suggestReject"

    const-string v19, "suggestBlock"

    const-string v20, "userAccept"

    const-string v21, "userForeground"

    const-string v22, "userPrompt"

    const-string v23, "userReject"

    filled-new-array/range {v14 .. v23}, [Ljava/lang/String;

    move-result-object v3

    sget-boolean v2, Lcom/miui/permcenter/o;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v2, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v4, "pkgName =? AND userId =?"

    new-array v5, v14, [Ljava/lang/String;

    aput-object p2, v5, v6

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v15

    const/16 v16, 0x0

    move v13, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v13, 0x0

    goto :goto_2

    :cond_0
    move v13, v6

    :try_start_2
    sget-object v2, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v4, "pkgName =?"

    new-array v5, v15, [Ljava/lang/String;

    aput-object p2, v5, v13

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v18

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-virtual/range {v18 .. v38}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJJ)Ljava/util/HashMap;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :cond_2
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    const/4 v2, 0x0

    return-object v2

    :catchall_1
    move-exception v0

    move-object v13, v1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x0

    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v2

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    move-object v13, v2

    :goto_2
    invoke-static {v13}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static i(Landroid/content/Context;ILjava/lang/String;)Ljava/util/HashMap;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/16 v11, 0x8

    const/16 v12, 0x9

    :try_start_0
    const-string v14, "permMask"

    const-string v15, "suggestAccept"

    const-string v16, "suggestForeground"

    const-string v17, "suggestPrompt"

    const-string v18, "suggestReject"

    const-string v19, "suggestBlock"

    const-string v20, "userAccept"

    const-string v21, "userForeground"

    const-string v22, "userPrompt"

    const-string v23, "userReject"

    filled-new-array/range {v14 .. v23}, [Ljava/lang/String;

    move-result-object v3

    sget-boolean v2, Lcom/miui/permcenter/o;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v2, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v4, "pkgName =? AND userId =?"

    new-array v5, v14, [Ljava/lang/String;

    aput-object p2, v5, v6

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v5, v15

    const/16 v16, 0x0

    move v13, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v13, 0x0

    goto :goto_2

    :cond_0
    move v13, v6

    :try_start_2
    sget-object v2, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v4, "pkgName =?"

    new-array v5, v15, [Ljava/lang/String;

    aput-object p2, v5, v13

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v18

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-virtual/range {v18 .. v38}, Lcom/miui/permission/PermissionManager;->calculatePermissionActionWithReal(JJJJJJJJJJ)Ljava/util/HashMap;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v0

    :cond_2
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    const/4 v2, 0x0

    return-object v2

    :catchall_1
    move-exception v0

    move-object v13, v1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x0

    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v2

    :catchall_2
    move-exception v0

    const/4 v2, 0x0

    move-object v13, v2

    :goto_2
    invoke-static {v13}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static j(Landroid/content/Context;IJLjava/lang/String;)Lcom/miui/permcenter/AppPermissionInfo;
    .locals 32

    move-object/from16 v1, p4

    sget-boolean v0, Lcom/miui/permcenter/o;->w:Z

    if-eqz v0, :cond_0

    const-string v2, "pkgName"

    const-string v3, "suggestAccept"

    const-string v4, "suggestForeground"

    const-string v5, "suggestPrompt"

    const-string v6, "suggestReject"

    const-string v7, "userAccept"

    const-string v8, "userForeground"

    const-string v9, "userPrompt"

    const-string v10, "userReject"

    const-string v11, "userId"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v3, "pkgName"

    const-string v4, "suggestAccept"

    const-string v5, "suggestForeground"

    const-string v6, "suggestPrompt"

    const-string v7, "suggestReject"

    const-string v8, "userAccept"

    const-string v9, "userForeground"

    const-string v10, "userPrompt"

    const-string v11, "userReject"

    filled-new-array/range {v3 .. v11}, [Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v5, v2

    const/4 v2, 0x0

    :try_start_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v6, "permMask& ? != 0 and +present!= 0 and suggestBlock & ? == 0 and pkgName == ? and userId =?"

    new-array v7, v9, [Ljava/lang/String;

    aput-object v3, v7, v13

    aput-object v3, v7, v12

    aput-object v1, v7, v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v10

    const/4 v8, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v6, "permMask& ? != 0 and +present!= 0 and suggestBlock & ? == 0 and pkgName == ?"

    new-array v7, v10, [Ljava/lang/String;

    aput-object v3, v7, v13

    aput-object v3, v7, v12

    aput-object v1, v7, v11

    const/4 v8, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    move-object v3, v0

    if-eqz v3, :cond_4

    move-object v4, v2

    :goto_2
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v1}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_3
    const-string v0, "PermissionUtils"

    const-string v7, "fail getAppInfo"

    invoke-static {v0, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    :goto_3
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v14, p2

    invoke-static/range {v14 .. v31}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJ)I

    move-result v4

    new-instance v6, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {v6}, Lcom/miui/permcenter/AppPermissionInfo;-><init>()V

    invoke-virtual {v6, v5}, Lcom/miui/permcenter/AppPermissionInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Lcom/miui/permcenter/AppPermissionInfo;->setSystem(Z)V

    invoke-virtual {v0}, Li4/b;->c()I

    move-result v5

    move/from16 v7, p1

    invoke-static {v7, v5}, Lx4/z1;->j(II)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/miui/permcenter/AppPermissionInfo;->setUid(I)V

    invoke-virtual {v0}, Li4/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/miui/permcenter/AppPermissionInfo;->setLabel(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v0}, Lcom/miui/permcenter/AppPermissionInfo;->setPermissionToAction(Ljava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v6

    goto :goto_2

    :cond_3
    move-object v2, v4

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :cond_4
    :goto_4
    invoke-static {v3}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v2

    :catchall_1
    move-exception v0

    :goto_5
    invoke-static {v2}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const-class v0, Landroid/app/admin/DevicePolicyManager;

    :try_start_0
    const-string v1, "getDeviceOwner"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.app.AppOpsManagerInjector"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isAutoStartRestriction"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-static {v1, v2, v4, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "PermissionUtils"

    const-string v2, "reflect opToDefaultMode exception!"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public static m(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)Z
    .locals 3

    invoke-static {}, Lmc/c;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/permcenter/l;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/permission/AutoStartUtil;->HIDDEN_AUTOSTART_APPS:Ljava/util/List;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/l;->n(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/n;->n(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    sget-object p0, Lcom/miui/permission/AutoStartUtil;->HIDDEN_AUTOSTART_APPS:Ljava/util/List;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static n(Landroid/content/Context;Landroid/content/pm/PackageInfo;Z)Z
    .locals 7

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/permcenter/compact/EnterpriseCompat;->shouldGrantPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission edit for package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is restricted"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Enterprise"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {p0, p1}, Lcom/miui/permission/RequiredPermissionsUtil;->isAdaptedRequiredPermissions(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Lx4/z1;->b(I)I

    move-result v4

    const/16 v6, 0x2710

    if-ge v4, v6, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-static {p0, p1}, Lcom/miui/permission/RequiredPermissionsUtil;->isAdaptedRequiredPermissionsOnData(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result p0

    if-nez v0, :cond_5

    if-nez v3, :cond_3

    if-nez v5, :cond_5

    if-nez v4, :cond_5

    :cond_3
    if-nez v5, :cond_4

    if-nez p0, :cond_4

    if-eqz v4, :cond_6

    :cond_4
    if-nez p2, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1
.end method

.method public static o(Landroid/content/Context;ILjava/lang/String;J)Z
    .locals 34

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v7, 0x1

    :try_start_0
    invoke-static/range {p1 .. p1}, Lx4/z1;->m(I)I

    move-result v0

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v11, 0x6

    const/4 v12, 0x7

    const/16 v13, 0x8

    const-string v15, "permMask"

    const-string v16, "suggestAccept"

    const-string v17, "suggestForeground"

    const-string v18, "suggestPrompt"

    const-string v19, "suggestReject"

    const-string v20, "suggestBlock"

    const-string v21, "userAccept"

    const-string v22, "userForeground"

    const-string v23, "userPrompt"

    const-string v24, "userReject"

    filled-new-array/range {v15 .. v24}, [Ljava/lang/String;

    move-result-object v3

    sget-boolean v2, Lcom/miui/permcenter/o;->w:Z

    const/4 v15, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v4, "pkgName =? AND userId =?"

    new-array v5, v15, [Ljava/lang/String;

    aput-object p2, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v7

    const/4 v0, 0x0

    move v14, v6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_0
    move v14, v6

    sget-object v2, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v4, "pkgName =?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p2, v5, v14

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-wide/from16 v16, p3

    move-wide/from16 v32, v0

    invoke-static/range {v16 .. v33}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJ)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v2, :cond_2

    and-long v0, v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v7, v14

    :cond_3
    :goto_1
    return v7

    :catch_0
    move-exception v0

    const-string v1, "PermissionUtils"

    const-string v2, "isUserAction: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method

.method public static p(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v0

    invoke-virtual {v0}, Li4/a;->j()Ljava/util/List;

    move-result-object v0

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v13, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v3, v13

    if-nez v3, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    const/4 v14, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x6

    const/4 v9, 0x7

    const-string v16, "pkgName"

    const-string v17, "suggestAccept"

    const-string v18, "suggestForeground"

    const-string v19, "suggestPrompt"

    const-string v20, "suggestReject"

    const-string v21, "userAccept"

    const-string v22, "userForeground"

    const-string v23, "userPrompt"

    const-string v24, "userReject"

    filled-new-array/range {v16 .. v24}, [Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/miui/permission/PermissionContract$Active;->URI:Landroid/net/Uri;

    const-string v5, "permMask& ? != 0 and +present!= 0 and suggestBlock & ? == 0 "

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v8, v10

    aput-object v1, v8, v13

    const/16 v18, 0x0

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    move-object v5, v8

    move v8, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v5, :cond_6

    :goto_1
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    const/16 v4, 0x8

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    and-long v1, v26, p1

    const-wide/16 v16, 0x0

    cmp-long v1, v1, v16

    if-nez v1, :cond_3

    and-long v1, v30, p1

    cmp-long v1, v1, v16

    if-nez v1, :cond_3

    and-long v1, v32, p1

    cmp-long v1, v1, v16

    if-eqz v1, :cond_4

    :cond_3
    and-long v1, v18, p1

    cmp-long v1, v1, v16

    if-nez v1, :cond_4

    move-wide/from16 v1, p1

    move-object v0, v3

    move/from16 v16, v4

    move-wide/from16 v3, v18

    move-object/from16 v34, v0

    move-object/from16 v19, v5

    move-object v0, v6

    move-wide/from16 v5, v20

    move-object/from16 v35, v7

    move/from16 v20, v8

    move-wide/from16 v7, v22

    move/from16 v21, v9

    move/from16 v23, v10

    move/from16 v22, v16

    move-wide/from16 v9, v24

    move/from16 v24, v11

    move/from16 v25, v12

    move-wide/from16 v11, v26

    move/from16 v27, v13

    move/from16 v26, v14

    move-wide/from16 v13, v28

    move-object/from16 v28, v15

    move-wide/from16 v15, v30

    move-wide/from16 v17, v32

    :try_start_2
    invoke-static/range {v1 .. v18}, Lcom/miui/permission/PermissionManager;->calculatePermissionAction(JJJJJJJJJ)I

    move-result v1

    new-instance v2, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-direct {v2}, Lcom/miui/permcenter/AppPermissionInfo;-><init>()V

    invoke-virtual {v2, v0}, Lcom/miui/permcenter/AppPermissionInfo;->setPackageName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v3, v34

    invoke-static {v0, v3}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/permcenter/AppPermissionInfo;->setLabel(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/miui/permcenter/AppPermissionInfo;->setPermissionToAction(Ljava/util/HashMap;)V

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v2, v1}, Lcom/miui/permcenter/AppPermissionInfo;->setTargetSdkVersion(I)V

    iget v1, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1}, Lcom/miui/permcenter/AppPermissionInfo;->setUid(I)V

    move-object/from16 v1, v35

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    move/from16 v22, v4

    move-object/from16 v19, v5

    move-object v1, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v27, v13

    move/from16 v26, v14

    move-object/from16 v28, v15

    :goto_2
    move-object v7, v1

    move-object/from16 v5, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v14, v26

    move/from16 v13, v27

    move-object/from16 v15, v28

    const/4 v0, 0x3

    goto/16 :goto_1

    :cond_5
    move-object/from16 v19, v5

    move-object v1, v7

    new-instance v0, Lcom/miui/permcenter/b;

    invoke-direct {v0}, Lcom/miui/permcenter/b;-><init>()V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v19, v5

    :goto_3
    move-object/from16 v8, v19

    goto :goto_5

    :cond_6
    move-object/from16 v19, v5

    move-object v1, v7

    :goto_4
    invoke-static/range {v19 .. v19}, Lbl/e;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_2
    move-exception v0

    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;IJZILxc/f;Z)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v14, p2

    move-wide/from16 v4, p3

    move/from16 v15, p6

    move-object/from16 v1, p7

    const-string v13, "PermissionUtils"

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v12, 0x1

    if-eqz p8, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v0

    const/4 v7, 0x2

    new-array v8, v12, [Ljava/lang/String;

    aput-object v6, v8, v3

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move/from16 v4, p6

    move v5, v7

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lcom/miui/permcenter/compact/PermissionManagerCompat;->setApplicationPermissionWithVirtual(Lcom/miui/permission/PermissionManager;IJII[Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v7

    const/16 v16, 0x2

    new-array v11, v12, [Ljava/lang/String;

    aput-object v6, v11, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-wide/from16 v8, p3

    move/from16 v10, p6

    move-object/from16 v17, v11

    move/from16 v11, p2

    move v3, v12

    move/from16 v12, v16

    move-object/from16 v19, v13

    move-object/from16 v13, v17

    :try_start_1
    invoke-virtual/range {v7 .. v13}, Lcom/miui/permission/PermissionManager;->setApplicationPermission(JIII[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v7, 0x20

    cmp-long v7, v4, v7

    const-string v8, "activity"

    if-nez v7, :cond_1

    if-ne v3, v15, :cond_1

    :try_start_2
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0x17

    if-ge v2, v9, :cond_1

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-static {v2, v6, v14}, Lcom/miui/appmanager/AppManageUtils;->m(Landroid/app/ActivityManager;Ljava/lang/String;I)V

    :cond_1
    const-wide/high16 v9, 0x800000000000000L

    cmp-long v2, v4, v9

    if-nez v2, :cond_2

    if-eqz p5, :cond_2

    if-ne v3, v15, :cond_2

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-static {v2, v6, v14}, Lcom/miui/appmanager/AppManageUtils;->m(Landroid/app/ActivityManager;Ljava/lang/String;I)V

    :cond_2
    sget-boolean v2, Lcom/miui/permcenter/o;->p:Z

    if-nez v2, :cond_e

    if-eqz v1, :cond_e

    invoke-interface {v1, v4, v5}, Lxc/f;->a(J)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/AppOpsManager;

    const/4 v10, 0x0

    invoke-static {v6, v10, v14}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v12, Lcom/miui/permission/RequiredPermissionsUtil;->RUNTIME_PERMISSIONS:Ljava/util/Map;

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v12, v12, v4

    if-nez v12, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    const/4 v2, 0x6

    if-nez v7, :cond_5

    if-ne v15, v2, :cond_5

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v3

    move v15, v1

    goto :goto_2

    :cond_5
    move v1, v15

    move v15, v10

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " factory required "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " , setAction "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v10, v19

    :try_start_3
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    const/4 v0, 0x3

    const/4 v3, 0x7

    if-eq v1, v0, :cond_8

    if-eq v1, v2, :cond_8

    if-ne v1, v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v0, 0x1

    if-ne v1, v0, :cond_7

    const/4 v2, 0x2

    move/from16 v16, v2

    :cond_7
    invoke-static/range {p2 .. p2}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v2

    const/16 v17, 0x33

    move/from16 v19, v0

    move-object v0, v8

    move/from16 v20, v1

    move-object v1, v13

    move-object/from16 p0, v2

    move-object/from16 v2, p1

    move/from16 p8, v7

    const/16 v18, 0x0

    move v7, v3

    move/from16 v3, v17

    move/from16 v4, v16

    move-object/from16 v5, p0

    invoke-static/range {v0 .. v5}, Ltg/a;->j(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    move-object/from16 v0, p0

    invoke-static {v8, v6, v13, v0}, Ltg/a;->i(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    move/from16 v0, v19

    move/from16 v3, v20

    goto :goto_5

    :cond_8
    :goto_3
    move/from16 v20, v1

    move/from16 p8, v7

    const/16 v18, 0x0

    const/16 v19, 0x1

    move v7, v3

    invoke-static/range {p2 .. p2}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object v5

    const/16 v3, 0x33

    move-object v0, v8

    move-object v1, v13

    move v4, v2

    move-object/from16 v2, p1

    move v7, v4

    move/from16 v4, v16

    move-object/from16 p0, v5

    invoke-static/range {v0 .. v5}, Ltg/a;->j(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    move-object/from16 v0, p0

    invoke-static {v8, v6, v13, v0}, Ltg/a;->f(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    move/from16 v3, v20

    if-ne v3, v7, :cond_9

    const/4 v0, 0x4

    goto :goto_4

    :cond_9
    move/from16 v0, v18

    :goto_4
    const-wide v1, 0x200000000000L

    cmp-long v1, p3, v1

    if-nez v1, :cond_a

    move/from16 v0, v18

    :cond_a
    :goto_5
    if-eqz v15, :cond_b

    goto :goto_7

    :cond_b
    invoke-static {v13}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->strOpToOp(Landroid/app/AppOpsManager;Ljava/lang/String;)I

    move-result v2

    iget-object v4, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v6, v4, v1, v0}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object v4, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v1, v4, v0}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setUidMode(Landroid/app/AppOpsManager;Ljava/lang/String;II)V

    sget-object v0, Lcom/miui/permcenter/l;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/miui/permcenter/l;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v3, v1, :cond_c

    move/from16 v1, v19

    goto :goto_6

    :cond_c
    move/from16 v1, v18

    :goto_6
    iget-object v2, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v6, v2, v0, v1}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setMode(Landroid/app/AppOpsManager;Ljava/lang/String;III)V

    iget-object v2, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, v0, v2, v1}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->setUidMode(Landroid/app/AppOpsManager;III)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_d
    :goto_7
    move-wide/from16 v4, p3

    move/from16 v7, p8

    move v15, v3

    move/from16 v3, v19

    move-object/from16 v19, v10

    move/from16 v10, v18

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v10, v19

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v10, v13

    :goto_8
    const-string v1, "getApplicationInfo"

    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_9
    return-void
.end method

.method public static r(JLandroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p2}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1, p3}, Lcom/miui/permission/PermissionManager;->supportAlwaysAllow(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method
