.class Lcom/xiaomi/onetrack/api/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/xiaomi/onetrack/api/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/api/c;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/api/n;->b:Lcom/xiaomi/onetrack/api/c;

    iput-object p2, p0, Lcom/xiaomi/onetrack/api/n;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/api/n;->a:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/s;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/n;->b:Lcom/xiaomi/onetrack/api/c;

    iget-object v1, v1, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/s;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0, v2}, Lcom/xiaomi/onetrack/util/s;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/api/n;->b:Lcom/xiaomi/onetrack/api/c;

    iget-object v1, v1, Lcom/xiaomi/onetrack/api/c;->f:Lcom/xiaomi/onetrack/Configuration;

    invoke-static {v1}, Lcom/xiaomi/onetrack/util/s;->a(Lcom/xiaomi/onetrack/Configuration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

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
