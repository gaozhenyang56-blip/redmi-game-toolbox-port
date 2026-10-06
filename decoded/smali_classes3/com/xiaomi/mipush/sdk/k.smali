.class Lcom/xiaomi/mipush/sdk/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lzi/p8;->t()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/xiaomi/mipush/sdk/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzi/o7;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzi/x;->c(Landroid/content/Context;)Lzi/x;

    move-result-object v0

    invoke-virtual {v0}, Lzi/x;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    new-instance v0, Lzi/q8;

    invoke-direct {v0}, Lzi/q8;-><init>()V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/q8;->r(Ljava/lang/String;)Lzi/q8;

    sget-object v1, Lzi/a8;->h:Lzi/a8;

    iget-object v1, v1, Lzi/a8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzi/q8;->w(Ljava/lang/String;)Lzi/q8;

    invoke-static {}, Lcom/xiaomi/push/service/h0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/q8;->e(Ljava/lang/String;)Lzi/q8;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lzi/q8;->g(Ljava/util/Map;)Lzi/q8;

    const-string v1, ""

    invoke-static {}, Lcom/xiaomi/mipush/sdk/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lzi/o7;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lzi/q0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {}, Lcom/xiaomi/mipush/sdk/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lzi/o7;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v2

    const-string v3, "imei_md5"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/xiaomi/mipush/sdk/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lzi/x;->c(Landroid/content/Context;)Lzi/x;

    move-result-object v1

    invoke-virtual {v0}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lzi/x;->e(Ljava/util/Map;)V

    invoke-static {}, Lzi/o7;->c()I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {v0}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "space_id"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lcom/xiaomi/mipush/sdk/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v1

    sget-object v2, Lzi/q7;->j:Lzi/q7;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xiaomi/mipush/sdk/d0;->B(Lzi/c9;Lzi/q7;ZLzi/d8;)V

    :cond_5
    return-void
.end method
