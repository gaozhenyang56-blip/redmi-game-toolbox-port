.class public Lcom/miui/apppredict/bean/RespImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/apppredict/bean/IResp;


# static fields
.field private static volatile instance:Lcom/miui/apppredict/bean/RespImpl;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/apppredict/bean/RespImpl;
    .locals 2

    sget-object v0, Lcom/miui/apppredict/bean/RespImpl;->instance:Lcom/miui/apppredict/bean/RespImpl;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/apppredict/bean/RespImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/apppredict/bean/RespImpl;->instance:Lcom/miui/apppredict/bean/RespImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/apppredict/bean/RespImpl;

    invoke-direct {v1}, Lcom/miui/apppredict/bean/RespImpl;-><init>()V

    sput-object v1, Lcom/miui/apppredict/bean/RespImpl;->instance:Lcom/miui/apppredict/bean/RespImpl;

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
    sget-object v0, Lcom/miui/apppredict/bean/RespImpl;->instance:Lcom/miui/apppredict/bean/RespImpl;

    return-object v0
.end method


# virtual methods
.method public getTrainData(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/mlkit/mobilerec/bean/PredictApp;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lm3/b;->o(Landroid/content/Context;)Lm3/b;

    move-result-object p1

    invoke-virtual {p1}, Lm3/b;->F()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeOldData(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lm3/b;->o(Landroid/content/Context;)Lm3/b;

    move-result-object p1

    invoke-virtual {p1}, Lm3/b;->D()V

    return-void
.end method

.method public saveTrainData(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-static {p2}, Lm3/b;->o(Landroid/content/Context;)Lm3/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lm3/b;->p(Ljava/lang/String;)V

    return-void
.end method
