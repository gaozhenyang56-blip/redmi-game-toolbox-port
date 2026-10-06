.class Lcom/xiaomi/push/service/m;
.super Lcom/xiaomi/push/service/c1$a;
.source "SourceFile"


# instance fields
.field final synthetic c:Lcom/xiaomi/push/service/XMPushService;

.field final synthetic d:Lcom/xiaomi/push/service/v2;


# direct methods
.method constructor <init>(Ljava/lang/String;JLcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/v2;)V
    .locals 0

    iput-object p4, p0, Lcom/xiaomi/push/service/m;->c:Lcom/xiaomi/push/service/XMPushService;

    iput-object p5, p0, Lcom/xiaomi/push/service/m;->d:Lcom/xiaomi/push/service/v2;

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/c1$a;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method a(Lcom/xiaomi/push/service/c1;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lzi/x;->c(Landroid/content/Context;)Lzi/x;

    move-result-object v0

    const-string v1, "MSAID"

    const-string v2, "msaid"

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/push/service/c1;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lzi/x;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v1, v2, v4}, Lcom/xiaomi/push/service/c1;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lzi/q8;

    invoke-direct {p1}, Lzi/q8;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/push/service/m;->d:Lcom/xiaomi/push/service/v2;

    iget-object v1, v1, Lcom/xiaomi/push/service/v2;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lzi/q8;->r(Ljava/lang/String;)Lzi/q8;

    sget-object v1, Lzi/a8;->h:Lzi/a8;

    iget-object v1, v1, Lzi/a8;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lzi/q8;->w(Ljava/lang/String;)Lzi/q8;

    invoke-static {}, Lcom/xiaomi/push/service/h0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lzi/q8;->e(Ljava/lang/String;)Lzi/q8;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v1}, Lzi/q8;->g(Ljava/util/Map;)Lzi/q8;

    invoke-virtual {p1}, Lzi/q8;->c()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/x;->e(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/m;->d:Lcom/xiaomi/push/service/v2;

    iget-object v1, v1, Lcom/xiaomi/push/service/v2;->d:Ljava/lang/String;

    sget-object v2, Lzi/q7;->j:Lzi/q7;

    invoke-static {v0, v1, p1, v2}, Lcom/xiaomi/push/service/l;->f(Ljava/lang/String;Ljava/lang/String;Lzi/c9;Lzi/q7;)Lzi/m8;

    move-result-object p1

    invoke-static {p1}, Lzi/b9;->e(Lzi/c9;)[B

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/push/service/m;->c:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V

    :cond_0
    return-void
.end method
