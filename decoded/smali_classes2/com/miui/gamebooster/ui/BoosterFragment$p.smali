.class Lcom/miui/gamebooster/ui/BoosterFragment$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->e2(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Lcom/miui/gamebooster/ui/BoosterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$p;->b:Lcom/miui/gamebooster/ui/BoosterFragment;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$p;->a:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "UTF-8"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "xiaomiId"

    iget-object v3, p0, Lcom/miui/gamebooster/ui/BoosterFragment$p;->b:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/BoosterFragment;->j1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc3/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "gamebooster_xunyou_cache_user_type"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lr4/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, "userType"

    invoke-static {v2}, La8/c2;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "gamebooster_xunyou_cache_time"

    const-wide/16 v3, -0x1

    invoke-static {v2, v3, v4}, Lr4/a;->j(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-eqz v3, :cond_1

    const-string v3, "expireTime"

    invoke-static {v2}, La8/c2;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v2, p0, Lcom/miui/gamebooster/ui/BoosterFragment$p;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    const-string v3, "isSuccess"

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "true"

    goto :goto_0

    :cond_2
    const-string v2, "false"

    :goto_0
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "param"

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v4, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "https://api.miui.security.xiaomi.com/game/xunYouReport"

    sget-object v1, Leg/j$b;->b:Leg/j$b;

    const-string v3, "22bcec80-cb42-4fd3-b220-45630fc37259"

    new-instance v4, Lp4/i;

    const-string v5, "gamebooster_postuserinfotoserver"

    invoke-direct {v4, v5}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v1, v3, v4}, Leg/j;->B(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/miui/gamebooster/ui/BoosterFragment;->u0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "report UserInfo success!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/BoosterFragment;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method
