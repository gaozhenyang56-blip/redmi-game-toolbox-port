.class Lcom/xiaomi/mipush/sdk/q0;
.super Lcom/xiaomi/push/service/e0$a;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/xiaomi/mipush/sdk/p0;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/p0;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/q0;->c:Lcom/xiaomi/mipush/sdk/p0;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/push/service/e0$a;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q0;->c:Lcom/xiaomi/mipush/sdk/p0;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/p0;->a(Lcom/xiaomi/mipush/sdk/p0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v0

    sget-object v1, Lzi/v7;->u0:Lzi/v7;

    invoke-virtual {v1}, Lzi/v7;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/e0;->m(IZ)Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/q0;->c:Lcom/xiaomi/mipush/sdk/p0;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/p0;->i(Lcom/xiaomi/mipush/sdk/p0;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/q0;->c:Lcom/xiaomi/mipush/sdk/p0;

    invoke-static {v1, v0}, Lcom/xiaomi/mipush/sdk/p0;->j(Lcom/xiaomi/mipush/sdk/p0;Z)Z

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/q0;->c:Lcom/xiaomi/mipush/sdk/p0;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/p0;->a(Lcom/xiaomi/mipush/sdk/p0;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/s0;->l(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
