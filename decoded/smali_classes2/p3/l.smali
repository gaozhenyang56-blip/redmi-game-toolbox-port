.class public Lp3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lp3/l;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/mlkit/mobilerec/bean/PredictApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp3/l;->a:Ljava/util/List;

    return-void
.end method

.method public static b()Lp3/l;
    .locals 2

    sget-object v0, Lp3/l;->b:Lp3/l;

    if-nez v0, :cond_1

    const-class v0, Lp3/l;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp3/l;->b:Lp3/l;

    if-nez v1, :cond_0

    new-instance v1, Lp3/l;

    invoke-direct {v1}, Lp3/l;-><init>()V

    sput-object v1, Lp3/l;->b:Lp3/l;

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
    sget-object v0, Lp3/l;->b:Lp3/l;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/mlkit/mobilerec/bean/PredictApp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lp3/l;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lp3/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public declared-synchronized e(Ljava/lang/String;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lp3/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lp3/l;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    new-instance v7, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lp3/l;->a()Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    iget-object p1, p0, Lp3/l;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lp3/l;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/mlkit/mobilerec/bean/PredictApp;

    invoke-virtual {v7}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->getOpenTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/mlkit/mobilerec/bean/PredictApp;->setCloseTime(J)V

    :cond_1
    iget-object p1, p0, Lp3/l;->a:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
