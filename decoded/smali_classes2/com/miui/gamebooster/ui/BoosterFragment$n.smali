.class Lcom/miui/gamebooster/ui/BoosterFragment$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/BoosterFragment;->I1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/BoosterFragment;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/BoosterFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/BoosterFragment$n;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "UTF-8"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "xiaomiId"

    iget-object v3, p0, Lcom/miui/gamebooster/ui/BoosterFragment$n;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v3}, Lcom/miui/gamebooster/ui/BoosterFragment;->d1(Lcom/miui/gamebooster/ui/BoosterFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc3/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

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

    const-string v0, "https://pre-api.miui.security.xiaomi.com/game/queryXunYouUserInfo"

    sget-object v1, Leg/j$b;->b:Leg/j$b;

    const-string v3, "22bcec80-cb42-4fd3-b220-45630fc37259"

    new-instance v4, Lp4/i;

    const-string v5, "gamebooster_getuserxunyouorders"

    invoke-direct {v4, v5}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v1, v3, v4}, Leg/j;->B(Ljava/util/Map;Ljava/lang/String;Leg/j$b;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$n;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/BoosterFragment;->b1(Lcom/miui/gamebooster/ui/BoosterFragment;)Lcom/miui/gamebooster/ui/BoosterFragment$g0;

    move-result-object v0

    const/16 v1, 0x6d

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v1, v2}, Lw4/e;->a(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$n;->a:Lcom/miui/gamebooster/ui/BoosterFragment;

    :goto_0
    invoke-static {v0, v2}, Lcom/miui/gamebooster/ui/BoosterFragment;->e1(Lcom/miui/gamebooster/ui/BoosterFragment;I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/BoosterFragment$n;->a:Lcom/miui/gamebooster/ui/BoosterFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/miui/gamebooster/ui/BoosterFragment;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
