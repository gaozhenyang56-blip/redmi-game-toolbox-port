.class public Lcom/xiaomi/push/service/k2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/k2$a;,
        Lcom/xiaomi/push/service/k2$b;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/push/service/k2$b;

.field private static b:Lcom/xiaomi/push/service/k2$a;


# direct methods
.method public static a(Lcom/xiaomi/push/service/k2$b;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/push/service/k2;->a:Lcom/xiaomi/push/service/k2$b;

    return-void
.end method

.method public static b(Lzi/q8;)Z
    .locals 2

    sget-object v0, Lcom/xiaomi/push/service/k2;->b:Lcom/xiaomi/push/service/k2$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lzi/ga;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lzi/p8;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "rc app not permission to cpra"

    :goto_0
    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    return v1

    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/k2;->b:Lcom/xiaomi/push/service/k2$a;

    invoke-interface {v0, p0}, Lcom/xiaomi/push/service/k2$a;->a(Lzi/q8;)Z

    move-result p0

    return p0

    :cond_2
    :goto_1
    const-string p0, "rc params is null, not cpra"

    goto :goto_0
.end method
