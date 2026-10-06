.class public final Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPackageBehaviorContentProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PackageBehaviorContentProvider.kt\ncom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 FileReadWrite.kt\nkotlin/io/FilesKt__FileReadWriteKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 SparseBooleanArray.kt\nandroidx/core/util/SparseBooleanArrayKt\n*L\n1#1,135:1\n131#1,3:141\n134#1:145\n1#2:136\n1#2:139\n230#3,2:137\n13600#4:140\n13601#4:146\n30#5:144\n30#5:147\n*S KotlinDebug\n*F\n+ 1 PackageBehaviorContentProvider.kt\ncom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider\n*L\n116#1:141,3\n116#1:145\n109#1:139\n109#1:137,2\n114#1:140\n114#1:146\n116#1:144\n133#1:147\n*E\n"
    }
.end annotation


# instance fields
.field private a:[Ljava/io/File;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private final a()[Ljava/io/File;
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v3, "PrivacyCenter"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    array-length v4, v0

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-eqz v4, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    if-eqz v1, :cond_4

    return-object v2

    :cond_4
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public b(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p2, "uri"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final varargs c(Ljava/lang/String;[I)Landroid/util/SparseBooleanArray;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "behavior"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "PackageBehavior"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryPackageHasBehaviors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/SparseBooleanArray;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider;->a:[Ljava/io/File;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider;->a()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "PackageBehavior"

    const-string p2, "Expected file is not existed!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iput-object v1, p0, Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider;->a:[Ljava/io/File;

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    monitor-exit p0

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_8

    aget-object v5, v1, v4

    sget-object v6, Ljk/c;->b:Ljava/nio/charset/Charset;

    const/16 v7, 0x2000

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    instance-of v5, v8, Ljava/io/BufferedReader;

    if-eqz v5, :cond_2

    check-cast v8, Ljava/io/BufferedReader;

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v8, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v8, v5

    :goto_2
    :try_start_2
    invoke-static {v8}, Lyj/h;->c(Ljava/io/BufferedReader;)Lik/e;

    move-result-object v5

    sget-object v6, Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider$a;->j:Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider$a;

    invoke-static {v5, v6}, Lik/f;->k(Lik/e;Lak/l;)Lik/e;

    move-result-object v5

    invoke-interface {v5}, Lik/e;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Lorg/json/JSONObject;

    invoke-virtual {v9, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_4
    move-object v6, v7

    :goto_3
    check-cast v6, Lorg/json/JSONObject;

    if-nez v6, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v6, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    array-length v6, p2

    move v9, v3

    :goto_4
    if-ge v9, v6, :cond_7

    aget v10, p2, v9

    const-string v11, "behaviors"

    invoke-static {v5, v11}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v11, :cond_6

    const/4 v12, 0x1

    :cond_6
    invoke-virtual {v0, v10, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    sget-object v5, Loj/t;->a:Loj/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v8, v7}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {v8, p1}, Lyj/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_8
    return-object v0

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p2, "method"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lmc/e;->a()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lqj/l;->w(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-nez p3, :cond_1

    return-object v0

    :cond_1
    const-string p2, "queryPackageHasBehaviors"

    invoke-static {p1, p2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "packageName"

    invoke-virtual {p3, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Required value was null."

    if-eqz p1, :cond_3

    const-string v0, "requireNotNull(extras.getString(\"packageName\"))"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "behaviors"

    invoke-virtual {p3, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p3

    if-eqz p3, :cond_2

    const-string p2, "requireNotNull(extras.getIntArray(\"behaviors\"))"

    invoke-static {p3, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p3

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider;->c(Ljava/lang/String;[I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    array-length p2, p3

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(I)V

    const/4 p2, 0x0

    array-length v1, p3

    :goto_0
    if-ge p2, v1, :cond_4

    aget v2, p3, p2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "uri"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string p2, "uri"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider;->b(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p2, "uri"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
