.class Lcom/xiaomi/mipush/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/mipush/sdk/n$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/i;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/i;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/mipush/sdk/i;->d:Lcom/xiaomi/mipush/sdk/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/xiaomi/mipush/sdk/n;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/i;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/i;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/mipush/sdk/i;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/mipush/sdk/i;->d:Lcom/xiaomi/mipush/sdk/n$a;

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$b;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/n$a;)V

    return-void
.end method
