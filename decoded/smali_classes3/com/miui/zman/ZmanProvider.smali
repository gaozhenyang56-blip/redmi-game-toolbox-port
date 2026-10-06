.class public Lcom/miui/zman/ZmanProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final c:Landroid/content/UriMatcher;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lkh/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/zman/ZmanProvider;->c:Landroid/content/UriMatcher;

    const-string v1, "com.miui.securitycenter.zman.provider"

    const-string v2, "clean"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/miui/zman/ZmanProvider;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lhh/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/zman/ZmanProvider;->a:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/zman/ZmanProvider;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkh/b;->b(Ljava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    const-string v0, "zman_share_sec"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :try_start_0
    invoke-static {p2, p1}, Lkh/b;->g(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkh/e;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string p1, "needHideImageInfo is false"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/zman/ZmanProvider;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lkh/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lkh/b;->a(Ljava/io/File;Ljava/io/File;)V

    invoke-static {p1}, Lih/a;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p1}, Lih/a;->a(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v3, v1, v2}, Lkh/e;->a(Ljava/io/File;ZZ)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "com.miui.securitycenter.zman.fileProvider"

    invoke-static {p1, v1, v3}, Landroidx/core/content/FileProvider;->h(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lhh/a;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultUri: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    :goto_0
    const-string p1, "clearImageInfo Fail, dst.length() == 0"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "lunchUri Exception: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method private c()V
    .locals 3

    const-string v0, "zman_share_sec"

    const-string v1, "startLoadingView: "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/zman/ui/LoadingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object p3, Lcom/miui/zman/ZmanProvider;->c:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eq p1, p4, :cond_0

    return-object p3

    :cond_0
    if-nez p2, :cond_1

    return-object p3

    :cond_1
    invoke-direct {p0}, Lcom/miui/zman/ZmanProvider;->a()V

    array-length p1, p2

    const/16 p5, 0xa

    const/4 v0, 0x0

    if-lt p1, p5, :cond_2

    invoke-direct {p0}, Lcom/miui/zman/ZmanProvider;->c()V

    invoke-static {}, Lkh/c;->a()Lkh/c;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/zman/ZmanProvider;->b:Lkh/c;

    array-length p5, p2

    invoke-virtual {p1, p5}, Lkh/c;->f(I)V

    iget-object p1, p0, Lcom/miui/zman/ZmanProvider;->b:Lkh/c;

    invoke-virtual {p1, v0}, Lkh/c;->d(I)V

    :cond_2
    const-string p1, "uris"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    new-instance p5, Landroid/database/MatrixCursor;

    invoke-direct {p5, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move p1, v0

    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    aget-object v2, p2, p1

    invoke-direct {p0, v1, v2}, Lcom/miui/zman/ZmanProvider;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p5}, Landroid/database/AbstractCursor;->close()V

    const-string p1, "zman_share_sec"

    const-string p2, "result is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    :cond_3
    new-array v2, p4, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-virtual {p5, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/zman/ZmanProvider;->b:Lkh/c;

    if-eqz v1, :cond_4

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lkh/c;->d(I)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return-object p5
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
