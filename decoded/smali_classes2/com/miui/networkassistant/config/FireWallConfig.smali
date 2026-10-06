.class public Lcom/miui/networkassistant/config/FireWallConfig;
.super Lcom/miui/networkassistant/config/ConfigFile;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FireWallConfig"

.field private static sInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/config/FireWallConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFileName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/config/ConfigFile;-><init>()V

    iput-object p2, p0, Lcom/miui/networkassistant/config/FireWallConfig;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/config/ConfigFile;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/FireWallConfig;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/config/FireWallConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/config/FireWallConfig;->sInstanceMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/miui/networkassistant/config/FireWallConfig;->sInstanceMap:Ljava/util/HashMap;

    :cond_0
    sget-object v1, Lcom/miui/networkassistant/config/FireWallConfig;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/config/FireWallConfig;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/networkassistant/config/FireWallConfig;

    invoke-direct {v1, p0, p1}, Lcom/miui/networkassistant/config/FireWallConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/miui/networkassistant/config/FireWallConfig;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/FireWallConfig;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getPairMap()Landroid/util/ArrayMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/model/FirewallRule;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/config/ConfigFile;->mPairValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v5, "FireWallConfig"

    const-string v6, "parse rule exception"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {v4}, Lcom/miui/networkassistant/model/FirewallRule;->parse(I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v2

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/miui/networkassistant/config/ConfigFile;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/miui/networkassistant/model/FirewallRule;->parse(I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    :try_start_2
    sget-object p1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_3
    sget-object p1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/config/ConfigFile;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
