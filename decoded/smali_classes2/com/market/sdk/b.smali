.class public Lcom/market/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/market/sdk/b;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/market/sdk/b;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/market/sdk/b;->e(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/app/Application;)Lcom/market/sdk/b;
    .locals 1

    sget-object p0, Lcom/market/sdk/b;->b:Lcom/market/sdk/b;

    if-nez p0, :cond_1

    const-class p0, Lcom/market/sdk/b;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/market/sdk/b;->b:Lcom/market/sdk/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/market/sdk/b;

    invoke-direct {v0}, Lcom/market/sdk/b;-><init>()V

    sput-object v0, Lcom/market/sdk/b;->b:Lcom/market/sdk/b;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    sget-object p0, Lcom/market/sdk/b;->b:Lcom/market/sdk/b;

    return-object p0
.end method

.method private e(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public b(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/market/sdk/utils/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/market/sdk/b;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/market/sdk/FloatService;->w8(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/b$c;

    invoke-direct {v3, p0, v0, p1}, Lcom/market/sdk/b$c;-><init>(Lcom/market/sdk/b;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/market/sdk/b;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/market/sdk/FloatService;->w8(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaomi/market/IAppDownloadManager;->O6(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public f(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/market/sdk/b;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/market/sdk/FloatService;->w8(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    invoke-static {}, Lcom/market/sdk/g;->b()Lcom/market/sdk/g;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/d;->j:Lcom/market/sdk/d;

    invoke-virtual {v2, v3}, Lcom/market/sdk/g;->c(Lcom/market/sdk/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaomi/market/IAppDownloadManager;->b4(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/b$a;

    invoke-direct {v3, p0, v0, p1}, Lcom/market/sdk/b$a;-><init>(Lcom/market/sdk/b;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v1
.end method

.method public g(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "&overlayPosition="

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/market/sdk/utils/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/market/sdk/b;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/market/sdk/FloatService;->w8(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/market/IAppDownloadManager;

    move-result-object v0

    invoke-static {}, Lcom/market/sdk/g;->b()Lcom/market/sdk/g;

    move-result-object v2

    sget-object v3, Lcom/market/sdk/d;->j:Lcom/market/sdk/d;

    invoke-virtual {v2, v3}, Lcom/market/sdk/g;->c(Lcom/market/sdk/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaomi/market/IAppDownloadManager;->M3(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/market/sdk/b$b;

    invoke-direct {v3, p0, v0, p1}, Lcom/market/sdk/b$b;-><init>(Lcom/market/sdk/b;Lcom/xiaomi/market/IAppDownloadManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MarketManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v1
.end method
