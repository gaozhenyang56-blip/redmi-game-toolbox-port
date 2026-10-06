.class Lcom/xiaomi/push/service/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzi/h6;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/p1;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lzi/u6;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/push/service/p1;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$m;

    invoke-direct {v1, v0, p1}, Lcom/xiaomi/push/service/XMPushService$m;-><init>(Lcom/xiaomi/push/service/XMPushService;Lzi/u6;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    return-void
.end method

.method public b(Lzi/r5;)V
    .locals 7

    invoke-static {p1}, Lcom/xiaomi/push/service/f2;->a(Lzi/r5;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/u0;->a()Lcom/xiaomi/push/service/u0;

    move-result-object v1

    invoke-virtual {p1}, Lzi/r5;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v0, p0, Lcom/xiaomi/push/service/p1;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->a()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/xiaomi/push/service/u0;->d(Ljava/lang/String;JJ)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/service/p1;->a:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/XMPushService$d;

    invoke-direct {v1, v0, p1}, Lcom/xiaomi/push/service/XMPushService$d;-><init>(Lcom/xiaomi/push/service/XMPushService;Lzi/r5;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;)V

    return-void
.end method
