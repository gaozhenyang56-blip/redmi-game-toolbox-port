.class public final La8/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La8/x0$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameTagsHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameTagsHelper.kt\ncom/miui/gamebooster/utils/GameTagsHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n223#2,2:179\n1855#2,2:182\n1#3:181\n*S KotlinDebug\n*F\n+ 1 GameTagsHelper.kt\ncom/miui/gamebooster/utils/GameTagsHelper\n*L\n53#1:179,2\n114#1:182,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:La8/x0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La8/x0;

    invoke-direct {v0}, La8/x0;-><init>()V

    sput-object v0, La8/x0;->a:La8/x0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p2}, Lqj/l;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, La8/x0;->b(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loj/m;->g(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lqj/l;->x(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loj/l;

    invoke-virtual {p1}, Loj/l;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La8/x0$a;

    :cond_0
    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final b(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0, p2}, La8/x0;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Loj/m;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p2, Ljava/util/List;

    sget-object v0, La8/x0;->a:La8/x0;

    invoke-direct {v0, p1, p2}, La8/x0;->k(Landroid/content/Context;Ljava/lang/Iterable;)V

    invoke-static {p2}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Loj/m;->b:Loj/m$a;

    invoke-static {p1}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Loj/m;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v0, "GameTagsHelper"

    const-string v1, "fetchAndSaveGameTags: "

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object p1
.end method

.method private final c(Ljava/util/List;)Ljava/lang/Object;
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

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Loj/l;

    const/4 v1, 0x0

    const-string v2, "pkgs"

    const-string v4, ","

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v11}, Lqj/l;->E(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lak/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lqj/d0;->g([Loj/l;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "https://adv.sec.miui.com/game/pkg"

    new-instance v2, Lp4/i;

    const-string v3, "gamebooster_gametagshelper"

    invoke-direct {v2, v3}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Leg/j;->t(Ljava/util/Map;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, La8/x0;->h(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lqj/l;->V(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :goto_0
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

.method private final d(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Loj/l<",
            "+TK;+TV;>;>;TK;)TV;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Loj/l;

    invoke-virtual {v0}, Loj/l;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Loj/l;->d()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Collection contains no element matching the predicate."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "tags"

    :try_start_0
    invoke-direct {p0, p1, p2}, La8/x0;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "expire_at"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_0

    invoke-static {}, Lef/x;->z()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, La8/x0;->a:La8/x0;

    invoke-direct {v3, p1, p2}, La8/x0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loj/m;->g(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    check-cast p1, La8/x0$a;

    invoke-virtual {p1}, La8/x0$a;->b()Ljava/util/List;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :cond_0
    :try_start_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v4, p1, [C

    const/4 p1, 0x0

    const/16 p2, 0x2c

    aput-char p2, v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ljk/f;->e0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1, v2}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :cond_1
    :try_start_5
    sget-object v0, La8/x0;->a:La8/x0;

    invoke-direct {v0, p1}, La8/x0;->i(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, p1, v3}, La8/x0;->b(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loj/m;->g(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1, p2}, La8/x0;->d(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La8/x0$a;

    invoke-virtual {p1}, La8/x0$a;->b()Ljava/util/List;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {v1, v2}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p1

    :cond_2
    invoke-static {v1, v2}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_8
    invoke-static {v1, p1}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "GameTagsHelper"

    const-string v0, "getGameTags: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final declared-synchronized f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, La8/x0;->j(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "tags"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "expire_at"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v2, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p3, Lm7/c;->a:Landroid/net/Uri;

    const-string p4, "package_name =? "

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, p5, v3

    invoke-virtual {p1, p3, v2, p4, p5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "package_name"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "tags"

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "expire_at"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lm7/c;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {v0, p1}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static final g(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Ln6/a;->a:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, La8/x0;->a:La8/x0;

    invoke-direct {v0, p0, p1}, La8/x0;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const-string p1, "casual"

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final h(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "La8/x0$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "tagNodes"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "tags"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v8, "expire"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v11, v4

    :goto_1
    if-ge v11, v6, :cond_0

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v6, 0x3e8

    mul-long/2addr v8, v6

    add-long/2addr v8, v0

    new-instance v6, La8/x0$a;

    invoke-direct {v6, v10, v8, v9}, La8/x0$a;-><init>(Ljava/util/List;J)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private final i(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Loj/m;->b:Loj/m$a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, La8/j0;->k(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_1
    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Lqj/l;->d(I)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "package_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lqj/l;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-static {p1, v0}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-static {p1, v0}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    sget-object v0, Loj/m;->b:Loj/m$a;

    invoke-static {p1}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {}, Lqj/l;->h()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Loj/m;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p1, v0

    :cond_2
    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private final j(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lm7/c;->a:Landroid/net/Uri;

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p2, v4, p1

    const/4 v2, 0x0

    const-string v3, "package_name =? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private final k(Landroid/content/Context;Ljava/lang/Iterable;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Iterable<",
            "Loj/l<",
            "Ljava/lang/String;",
            "La8/x0$a;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Loj/l;

    invoke-virtual {v1}, Loj/l;->a()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1}, Loj/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La8/x0$a;

    sget-object v3, La8/x0;->a:La8/x0;

    invoke-virtual {v1}, La8/x0$a;->b()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3e

    const/4 v14, 0x0

    const-string v7, ","

    invoke-static/range {v6 .. v14}, Lqj/l;->E(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lak/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, La8/x0$a;->a()J

    move-result-wide v7

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, La8/x0;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final l(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/Iterable;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageNames"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, La8/x0;->a:La8/x0;

    :try_start_0
    sget-object v1, Loj/m;->b:Loj/m$a;

    invoke-direct {v0, p1}, La8/x0;->h(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lqj/l;->V(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p0, p1}, La8/x0;->k(Landroid/content/Context;Ljava/lang/Iterable;)V

    sget-object p0, Loj/t;->a:Loj/t;

    invoke-static {p0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Loj/m;->b:Loj/m$a;

    invoke-static {p0}, Loj/n;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Loj/m;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "GameTagsHelper"

    const-string p2, "saveGameTagsFromResponse: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
