.class Lcom/xiaomi/onetrack/api/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:J

.field final synthetic h:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/aa;->h:Lcom/xiaomi/onetrack/api/c;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/aa;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/aa;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/onetrack/api/aa;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/onetrack/api/aa;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/onetrack/api/aa;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/onetrack/api/aa;->f:Ljava/lang/String;

    iput-wide p8, p0, Lcom/xiaomi/onetrack/api/aa;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aa;->h:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aa;->h:Lcom/xiaomi/onetrack/api/c;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/aa;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/c;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v11

    iget-object v0, p0, Lcom/xiaomi/onetrack/api/aa;->h:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/api/c;->i()Lcom/xiaomi/onetrack/api/ak;

    move-result-object v0

    const-string v1, "onetrack_bug_report"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/aa;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/aa;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/onetrack/api/aa;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/onetrack/api/aa;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/onetrack/api/aa;->f:Ljava/lang/String;

    iget-wide v7, p0, Lcom/xiaomi/onetrack/api/aa;->g:J

    iget-object v9, p0, Lcom/xiaomi/onetrack/api/aa;->h:Lcom/xiaomi/onetrack/api/c;

    iget-object v10, v9, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v12, v9, Lcom/xiaomi/onetrack/api/c;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    iget-object v13, v9, Lcom/xiaomi/onetrack/api/c;->i:Lcom/xiaomi/onetrack/util/w;

    iget-boolean v14, v9, Lcom/xiaomi/onetrack/api/c;->j:Z

    move-object v9, v10

    move-object v10, v12

    move-object v12, v13

    move v13, v14

    invoke-static/range {v2 .. v13}, Lcom/xiaomi/onetrack/api/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/w;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/onetrack/api/ak;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackException error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseOneTrackImp"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
