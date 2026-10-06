.class Lcom/xiaomi/push/service/XMPushService$d;
.super Lcom/xiaomi/push/service/XMPushService$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private b:Lzi/r5;

.field final synthetic c:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Lzi/r5;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$d;->c:Lcom/xiaomi/push/service/XMPushService;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    iput-object p2, p0, Lcom/xiaomi/push/service/XMPushService$d;->b:Lzi/r5;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "receive a message."

    return-object v0
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$d;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/i0;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$d;->b:Lzi/r5;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/i0;->a(Lzi/r5;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$d;->b:Lzi/r5;

    invoke-static {v0}, Lcom/xiaomi/push/service/f2;->a(Lzi/r5;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$d;->c:Lcom/xiaomi/push/service/XMPushService;

    new-instance v1, Lcom/xiaomi/push/service/u0$a;

    invoke-direct {v1}, Lcom/xiaomi/push/service/u0$a;-><init>()V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService$j;J)V

    :cond_0
    return-void
.end method
