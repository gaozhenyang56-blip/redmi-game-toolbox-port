.class public Lcom/xiaomi/push/service/l2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/xiaomi/push/service/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/push/service/c;

    invoke-direct {v0}, Lcom/xiaomi/push/service/c;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/l2;->a:Lcom/xiaomi/push/service/c;

    return-void
.end method

.method public static c(Lcom/xiaomi/push/service/k0$b;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    const-string v1, "9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".permission.MIPUSH_RECEIVE"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".permission.MIMC_RECEIVE"

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/service/k0$b;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/xiaomi/push/service/l2;->c(Lcom/xiaomi/push/service/k0$b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method a(Lzi/r5;)Lcom/xiaomi/push/service/k0$b;
    .locals 4

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v0

    invoke-virtual {p1}, Lzi/r5;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/k0;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/push/service/k0$b;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lzi/r5;->F()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/service/k0$b;

    iget-object v3, v0, Lcom/xiaomi/push/service/k0$b;->b:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    :cond_3
    return-object v2
.end method

.method b(Lzi/u6;)Lcom/xiaomi/push/service/k0$b;
    .locals 5

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v0

    invoke-virtual {p1}, Lzi/u6;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/k0;->f(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/push/service/k0$b;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lzi/u6;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lzi/u6;->o()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/push/service/k0$b;

    iget-object v4, v3, Lcom/xiaomi/push/service/k0$b;->b:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/xiaomi/push/service/k0$b;->b:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    return-object v3

    :cond_4
    return-object v2
.end method

.method public d(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.push.service_started"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lzi/p8;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const-string v1, "[Bcst] send ***.push.service_started broadcast to inform push service has started."

    invoke-static {v1}, Lpi/c;->n(Ljava/lang/String;)V

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public f(Landroid/content/Context;Lcom/xiaomi/push/service/k0$b;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p2, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    const-string v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.push.channel_closed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p2, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/o0;->s:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ext_reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/o0;->p:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/k0$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/o0;->F:Ljava/lang/String;

    iget-object v2, p2, Lcom/xiaomi/push/service/k0$b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p2, Lcom/xiaomi/push/service/k0$b;->r:Landroid/os/Messenger;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    const-string v2, "9"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x11

    const/4 p3, 0x0

    invoke-static {p3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    :try_start_0
    iget-object v0, p2, Lcom/xiaomi/push/service/k0$b;->r:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iput-object p3, p2, Lcom/xiaomi/push/service/k0$b;->r:Landroid/os/Messenger;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "peer may died: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/xiaomi/push/service/k0$b;->b:Ljava/lang/String;

    const/16 p3, 0x40

    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p2, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v2

    const-string p3, "[Bcst] notify channel closed. %s,%s,%d"

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Lcom/xiaomi/push/service/l2;->e(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/service/k0$b;)V

    :goto_0
    return-void
.end method

.method public g(Landroid/content/Context;Lcom/xiaomi/push/service/k0$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    const-string p1, "error while notify kick by server!"

    invoke-static {p1}, Lpi/c;->D(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p2, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    const-string v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "mipush kicked by server"

    invoke-static {p1}, Lpi/c;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.push.kicked"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p2, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ext_kick_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "ext_kick_reason"

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p2, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    const-string v1, "ext_chid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p3, Lcom/xiaomi/push/service/o0;->p:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaomi/push/service/k0$b;->b:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p3, Lcom/xiaomi/push/service/o0;->F:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaomi/push/service/k0$b;->j:Ljava/lang/String;

    invoke-virtual {v0, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    aput-object v2, p3, v1

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    aput-object v2, p3, v1

    const/4 v1, 0x2

    aput-object p4, p3, v1

    const-string p4, "[Bcst] notify packet(blob) arrival. %s,%s,%s"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Lcom/xiaomi/push/service/l2;->e(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/service/k0$b;)V

    :goto_0
    return-void
.end method

.method public h(Landroid/content/Context;Lcom/xiaomi/push/service/k0$b;ZILjava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    iget-object v0, p2, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    const-string v1, "5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/push/service/l2;->a:Lcom/xiaomi/push/service/c;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/push/service/c;->e(Landroid/content/Context;Lcom/xiaomi/push/service/k0$b;ZILjava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaomi.push.channel_opened"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p2, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ext_succeeded"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p3, :cond_1

    const-string v1, "ext_reason"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ext_reason_msg"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object p5, p2, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    const-string v1, "ext_chid"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p5, Lcom/xiaomi/push/service/o0;->p:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaomi/push/service/k0$b;->b:Ljava/lang/String;

    invoke-virtual {v0, p5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p5, Lcom/xiaomi/push/service/o0;->F:Ljava/lang/String;

    iget-object v1, p2, Lcom/xiaomi/push/service/k0$b;->j:Ljava/lang/String;

    invoke-virtual {v0, p5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p5, 0x4

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    aput-object v2, p5, v1

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    aput-object v2, p5, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p5, v1

    const/4 p3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p5, p3

    const-string p3, "[Bcst] notify channel open result. %s,%s,%b,%d"

    invoke-static {p3, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Lcom/xiaomi/push/service/l2;->e(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/service/k0$b;)V

    :goto_0
    return-void
.end method

.method public i(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lzi/r5;)V
    .locals 6

    invoke-virtual {p0, p3}, Lcom/xiaomi/push/service/l2;->a(Lzi/r5;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error while notify channel closed! channel "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not registered"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lpi/c;->D(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "5"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/xiaomi/push/service/l2;->a:Lcom/xiaomi/push/service/c;

    invoke-virtual {p2, p1, p3, v0}, Lcom/xiaomi/push/service/c;->h(Lcom/xiaomi/push/service/XMPushService;Lzi/r5;Lcom/xiaomi/push/service/k0$b;)V

    goto/16 :goto_0

    :cond_1
    iget-object v1, v0, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.xiaomi.push.new_msg"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-string v5, "ext_rcv_timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "ext_chid"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, v0, Lcom/xiaomi/push/service/k0$b;->i:Ljava/lang/String;

    invoke-virtual {p3, v3}, Lzi/r5;->q(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "ext_raw_packet"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    sget-object v3, Lcom/xiaomi/push/service/o0;->F:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/push/service/k0$b;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/xiaomi/push/service/o0;->x:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/push/service/k0$b;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p3}, Lcom/xiaomi/push/service/f2;->a(Lzi/r5;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ext_downward_pkt_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v3, v0, Lcom/xiaomi/push/service/k0$b;->r:Landroid/os/Messenger;

    if-eqz v3, :cond_3

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-static {v4, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    :try_start_0
    iget-object v5, v0, Lcom/xiaomi/push/service/k0$b;->r:Landroid/os/Messenger;

    invoke-virtual {v5, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message was sent by messenger for chid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lpi/c;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iput-object v4, v0, Lcom/xiaomi/push/service/k0$b;->r:Landroid/os/Messenger;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "peer may died: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaomi/push/service/k0$b;->b:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lpi/c;->n(Ljava/lang/String;)V

    :cond_3
    const-string p2, "com.xiaomi.xmsf"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v3, v0, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    aput-object v3, p2, v1

    const/4 v1, 0x1

    iget-object v3, v0, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    aput-object v3, p2, v1

    const/4 v1, 0x2

    invoke-virtual {p3}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    const-string v1, "[Bcst] notify packet(blob) arrival. %s,%s,%s"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/xiaomi/push/service/f2;->a(Lzi/r5;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/xiaomi/push/service/u0;->a()Lcom/xiaomi/push/service/u0;

    move-result-object p2

    invoke-virtual {p3}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object p3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p2, p3, v3, v4}, Lcom/xiaomi/push/service/u0;->c(Ljava/lang/String;J)V

    :cond_4
    invoke-static {p1, v2, v0}, Lcom/xiaomi/push/service/l2;->e(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/service/k0$b;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public j(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;Lzi/u6;)V
    .locals 5

    invoke-virtual {p0, p3}, Lcom/xiaomi/push/service/l2;->b(Lzi/u6;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error while notify channel closed! channel "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not registered"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lpi/c;->D(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "5"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lcom/xiaomi/push/service/l2;->a:Lcom/xiaomi/push/service/c;

    invoke-virtual {p2, p1, p3, v0}, Lcom/xiaomi/push/service/c;->i(Lcom/xiaomi/push/service/XMPushService;Lzi/u6;Lcom/xiaomi/push/service/k0$b;)V

    goto/16 :goto_2

    :cond_1
    iget-object v1, v0, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    instance-of v2, p3, Lzi/t6;

    if-eqz v2, :cond_2

    const-string v2, "com.xiaomi.push.new_msg"

    goto :goto_1

    :cond_2
    instance-of v2, p3, Lzi/s6;

    if-eqz v2, :cond_3

    const-string v2, "com.xiaomi.push.new_iq"

    goto :goto_1

    :cond_3
    instance-of v2, p3, Lzi/w6;

    if-eqz v2, :cond_5

    const-string v2, "com.xiaomi.push.new_pres"

    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ext_chid"

    invoke-virtual {v3, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3}, Lzi/u6;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ext_packet"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/o0;->F:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/push/service/k0$b;->j:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/push/service/o0;->x:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaomi/push/service/k0$b;->i:Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, v0, Lcom/xiaomi/push/service/k0$b;->h:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-object v4, v0, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p3}, Lzi/u6;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "[Bcst] notify packet arrival. %s,%s,%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->n(Ljava/lang/String;)V

    const-string v1, "3"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/xiaomi/push/service/o0;->t:Ljava/lang/String;

    iget-wide v1, p3, Lzi/u6;->j:J

    invoke-virtual {v3, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    sget-object p2, Lcom/xiaomi/push/service/o0;->u:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v3, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_4
    invoke-static {p1, v3, v0}, Lcom/xiaomi/push/service/l2;->e(Landroid/content/Context;Landroid/content/Intent;Lcom/xiaomi/push/service/k0$b;)V

    :goto_2
    return-void

    :cond_5
    const-string p1, "unknown packet type, drop it"

    goto/16 :goto_0
.end method
