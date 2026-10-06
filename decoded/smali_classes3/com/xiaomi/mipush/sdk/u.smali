.class public Lcom/xiaomi/mipush/sdk/u;
.super Lzi/h$a;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lzi/h$a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/mipush/sdk/u;->b:Z

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/u;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "2"

    return-object v0
.end method

.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/u;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/e0;->d(Landroid/content/Context;)Lcom/xiaomi/push/service/e0;

    move-result-object v0

    new-instance v1, Lzi/i8;

    invoke-direct {v1}, Lzi/i8;-><init>()V

    iget-boolean v2, p0, Lcom/xiaomi/mipush/sdk/u;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lzi/i8;->b(I)Lzi/i8;

    invoke-virtual {v1, v3}, Lzi/i8;->g(I)Lzi/i8;

    goto :goto_0

    :cond_0
    sget-object v2, Lzi/w7;->b:Lzi/w7;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/f0;->a(Lcom/xiaomi/push/service/e0;Lzi/w7;)I

    move-result v2

    invoke-virtual {v1, v2}, Lzi/i8;->b(I)Lzi/i8;

    sget-object v2, Lzi/w7;->c:Lzi/w7;

    invoke-static {v0, v2}, Lcom/xiaomi/push/service/f0;->a(Lcom/xiaomi/push/service/e0;Lzi/w7;)I

    move-result v0

    invoke-virtual {v1, v0}, Lzi/i8;->g(I)Lzi/i8;

    :goto_0
    new-instance v0, Lzi/q8;

    const-string v2, "-1"

    invoke-direct {v0, v2, v3}, Lzi/q8;-><init>(Ljava/lang/String;Z)V

    sget-object v2, Lzi/a8;->q:Lzi/a8;

    iget-object v2, v2, Lzi/a8;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lzi/q8;->w(Ljava/lang/String;)Lzi/q8;

    invoke-static {v1}, Lzi/b9;->e(Lzi/c9;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lzi/q8;->i([B)Lzi/q8;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "-->check version: checkMessage="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "OcVersionCheckJob"

    invoke-static {v1, v2}, Lpi/c;->A(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/u;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v1

    sget-object v2, Lzi/q7;->j:Lzi/q7;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/mipush/sdk/d0;->z(Lzi/c9;Lzi/q7;Lzi/d8;)V

    return-void
.end method
