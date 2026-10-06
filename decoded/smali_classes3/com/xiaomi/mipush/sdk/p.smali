.class public Lcom/xiaomi/mipush/sdk/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mipush/sdk/p$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lzi/u7;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MiTinyDataClient.upload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzi/u7;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpi/c;->B(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/mipush/sdk/p$a;->b()Lcom/xiaomi/mipush/sdk/p$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/p$a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/p$a;->b()Lcom/xiaomi/mipush/sdk/p$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/mipush/sdk/p$a;->c(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/mipush/sdk/p$a;->b()Lcom/xiaomi/mipush/sdk/p$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/mipush/sdk/p$a;->g(Lzi/u7;)Z

    move-result p0

    return p0
.end method
