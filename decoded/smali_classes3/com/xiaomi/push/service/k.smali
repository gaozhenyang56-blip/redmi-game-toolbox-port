.class public Lcom/xiaomi/push/service/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/k$a;,
        Lcom/xiaomi/push/service/k$b;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/push/service/k$a;

.field private static b:Lcom/xiaomi/push/service/k$b;


# direct methods
.method public static a(Landroid/content/Context;Lzi/m8;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lzi/m8;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/push/service/k$a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/service/k$a;->a(Landroid/content/Context;Lzi/m8;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "pepa listener or container is null"

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lzi/m8;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/push/service/k$a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/service/k$a;->a(Landroid/content/Context;Lzi/m8;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "handle msg wrong"

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static c(Landroid/content/Context;Lzi/m8;Lzi/q8;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/push/service/k$a;

    if-nez v0, :cond_0

    const-string p0, "The Listener of EventProcessor must be set. Please check extension plugin initialization."

    invoke-static {p0}, Lpi/c;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/push/service/k$a;->c(Landroid/content/Context;Lzi/m8;Lzi/q8;)V

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/k$b;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lcom/xiaomi/push/service/k$b;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "pepa clearMessage is null"

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static e(Lzi/m8;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/k$b;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lcom/xiaomi/push/service/k$b;->a(Lzi/m8;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "pepa clearMessage is null"

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static f(Landroid/content/Context;Lzi/m8;Z)Z
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/k;->a:Lcom/xiaomi/push/service/k$a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/xiaomi/push/service/k$a;->b(Landroid/content/Context;Lzi/m8;Z)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "pepa judement listener or container is null"

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static g(Lzi/m8;)Z
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/k;->b:Lcom/xiaomi/push/service/k$b;

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lcom/xiaomi/push/service/k$b;->a(Lzi/m8;)Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "pepa handleReceiveMessage is null"

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_1
    return p0
.end method
