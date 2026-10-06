.class public Lcom/xiaomi/push/service/y0;
.super Lcom/xiaomi/push/service/XMPushService$j;
.source "SourceFile"


# instance fields
.field private b:Lcom/xiaomi/push/service/XMPushService;

.field private c:Lzi/r5;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lzi/r5;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    iput-object p1, p0, Lcom/xiaomi/push/service/y0;->b:Lcom/xiaomi/push/service/XMPushService;

    iput-object p2, p0, Lcom/xiaomi/push/service/y0;->c:Lzi/r5;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "send a message."

    return-object v0
.end method

.method public b()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/y0;->c:Lzi/r5;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/xiaomi/push/service/f2;->a(Lzi/r5;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/y0;->c:Lzi/r5;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaomi/push/service/y0;->c:Lzi/r5;

    invoke-virtual {v3}, Lzi/r5;->b()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lzi/r5;->A(J)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/y0;->b:Lcom/xiaomi/push/service/XMPushService;

    iget-object v1, p0, Lcom/xiaomi/push/service/y0;->c:Lzi/r5;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lzi/r5;)V
    :try_end_0
    .catch Lzi/o6; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lpi/c;->r(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/y0;->b:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method
