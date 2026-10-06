.class Lcom/xiaomi/push/service/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzi/q8;


# direct methods
.method constructor <init>(Lzi/q8;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/o1;->a:Lzi/q8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/push/service/o1;->a:Lzi/q8;

    invoke-virtual {v0}, Lzi/q8;->z()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/o1;->a:Lzi/q8;

    invoke-virtual {v1}, Lzi/q8;->q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/service/o1;->a:Lzi/q8;

    sget-object v3, Lzi/q7;->j:Lzi/q7;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/service/l;->f(Ljava/lang/String;Ljava/lang/String;Lzi/c9;Lzi/q7;)Lzi/m8;

    move-result-object v0

    invoke-static {v0}, Lzi/b9;->e(Lzi/c9;)[B

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/push/service/n1;->b()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/xiaomi/push/service/XMPushService;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/push/service/n1;->b()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, p0, Lcom/xiaomi/push/service/o1;->a:Lzi/q8;

    invoke-virtual {v2}, Lzi/q8;->z()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V

    goto :goto_0

    :cond_0
    const-string v0, "UNDatas UploadNotificationDatas failed because not xmsf"

    invoke-static {v0}, Lpi/c;->n(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
