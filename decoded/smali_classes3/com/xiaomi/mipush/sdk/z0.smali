.class public Lcom/xiaomi/mipush/sdk/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/xiaomi/mipush/sdk/z0;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/z0;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z0;
    .locals 2

    sget-object v0, Lcom/xiaomi/mipush/sdk/z0;->b:Lcom/xiaomi/mipush/sdk/z0;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/mipush/sdk/z0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/mipush/sdk/z0;->b:Lcom/xiaomi/mipush/sdk/z0;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/mipush/sdk/z0;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/z0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/mipush/sdk/z0;->b:Lcom/xiaomi/mipush/sdk/z0;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/xiaomi/mipush/sdk/z0;->b:Lcom/xiaomi/mipush/sdk/z0;

    return-object p0
.end method

.method public static b(Landroid/content/Context;Lzi/m8;)V
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/z0;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z0;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/mipush/sdk/z0;->d(Lzi/m8;IZ)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lzi/m8;Z)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/z0;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z0;

    move-result-object p0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mipush/sdk/z0;->d(Lzi/m8;IZ)V

    return-void
.end method

.method private d(Lzi/m8;IZ)V
    .locals 11

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/z0;->a:Landroid/content/Context;

    invoke-static {v0}, Lzi/p8;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lzi/p8;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lzi/m8;->a:Lzi/q7;

    sget-object v1, Lzi/q7;->f:Lzi/q7;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "click to start activity result:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lpi/c;->n(Ljava/lang/String;)V

    new-instance v1, Lzi/q8;

    invoke-virtual {p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object p3

    invoke-virtual {p3}, Lzi/d8;->d()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {v1, p3, v0}, Lzi/q8;-><init>(Ljava/lang/String;Z)V

    sget-object p3, Lzi/a8;->k0:Lzi/a8;

    iget-object p3, p3, Lzi/a8;->a:Ljava/lang/String;

    invoke-virtual {v1, p3}, Lzi/q8;->w(Ljava/lang/String;)Lzi/q8;

    invoke-virtual {p1}, Lzi/m8;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lzi/q8;->r(Ljava/lang/String;)Lzi/q8;

    iget-object p3, p1, Lzi/m8;->f:Ljava/lang/String;

    invoke-virtual {v1, p3}, Lzi/q8;->A(Ljava/lang/String;)Lzi/q8;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, v1, Lzi/q8;->h:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "result"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/z0;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/d0;->h(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/d0;

    move-result-object v0

    sget-object v2, Lzi/q7;->j:Lzi/q7;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p1, Lzi/m8;->f:Ljava/lang/String;

    iget-object v8, p1, Lzi/m8;->e:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/xiaomi/mipush/sdk/d0;->G(Lzi/c9;Lzi/q7;ZZLzi/d8;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public static e(Landroid/content/Context;Lzi/m8;Z)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/z0;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z0;

    move-result-object p0

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mipush/sdk/z0;->d(Lzi/m8;IZ)V

    return-void
.end method

.method public static f(Landroid/content/Context;Lzi/m8;Z)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/z0;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z0;

    move-result-object p0

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mipush/sdk/z0;->d(Lzi/m8;IZ)V

    return-void
.end method

.method public static g(Landroid/content/Context;Lzi/m8;Z)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/z0;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z0;

    move-result-object p0

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mipush/sdk/z0;->d(Lzi/m8;IZ)V

    return-void
.end method

.method public static h(Landroid/content/Context;Lzi/m8;Z)V
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->x()Z

    move-result v0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/z0;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z0;

    move-result-object p0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/z0;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/z0;

    move-result-object p0

    const/4 v0, 0x6

    :goto_1
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mipush/sdk/z0;->d(Lzi/m8;IZ)V

    return-void
.end method
