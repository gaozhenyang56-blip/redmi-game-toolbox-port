.class Lcom/xiaomi/mipush/sdk/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzi/u7;

.field final synthetic b:Lcom/xiaomi/mipush/sdk/p$a$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/p$a$a;Lzi/u7;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/h1;->b:Lcom/xiaomi/mipush/sdk/p$a$a;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/h1;->a:Lzi/u7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/h1;->b:Lcom/xiaomi/mipush/sdk/p$a$a;

    iget-object v0, v0, Lcom/xiaomi/mipush/sdk/p$a$a;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/h1;->a:Lzi/u7;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/h1;->b:Lcom/xiaomi/mipush/sdk/p$a$a;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/p$a$a;->d(Lcom/xiaomi/mipush/sdk/p$a$a;)V

    return-void
.end method
