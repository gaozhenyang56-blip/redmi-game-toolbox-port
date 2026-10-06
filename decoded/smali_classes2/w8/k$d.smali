.class Lw8/k$d;
.super Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw8/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onVpnStateChanged(IILjava/lang/String;)V
    .locals 10

    const-string v0, "UTF-8"

    const-string v1, "XunyouManager"

    invoke-super {p0, p1, p2, p3}, Lcom/miui/gamebooster/service/MiuiVpnManageServiceCallback;->onVpnStateChanged(IILjava/lang/String;)V

    invoke-static {}, Lw8/k;->s()Lw8/k;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x2

    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-static {v2}, Lw8/k;->k(Lw8/k;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lc3/w;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "gb_xiaomi_id_md5_key"

    invoke-static {v0, v4}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lw8/k$c;->a:[I

    invoke-static {v2}, Lw8/k;->g(Lw8/k;)Lcom/miui/gamebooster/service/a0;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_a

    if-eq v0, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v0, 0x66

    const-string v5, "gamebooster_xunyou_cache_expire"

    if-ne p2, v0, :cond_2

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const/4 v0, 0x0

    invoke-static {v5, v0}, Lr4/a;->n(Ljava/lang/String;Z)V

    invoke-static {v0}, Lm6/a;->D0(Z)V

    goto :goto_1

    :cond_4
    if-ne p2, v0, :cond_6

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {v5, v4}, Lr4/a;->n(Ljava/lang/String;Z)V

    const-string v0, "gamebooster_xunyou_cache_user_type"

    invoke-static {v0, p3}, Lr4/a;->r(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    const/16 v0, 0x3eb

    if-ne p2, v0, :cond_9

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p3, v0}, La8/c2;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timestamp\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v0}, La8/c2;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8

    invoke-static {v2}, Lw8/k;->i(Lw8/k;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v2}, Lw8/k;->i(Lw8/k;)Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/gamebooster/service/IGameBooster;->S6()V

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, La8/o0;->B(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_8

    invoke-static {v5, v4}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v4}, Lm6/a;->D0(Z)V

    :cond_8
    invoke-virtual {v2}, Lw8/k;->w()V

    :cond_9
    invoke-static {v2}, Lw8/k;->k(Lw8/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object v0

    invoke-virtual {v0}, La8/i0;->d()V

    goto :goto_2

    :cond_a
    invoke-static {v2}, Lw8/k;->a(Lw8/k;)Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2}, Lw8/k;->n(Lw8/k;)I

    move-result v4

    const-string v5, "detailUrl"

    invoke-interface {v0, v5, v3, v4}, Lcom/miui/networkassistant/vpn/miui/IMiuiVpnManageService;->getSettingWithChannel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lw8/k;->m(Lw8/k;Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/miui/gamebooster/service/a0;->b:Lcom/miui/gamebooster/service/a0;

    invoke-static {v2, v0}, Lw8/k;->h(Lw8/k;Lcom/miui/gamebooster/service/a0;)Lcom/miui/gamebooster/service/a0;

    invoke-static {v2}, Lw8/k;->f(Lw8/k;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lw8/k$d$a;

    invoke-direct {v3, p0, v2}, Lw8/k$d$a;-><init>(Lw8/k$d;Lw8/k;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v2}, Lw8/k;->k(Lw8/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La8/i0;->c(Landroid/content/Context;)La8/i0;

    move-result-object v0

    iget-object v2, v2, Lw8/k;->l:Lo4/a$a;

    invoke-virtual {v0, v2}, La8/i0;->a(Lo4/a$a;)V

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VpnType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " VpnState:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Vpndata:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
