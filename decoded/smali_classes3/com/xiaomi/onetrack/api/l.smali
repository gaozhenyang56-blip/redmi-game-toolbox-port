.class Lcom/xiaomi/onetrack/api/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/c;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/l;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/onetrack/api/l;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "BaseOneTrackImp"

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/api/c;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/c;

    iget-object v1, v1, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->isAutoTrackActivityAction()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "config.autoTrackActivityAction is false, ignore onetrack_pa pause event"

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/c;

    const-string v2, "onetrack_pa"

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/api/c;->b(Lcom/xiaomi/onetrack/api/c;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/l;->a:Ljava/lang/String;

    const-string v4, "onetrack_pa"

    iget-wide v5, p0, Lcom/xiaomi/onetrack/api/l;->b:J

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/l;->c:Lcom/xiaomi/onetrack/api/c;

    iget-object v7, v1, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v8, v1, Lcom/xiaomi/onetrack/api/c;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    iget-object v10, v1, Lcom/xiaomi/onetrack/api/c;->i:Lcom/xiaomi/onetrack/util/w;

    iget-boolean v11, v1, Lcom/xiaomi/onetrack/api/c;->j:Z

    invoke-static/range {v3 .. v11}, Lcom/xiaomi/onetrack/api/ai;->a(Ljava/lang/String;Ljava/lang/String;JLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/w;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/ab;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePageEndData error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
