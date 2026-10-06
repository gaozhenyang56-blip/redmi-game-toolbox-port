.class public Lx4/s1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lx4/s1;


# instance fields
.field private a:Lcom/miui/window/IMiuiEmbeddingWindow;


# direct methods
.method private constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static c()Lx4/s1;
    .locals 2

    sget-object v0, Lx4/s1;->b:Lx4/s1;

    if-nez v0, :cond_1

    const-class v0, Lx4/s1;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lx4/s1;->b:Lx4/s1;

    if-nez v1, :cond_0

    new-instance v1, Lx4/s1;

    invoke-direct {v1}, Lx4/s1;-><init>()V

    sput-object v1, Lx4/s1;->b:Lx4/s1;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lx4/s1;->b:Lx4/s1;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lx4/s1;->a:Lcom/miui/window/IMiuiEmbeddingWindow;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/window/IMiuiEmbeddingWindow;->getAppsUiMode(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "SizeCompatRemoteServiceUtils"

    const-string v1, "miui embedded remote binder failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lx4/s1;->a:Lcom/miui/window/IMiuiEmbeddingWindow;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/window/IMiuiEmbeddingWindow;->getEmbeddedApps()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "SizeCompatRemoteServiceUtils"

    const-string v1, "call getEmbeddedApps fail."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lx4/s1;->a:Lcom/miui/window/IMiuiEmbeddingWindow;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/window/IMiuiEmbeddingWindow;->setAppUiMode(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "SizeCompatRemoteServiceUtils"

    const-string p3, "miui embedded remote binder failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public e(Ljava/lang/String;Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lx4/s1;->a:Lcom/miui/window/IMiuiEmbeddingWindow;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/miui/window/IMiuiEmbeddingWindow;->setEmbeddedEnable(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "SizeCompatRemoteServiceUtils"

    const-string p2, "call setEmbeddedApps fail."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
