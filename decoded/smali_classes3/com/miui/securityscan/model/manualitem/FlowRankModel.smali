.class public Lcom/miui/securityscan/model/manualitem/FlowRankModel;
.super Lcom/miui/securityscan/model/AbsModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;,
        Lcom/miui/securityscan/model/manualitem/FlowRankModel$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlowRankModel"


# instance fields
.field private flowRankDataModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/model/AbsModel;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setDelayOptimized(Z)V

    const-string p1, "flow_rank"

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/model/AbsModel;->setTrackStr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/securityscan/model/manualitem/FlowRankModel;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securityscan/model/manualitem/FlowRankModel;->isTopFlowDisplay(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isTopFlowDisplay(Landroid/content/Context;)Z
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "content://com.miui.networkassistant.provider/top_usage_app/10"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "package_name"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "traffic_used"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;

    const/4 v6, -0x1

    invoke-direct {v5, p0, v6, v3, v4}, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;-><init>(Lcom/miui/securityscan/model/manualitem/FlowRankModel;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, p1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Lbl/e;->a(Ljava/io/Closeable;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;

    invoke-virtual {v3}, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v3

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x5

    if-le p1, v1, :cond_5

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_5
    iput-object v0, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel;->flowRankDataModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_6

    const/4 v2, 0x1

    :cond_6
    return v2

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    return v2

    :goto_2
    invoke-static {v1}, Lbl/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlowRankDataModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel;->flowRankDataModels:Ljava/util/List;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121a28

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optimize(Landroid/content/Context;)V
    .locals 4

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_TRAFFIC_SORTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "slot_num_tag"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    check-cast p1, Landroid/app/Activity;

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public scan()V
    .locals 7

    const-string v0, "FlowRankModel"

    :try_start_0
    new-instance v1, Lcom/miui/securityscan/model/manualitem/FlowRankModel$a;

    invoke-virtual {p0}, Lcom/miui/securityscan/model/AbsModel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/miui/securityscan/model/manualitem/FlowRankModel$a;-><init>(Lcom/miui/securityscan/model/manualitem/FlowRankModel;Landroid/content/Context;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/miui/securityscan/model/manualitem/FlowRankModel$a;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-wide/16 v5, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v1, v5, v6, v3}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/miui/securityscan/model/AbsModel;->setSafe(Lcom/miui/securityscan/model/AbsModel$State;)V

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/miui/securityscan/model/AbsModel$State;->DANGER:Lcom/miui/securityscan/model/AbsModel$State;

    goto :goto_0

    :goto_1
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const-string v2, "scan ExecutionException "

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "scan Interrupted "

    :goto_2
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method public setFlowRankDataModels(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/FlowRankModel;->flowRankDataModels:Ljava/util/List;

    return-void
.end method
