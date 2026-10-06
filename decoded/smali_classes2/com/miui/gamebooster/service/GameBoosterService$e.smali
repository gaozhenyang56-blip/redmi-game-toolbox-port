.class Lcom/miui/gamebooster/service/GameBoosterService$e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/service/GameBoosterService;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/service/GameBoosterService;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/service/GameBoosterService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/service/GameBoosterService$e$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/service/GameBoosterService$e$a;-><init>(Lcom/miui/gamebooster/service/GameBoosterService$e;)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 10

    invoke-direct {p0}, Lcom/miui/gamebooster/service/GameBoosterService$e;->a()V

    invoke-static {}, Lp7/a;->b()Lp7/a;

    move-result-object v0

    invoke-virtual {v0}, Lp7/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ld7/x;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, La8/g0;->O()Z

    move-result v1

    const-string v2, "action_toast_wlan_speed"

    const-string v3, "action_toast_booster_success"

    const v4, 0x7f120a1c

    const-string v5, "sendToastWindowMessage: wild mode"

    const-string v6, "GameBoosterService"

    const-string v7, "key_toast_common_message"

    const-string v8, "action_toast_common_message"

    const/4 v9, 0x1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->B(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->D(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, La8/f2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v9, :cond_4

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_4
    invoke-static {}, Li6/a;->h()Li6/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Li6/a;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, La8/o0;->o()Z

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120a1b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v9}, La8/o0;->z(Z)V

    return-void

    :cond_5
    invoke-static {}, La8/o0;->l()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120a5c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v9}, La8/o0;->w(Z)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->E(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->F(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result p1

    if-eqz p1, :cond_8

    return-void

    :cond_8
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v1}, Lcom/miui/gamebooster/service/GameBoosterService;->B(Lcom/miui/gamebooster/service/GameBoosterService;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-static {v0}, La8/f2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v9, :cond_c

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_c
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->r(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_5

    const/16 v1, 0x80

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->z(Lcom/miui/gamebooster/service/GameBoosterService;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {v0}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/service/w;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage isGameChanged: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "GameBoosterService"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/service/w;->S(Z)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->y(Lcom/miui/gamebooster/service/GameBoosterService;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/w;->g0()V

    goto :goto_1

    :goto_0
    :pswitch_4
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/w;->e0()V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->C(Lcom/miui/gamebooster/service/GameBoosterService;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    invoke-static {p1}, Lcom/miui/gamebooster/service/GameBoosterService;->P(Lcom/miui/gamebooster/service/GameBoosterService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/service/w;->B(Landroid/content/Context;Landroid/os/Handler;)Lcom/miui/gamebooster/service/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/service/w;->Q()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/miui/gamebooster/service/GameBoosterService$e;->a:Lcom/miui/gamebooster/service/GameBoosterService;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/gamebooster/service/GameBoosterService;->A(Lcom/miui/gamebooster/service/GameBoosterService;Z)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/service/GameBoosterService$e;->b(Landroid/os/Message;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
