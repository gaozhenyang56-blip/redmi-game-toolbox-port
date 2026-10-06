.class public Lo5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lo5/d;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo5/d;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lo5/d;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lo5/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lo5/d;
    .locals 2

    const-class v0, Lo5/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo5/d;->b:Lo5/d;

    if-nez v1, :cond_0

    new-instance v1, Lo5/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lo5/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lo5/d;->b:Lo5/d;

    :cond_0
    sget-object p0, Lo5/d;->b:Lo5/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public c()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lo5/d;->a:Landroid/content/Context;

    const-string v3, "Performance"

    invoke-static {v2, v3}, Lcom/miui/securityscan/model/ModelFactory;->produceFirstAidKitGroupModel(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lo5/d;->a:Landroid/content/Context;

    const-string v4, "Internet"

    invoke-static {v3, v4}, Lcom/miui/securityscan/model/ModelFactory;->produceFirstAidKitGroupModel(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lo5/d;->a:Landroid/content/Context;

    const-string v5, "Operation"

    invoke-static {v4, v5}, Lcom/miui/securityscan/model/ModelFactory;->produceFirstAidKitGroupModel(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lo5/d;->a:Landroid/content/Context;

    const-string v6, "ConsumePower"

    invoke-static {v5, v6}, Lcom/miui/securityscan/model/ModelFactory;->produceFirstAidKitGroupModel(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lo5/d;->a:Landroid/content/Context;

    const-string v7, "Other"

    invoke-static {v6, v7}, Lcom/miui/securityscan/model/ModelFactory;->produceFirstAidKitGroupModel(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v2, v0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v4}, Lcom/miui/securityscan/model/AbsModel;->scan()V

    invoke-virtual {v4}, Lcom/miui/securityscan/model/AbsModel;->isSafe()Lcom/miui/securityscan/model/AbsModel$State;

    move-result-object v4

    sget-object v5, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    move-exception v1

    const-string v2, "FirstAidKitManualItemManager"

    const-string v3, "isFirstAidKitDanger"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public d(Landroid/os/Handler;Ljava/lang/String;Lp5/a;)V
    .locals 1

    new-instance v0, Lo5/d$a;

    invoke-direct {v0, p0, p3, p2, p1}, Lo5/d$a;-><init>(Lo5/d;Lp5/a;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method
