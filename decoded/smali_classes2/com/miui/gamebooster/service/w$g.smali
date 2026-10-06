.class Lcom/miui/gamebooster/service/w$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/service/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/w;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/w;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/w$g;->a:Lcom/miui/gamebooster/service/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, " "

    const-string v1, "GameBoosterService"

    :try_start_0
    invoke-static {}, Lef/x;->z()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/service/w$g;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {v2}, Lcom/miui/gamebooster/service/w;->b(Lcom/miui/gamebooster/service/w;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lx4/u;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/gamebooster/service/w$g;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {v2}, Lcom/miui/gamebooster/service/w;->b(Lcom/miui/gamebooster/service/w;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "https://adv.sec.miui.com/game/speedParams"

    const/4 v4, 0x0

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->getImeiMd5()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lp4/i;

    const-string v7, "gamebooster_gameboosterservicemanager"

    invoke-direct {v6, v7}, Lp4/i;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3, v4, v5, v6}, Lp4/c;->c(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lp4/i;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/gamebooster/service/w$g;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {v2}, Lcom/miui/gamebooster/service/w;->b(Lcom/miui/gamebooster/service/w;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "speedValue"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "restrictTime"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "queryTime"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "backstageTime"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v2, v4, v5, v6, v7}, La8/e1;->b(Landroid/content/Context;IIII)V

    const-string v2, "game_booster_networkping_url"

    const-string v4, "gbPingUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/gamebooster/service/w$g;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {v2}, Lcom/miui/gamebooster/service/w;->f(Lcom/miui/gamebooster/service/w;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/gamebooster/service/w$g;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {v3}, Lcom/miui/gamebooster/service/w;->g(Lcom/miui/gamebooster/service/w;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/gamebooster/service/w$g;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {v3}, Lcom/miui/gamebooster/service/w;->h(Lcom/miui/gamebooster/service/w;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/gamebooster/service/w$g;->a:Lcom/miui/gamebooster/service/w;

    invoke-static {v0}, Lcom/miui/gamebooster/service/w;->i(Lcom/miui/gamebooster/service/w;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadlimitparamsfromnet failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
