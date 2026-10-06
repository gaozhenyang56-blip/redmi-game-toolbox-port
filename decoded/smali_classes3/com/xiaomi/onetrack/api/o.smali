.class Lcom/xiaomi/onetrack/api/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/o;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()V

    invoke-static {}, Lcom/xiaomi/onetrack/util/r;->a()V

    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Lcom/xiaomi/onetrack/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/o;->a:Lcom/xiaomi/onetrack/api/c;

    iget-object v1, v1, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/o;->a:Lcom/xiaomi/onetrack/api/c;

    iget-object v0, v0, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/util/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/onetrack/api/ad;->a()Lcom/xiaomi/onetrack/api/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/ad;->c()V

    invoke-static {}, Lcom/xiaomi/onetrack/b/a;->a()Lcom/xiaomi/onetrack/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/o;->a:Lcom/xiaomi/onetrack/api/c;

    iget-object v1, v1, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/ab;->B()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/ab;->n(J)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/o;->a:Lcom/xiaomi/onetrack/api/c;

    iget-object v0, v0, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/xiaomi/onetrack/util/p;->a()Lcom/xiaomi/onetrack/util/p;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/o;->a:Lcom/xiaomi/onetrack/api/c;

    iget-object v1, v1, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/o;->a:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->g()V

    invoke-static {}, Lcom/xiaomi/onetrack/util/d;->a()Lcom/xiaomi/onetrack/util/d;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/j;->c(Z)V

    invoke-static {}, Lcom/xiaomi/onetrack/c/m;->a()Lcom/xiaomi/onetrack/c/m;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/o;->a:Lcom/xiaomi/onetrack/api/c;

    iget-object v1, v1, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/c/m;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init WorkerExecutor execute throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseOneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
