.class Lcom/xiaomi/onetrack/api/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/y;->d:Lcom/xiaomi/onetrack/api/c;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/y;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/api/y;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/xiaomi/onetrack/api/y;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "BaseOneTrackImp"

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/y;->d:Lcom/xiaomi/onetrack/api/c;

    iget-object v1, v1, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getAdEventAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adEventAppId is null,Please configure,event name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/y;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/y;->d:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/api/c;->h()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/y;->d:Lcom/xiaomi/onetrack/api/c;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/y;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/api/c;->a(Lcom/xiaomi/onetrack/api/c;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/onetrack/api/y;->b:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/util/s;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/y;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/s;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v9

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/y;->d:Lcom/xiaomi/onetrack/api/c;

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/y;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/api/c;->b(Lcom/xiaomi/onetrack/api/c;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/y;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/y;->d:Lcom/xiaomi/onetrack/api/c;

    iget-object v5, v1, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    iget-object v6, v1, Lcom/xiaomi/onetrack/api/c;->h:Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    iget-object v8, v1, Lcom/xiaomi/onetrack/api/c;->i:Lcom/xiaomi/onetrack/util/w;

    iget-boolean v10, v1, Lcom/xiaomi/onetrack/api/c;->j:Z

    invoke-static/range {v3 .. v10}, Lcom/xiaomi/onetrack/api/ai;->a(Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/util/w;Lorg/json/JSONArray;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/api/y;->d:Lcom/xiaomi/onetrack/api/c;

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/api/c;->i()Lcom/xiaomi/onetrack/api/ak;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/api/y;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/xiaomi/onetrack/api/ak;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track map error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
