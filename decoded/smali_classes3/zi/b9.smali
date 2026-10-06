.class public Lzi/b9;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/xiaomi/push/service/a0;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/service/a0;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/a0;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/a0;->b(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    goto :goto_0

    :cond_0
    const/16 p0, 0x40

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)S
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lzi/m5;->i(Landroid/content/Context;Ljava/lang/String;Z)Lzi/m5$b;

    move-result-object v1

    invoke-virtual {v1}, Lzi/m5$b;->a()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p0}, Lzi/g;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    add-int/2addr v1, v2

    invoke-static {p0}, Lzi/g;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    invoke-static {p0}, Lcom/xiaomi/push/service/a0;->t(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x10

    :cond_2
    add-int/2addr v1, v0

    invoke-static {p0, p1, p2}, Lzi/b9;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    add-int/2addr v1, p0

    int-to-short p0, v1

    return p0
.end method

.method public static c(Landroid/content/Context;Lzi/m8;)S
    .locals 2

    invoke-virtual {p1}, Lzi/m8;->d()Lzi/d8;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lzi/d8;->e()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lzi/d8;->e()Ljava/util/Map;

    move-result-object v0

    const-string v1, "channel_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p1, Lzi/m8;->f:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lzi/b9;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)S

    move-result p0

    return p0
.end method

.method public static d(Lzi/c9;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lzi/c9<",
            "TT;*>;>(TT;[B)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lzi/g9;

    new-instance v1, Lzi/u9$a;

    array-length v2, p1

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v2}, Lzi/u9$a;-><init>(ZZI)V

    invoke-direct {v0, v1}, Lzi/g9;-><init>(Lzi/p9;)V

    invoke-virtual {v0, p0, p1}, Lzi/g9;->a(Lzi/c9;[B)V

    return-void

    :cond_0
    new-instance p0, Lzi/h9;

    const-string p1, "the message byte is empty."

    invoke-direct {p0, p1}, Lzi/h9;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lzi/c9;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lzi/c9<",
            "TT;*>;>(TT;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lzi/i9;

    new-instance v2, Lzi/j9$a;

    invoke-direct {v2}, Lzi/j9$a;-><init>()V

    invoke-direct {v1, v2}, Lzi/i9;-><init>(Lzi/p9;)V

    invoke-virtual {v1, p0}, Lzi/i9;->a(Lzi/c9;)[B

    move-result-object p0
    :try_end_0
    .catch Lzi/h9; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "convertThriftObjectToBytes catch TException."

    invoke-static {v1, p0}, Lpi/c;->p(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
