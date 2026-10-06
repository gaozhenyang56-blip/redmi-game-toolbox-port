.class public Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;
.super Lcom/miui/networkassistant/config/ConfigFile;
.source "SourceFile"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "_datausage_ignore_applist_config.db"

.field private static sInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mImsi:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/config/ConfigFile;-><init>()V

    iput-object p2, p0, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->mImsi:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/config/ConfigFile;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;
    .locals 2

    const-class v0, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->sInstanceMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->sInstanceMap:Ljava/util/HashMap;

    :cond_0
    sget-object v1, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    invoke-direct {v1, p0, p1}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->sInstanceMap:Ljava/util/HashMap;

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
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_datausage_ignore_applist_config.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIgnoreList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/config/ConfigFile;->mPairValues:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isDataUsageIgnore(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/networkassistant/config/ConfigFile;->get(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public setDataUsageIgnore(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/config/ConfigFile;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
