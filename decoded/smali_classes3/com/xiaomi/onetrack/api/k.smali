.class Lcom/xiaomi/onetrack/api/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/k;->c:Lcom/xiaomi/onetrack/api/c;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/k;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaomi/onetrack/api/k;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "onetrack_pa"

    const-string v1, "BaseOneTrackImp"

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/k;->c:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/api/c;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/k;->c:Lcom/xiaomi/onetrack/api/c;

    iget-object v2, v2, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->isAutoTrackActivityAction()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "config.autoTrackActivityAction is false, ignore onetrack_pa resume event"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/onetrack/api/k;->c:Lcom/xiaomi/onetrack/api/c;

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/api/c;->b(Lcom/xiaomi/onetrack/api/c;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/k;->a:Ljava/lang/String;

    const-string v4, "onetrack_pa"

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/k;->c:Lcom/xiaomi/onetrack/api/c;

    iget-object v5, v2, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v6, v2, Lcom/xiaomi/onetrack/api/c;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    iget-boolean v8, p0, Lcom/xiaomi/onetrack/api/k;->b:Z

    iget-object v9, v2, Lcom/xiaomi/onetrack/api/c;->i:Lcom/xiaomi/onetrack/util/w;

    iget-boolean v10, v2, Lcom/xiaomi/onetrack/api/c;->j:Z

    invoke-static/range {v3 .. v10}, Lcom/xiaomi/onetrack/api/ai;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;ZLcom/xiaomi/onetrack/util/w;Z)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/k;->c:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/api/c;->i()Lcom/xiaomi/onetrack/api/ak;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/xiaomi/onetrack/api/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/xiaomi/onetrack/util/q;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "trackPageStartAuto"

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto trackPageStartAuto error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
