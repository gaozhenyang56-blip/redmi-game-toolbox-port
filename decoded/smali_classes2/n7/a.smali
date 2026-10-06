.class public final Ln7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameBoxBarrageRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameBoxBarrageRepository.kt\ncom/miui/gamebooster/repository/GameBoxBarrageRepository\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,147:1\n1194#2,2:148\n1222#2,4:150\n1179#2,2:154\n1253#2,4:156\n766#2:160\n857#2,2:161\n1179#2,2:163\n1253#2,4:165\n766#2:169\n857#2,2:170\n1855#2,2:172\n1855#2,2:174\n*S KotlinDebug\n*F\n+ 1 GameBoxBarrageRepository.kt\ncom/miui/gamebooster/repository/GameBoxBarrageRepository\n*L\n45#1:148,2\n45#1:150,4\n49#1:154,2\n49#1:156,4\n56#1:160\n56#1:161,2\n59#1:163,2\n59#1:165,4\n64#1:169\n64#1:170,2\n66#1:172,2\n137#1:174,2\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GameBoxBarrageRepository"

    iput-object v0, p0, Ln7/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln7/a;->b:Ljava/util/List;

    const-string v0, "pref_barrage_apps_state"

    iput-object v0, p0, Ln7/a;->c:Ljava/lang/String;

    const-string v0, "game_box_barrage_v3_support_apps.json"

    iput-object v0, p0, Ln7/a;->d:Ljava/lang/String;

    const-string v0, "pkgName"

    iput-object v0, p0, Ln7/a;->e:Ljava/lang/String;

    const-string v0, "uid"

    iput-object v0, p0, Ln7/a;->f:Ljava/lang/String;

    const-string v0, "state"

    iput-object v0, p0, Ln7/a;->g:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Ln7/a;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Ln7/a;->d(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Ln7/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln7/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic c(Ln7/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ln7/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method private final d(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Loj/m;->b:Loj/m$a;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/e;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Ln7/a;->e:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Ln7/a;->f:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/e;->e()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, p0, Ln7/a;->g:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/e;->d()Z

    move-result v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Loj/m;->b:Loj/m$a;

    invoke-static {p1}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final g(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final h(Ljava/util/List;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Loj/m;->b:Loj/m$a;

    invoke-direct {p0, p1}, Ln7/a;->i(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Ln7/a;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v11, Lcom/miui/gamebooster/model/e;

    iget-object v5, p0, Ln7/a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "item.optString(KEY_PACKAGE_NAME)"

    invoke-static {v6, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, ""

    iget-object v5, p0, Ln7/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    iget-object v5, p0, Ln7/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/miui/gamebooster/model/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {p1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, "support apps is empty!"

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    sget-object v0, Loj/m;->b:Loj/m$a;

    invoke-static {p1}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private final i(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Ln7/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "getInstance().assets.open(_SUPPORT_APPS_FILE_NAME)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-static {v1}, Lyj/h;->d(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "array.getString(i)"

    invoke-static {v4, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Loj/t;->a:Loj/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final e(Ltj/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltj/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/e;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Llk/w0;->a()Llk/d0;

    move-result-object v0

    new-instance v1, Ln7/a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ln7/a$a;-><init>(Ln7/a;Ltj/d;)V

    invoke-static {v0, v1, p1}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Ln7/a;->b:Ljava/util/List;

    invoke-direct {v0, v2}, Ln7/a;->h(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Loj/m;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    move-object v3, v2

    check-cast v3, Ljava/util/List;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lqj/l;->o(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lqj/d0;->a(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lgk/g;->a(II)I

    move-result v6

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lcom/miui/gamebooster/model/e;

    invoke-virtual {v9}, Lcom/miui/gamebooster/model/e;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/miui/gamebooster/model/e;->e()I

    move-result v9

    invoke-direct {v0, v10, v9}, Ln7/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lx4/z1;->e()I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v6, v3}, Lcom/miui/common/g;->b(II)Ljava/util/List;

    move-result-object v3

    const/4 v9, 0x0

    if-eqz v3, :cond_1

    const-string v10, "getInstalledApplications\u2026rUtil.getCurrentUserId())"

    invoke-static {v3, v10}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lqj/l;->o(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-static {v10}, Lqj/d0;->a(I)I

    move-result v10

    invoke-static {v10, v7}, Lgk/g;->a(II)I

    move-result v10

    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-object v12, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v12, v10}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v10

    invoke-virtual {v10}, Loj/l;->c()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10}, Loj/l;->d()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v11, v9

    :cond_2
    new-instance v3, Lbk/y;

    invoke-direct {v3}, Lbk/y;-><init>()V

    invoke-static {}, Lx4/z1;->y()I

    move-result v10

    const/4 v12, 0x1

    if-nez v10, :cond_7

    const/16 v10, 0x3e7

    invoke-static {v6, v10}, Lcom/miui/common/g;->b(II)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroid/content/pm/ApplicationInfo;

    invoke-static {v14}, Lx4/f1;->L(Landroid/content/pm/ApplicationInfo;)Z

    move-result v14

    xor-int/2addr v14, v12

    if-eqz v14, :cond_3

    invoke-interface {v9, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v9, v5}, Lqj/l;->o(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Lqj/d0;->a(I)I

    move-result v5

    invoke-static {v5, v7}, Lgk/g;->a(II)I

    move-result v5

    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    iget-object v10, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v9}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v9

    invoke-virtual {v9}, Loj/l;->c()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9}, Loj/l;->d()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v9, v7

    :cond_6
    iput-object v9, v3, Lbk/y;->a:Ljava/lang/Object;

    :cond_7
    iget-object v5, v0, Ln7/a;->b:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    if-eqz v11, :cond_9

    invoke-interface {v11, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    goto :goto_5

    :cond_9
    move v13, v6

    :goto_5
    if-eqz v13, :cond_a

    invoke-static {v10, v12}, Lx4/f0;->a(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_a

    move v10, v12

    goto :goto_6

    :cond_a
    move v10, v6

    :goto_6
    if-eqz v10, :cond_8

    invoke-interface {v7, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v11, :cond_e

    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_e

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v6, v9}, Ln7/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gamebooster/model/e;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pkg_icon://"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v10, Lcom/miui/gamebooster/model/e;

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v9, :cond_d

    invoke-virtual {v9}, Lcom/miui/gamebooster/model/e;->d()Z

    move-result v9

    move/from16 v18, v9

    goto :goto_8

    :cond_d
    move/from16 v18, v12

    :goto_8
    move-object v13, v10

    move-object v14, v6

    move/from16 v16, v7

    invoke-direct/range {v13 .. v18}, Lcom/miui/gamebooster/model/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v7, v3, Lbk/y;->a:Ljava/lang/Object;

    check-cast v7, Ljava/util/Map;

    if-eqz v7, :cond_c

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_c

    iget v9, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v6, v9}, Ln7/a;->g(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/gamebooster/model/e;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "pkg_icon_xspace://"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v10, Lcom/miui/gamebooster/model/e;

    invoke-virtual {v7, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Lcom/miui/gamebooster/model/e;->d()Z

    move-result v9

    move/from16 v18, v9

    goto :goto_9

    :cond_f
    move/from16 v18, v12

    :goto_9
    move-object v13, v10

    move-object v14, v6

    move/from16 v16, v7

    invoke-direct/range {v13 .. v18}, Lcom/miui/gamebooster/model/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_10
    invoke-static {v2}, Loj/m;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_11

    iget-object v3, v0, Ln7/a;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadBarrageAppConfig FAIL! reason :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-object v1
.end method

.method public final j(Ljava/util/List;Ltj/d;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltj/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/e;",
            ">;",
            "Ltj/d<",
            "-",
            "Loj/m<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Ln7/a$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ln7/a$b;

    iget v1, v0, Ln7/a$b;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ln7/a$b;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Ln7/a$b;

    invoke-direct {v0, p0, p2}, Ln7/a$b;-><init>(Ln7/a;Ltj/d;)V

    :goto_0
    iget-object p2, v0, Ln7/a$b;->a:Ljava/lang/Object;

    invoke-static {}, Luj/b;->c()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Ln7/a$b;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Loj/n;->b(Ljava/lang/Object;)V

    invoke-static {}, Llk/w0;->a()Llk/d0;

    move-result-object p2

    new-instance v2, Ln7/a$c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Ln7/a$c;-><init>(Ln7/a;Ljava/util/List;Ltj/d;)V

    iput v3, v0, Ln7/a$b;->c:I

    invoke-static {p2, v2, v0}, Llk/g;->c(Ltj/g;Lak/p;Ltj/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Loj/m;

    invoke-virtual {p2}, Loj/m;->i()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
