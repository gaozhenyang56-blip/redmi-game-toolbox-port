.class Lcom/xiaomi/push/service/j;
.super Lcom/xiaomi/push/service/XMPushService$j;
.source "SourceFile"


# instance fields
.field final synthetic b:Lzi/q8;

.field final synthetic c:Lzi/m8;

.field final synthetic d:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(ILzi/q8;Lzi/m8;Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    iput-object p2, p0, Lcom/xiaomi/push/service/j;->b:Lzi/q8;

    iput-object p3, p0, Lcom/xiaomi/push/service/j;->c:Lzi/m8;

    iput-object p4, p0, Lcom/xiaomi/push/service/j;->d:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "send ack message for clear push message."

    return-object v0
.end method

.method public b()V
    .locals 4

    :try_start_0
    new-instance v0, Lzi/h8;

    invoke-direct {v0}, Lzi/h8;-><init>()V

    sget-object v1, Lzi/a8;->E:Lzi/a8;

    iget-object v1, v1, Lzi/a8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzi/h8;->n(Ljava/lang/String;)Lzi/h8;

    iget-object v1, p0, Lcom/xiaomi/push/service/j;->b:Lzi/q8;

    invoke-virtual {v1}, Lzi/q8;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/h8;->e(Ljava/lang/String;)Lzi/h8;

    iget-object v1, p0, Lcom/xiaomi/push/service/j;->b:Lzi/q8;

    invoke-virtual {v1}, Lzi/q8;->d()Lzi/f8;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/h8;->f(Lzi/f8;)Lzi/h8;

    iget-object v1, p0, Lcom/xiaomi/push/service/j;->b:Lzi/q8;

    invoke-virtual {v1}, Lzi/q8;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/h8;->l(Ljava/lang/String;)Lzi/h8;

    iget-object v1, p0, Lcom/xiaomi/push/service/j;->b:Lzi/q8;

    invoke-virtual {v1}, Lzi/q8;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/h8;->s(Ljava/lang/String;)Lzi/h8;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lzi/h8;->d(J)Lzi/h8;

    const-string v1, "success clear push message."

    invoke-virtual {v0, v1}, Lzi/h8;->q(Ljava/lang/String;)Lzi/h8;

    iget-object v1, p0, Lcom/xiaomi/push/service/j;->c:Lzi/m8;

    invoke-virtual {v1}, Lzi/m8;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/j;->c:Lzi/m8;

    invoke-virtual {v2}, Lzi/m8;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lzi/q7;->j:Lzi/q7;

    invoke-static {v1, v2, v0, v3}, Lcom/xiaomi/push/service/l;->n(Ljava/lang/String;Ljava/lang/String;Lzi/c9;Lzi/q7;)Lzi/m8;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/j;->d:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/l;->l(Lcom/xiaomi/push/service/XMPushService;Lzi/m8;)V
    :try_end_0
    .catch Lzi/o6; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear push message. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpi/c;->D(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/j;->d:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method
