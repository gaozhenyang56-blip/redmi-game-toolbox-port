.class Lu6/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/e;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu6/e;


# direct methods
.method constructor <init>(Lu6/e;)V
    .locals 0

    iput-object p1, p0, Lu6/e$e;->a:Lu6/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "code"

    iget-object v1, p0, Lu6/e$e;->a:Lu6/e;

    invoke-static {v1}, Lu6/e;->d(Lu6/e;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lp4/i;

    const-string v2, "wlan_speed"

    invoke-direct {v1, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v2, "https://miwifi.com/cgi-bin/luci/api/xqsystem/maccel?type=1&mode=1"

    invoke-static {v2, v1}, Lu6/b;->a(Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Luf/a;->a:Z

    const-string v3, "WlanSpeedUpManager"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://miwifi.com/cgi-bin/luci/api/xqsystem/maccel?type=1&mode=1 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "speed error"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    move v0, v5

    :goto_0
    iget-object v1, p0, Lu6/e$e;->a:Lu6/e;

    if-eqz v0, :cond_2

    invoke-static {}, Lu6/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move v5, v4

    :cond_2
    invoke-static {v1, v5}, Lu6/e;->f(Lu6/e;Z)V

    iget-object v0, p0, Lu6/e$e;->a:Lu6/e;

    invoke-static {v0}, Lu6/e;->m(Lu6/e;)V

    iget-object v0, p0, Lu6/e$e;->a:Lu6/e;

    invoke-static {v0}, Lu6/e;->l(Lu6/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lu6/e$e;->a:Lu6/e;

    invoke-static {v1}, Lu6/e;->k(Lu6/e;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lu6/e$e;->a:Lu6/e;

    invoke-static {v0}, Lu6/e;->i(Lu6/e;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lu6/e$e;->a:Lu6/e;

    invoke-static {v0, v4}, Lu6/e;->j(Lu6/e;Z)Z

    iget-object v0, p0, Lu6/e$e;->a:Lu6/e;

    invoke-static {v0}, Lu6/e;->l(Lu6/e;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lu6/e$e;->a:Lu6/e;

    invoke-static {v1}, Lu6/e;->c(Lu6/e;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
