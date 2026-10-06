.class final Lcom/xiaomi/push/service/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".permission.MIPUSH_RECEIVE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lzi/m8;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lzi/m8;->h:Lzi/d8;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lzi/d8;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "ext_traffic_source_pkg"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lzi/m8;->f:Ljava/lang/String;

    return-object p0
.end method

.method static c(Lcom/xiaomi/push/service/XMPushService;[B)Lzi/r5;
    .locals 1

    new-instance v0, Lzi/m8;

    invoke-direct {v0}, Lzi/m8;-><init>()V

    :try_start_0
    invoke-static {v0, p1}, Lzi/b9;->d(Lzi/c9;[B)V

    invoke-static {p0}, Lcom/xiaomi/push/service/w2;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/v2;

    move-result-object p1

    invoke-static {p1, p0, v0}, Lcom/xiaomi/push/service/l;->d(Lcom/xiaomi/push/service/v2;Landroid/content/Context;Lzi/m8;)Lzi/r5;

    move-result-object p0
    :try_end_0
    .catch Lzi/h9; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lpi/c;->r(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static d(Lcom/xiaomi/push/service/v2;Landroid/content/Context;Lzi/m8;)Lzi/r5;
    .locals 4

    :try_start_0
    new-instance p1, Lzi/r5;

    invoke-direct {p1}, Lzi/r5;-><init>()V

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lzi/r5;->h(I)V

    iget-object v0, p0, Lcom/xiaomi/push/service/v2;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lzi/r5;->B(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaomi/push/service/l;->b(Lzi/m8;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzi/r5;->v(Ljava/lang/String;)V

    const-string v0, "SECMSG"

    const-string v1, "message"

    invoke-virtual {p1, v0, v1}, Lzi/r5;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/v2;->a:Ljava/lang/String;

    iget-object v1, p2, Lzi/m8;->g:Lzi/f8;

    const/4 v2, 0x0

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lzi/f8;->b:Ljava/lang/String;

    iget-object v1, p2, Lzi/m8;->g:Lzi/f8;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lzi/f8;->d:Ljava/lang/String;

    invoke-static {p2}, Lzi/b9;->e(Lzi/c9;)[B

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/push/service/v2;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lzi/r5;->n([BLjava/lang/String;)V

    invoke-virtual {p1, v3}, Lzi/r5;->m(S)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "try send mi push message. packagename:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lzi/m8;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " action:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lzi/m8;->a:Lzi/q7;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-static {p0}, Lpi/c;->r(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)Lzi/m8;
    .locals 2

    new-instance v0, Lzi/q8;

    invoke-direct {v0}, Lzi/q8;-><init>()V

    invoke-virtual {v0, p1}, Lzi/q8;->r(Ljava/lang/String;)Lzi/q8;

    const-string v1, "package uninstalled"

    invoke-virtual {v0, v1}, Lzi/q8;->w(Ljava/lang/String;)Lzi/q8;

    invoke-static {}, Lzi/u6;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/q8;->e(Ljava/lang/String;)Lzi/q8;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzi/q8;->h(Z)Lzi/q8;

    sget-object v1, Lzi/q7;->j:Lzi/q7;

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/push/service/l;->f(Ljava/lang/String;Ljava/lang/String;Lzi/c9;Lzi/q7;)Lzi/m8;

    move-result-object p0

    return-object p0
.end method

.method static f(Ljava/lang/String;Ljava/lang/String;Lzi/c9;Lzi/q7;)Lzi/m8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lzi/c9<",
            "TT;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lzi/q7;",
            ")",
            "Lzi/m8;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/push/service/l;->g(Ljava/lang/String;Ljava/lang/String;Lzi/c9;Lzi/q7;Z)Lzi/m8;

    move-result-object p0

    return-object p0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;Lzi/c9;Lzi/q7;Z)Lzi/m8;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lzi/c9<",
            "TT;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lzi/q7;",
            "Z)",
            "Lzi/m8;"
        }
    .end annotation

    invoke-static {p2}, Lzi/b9;->e(Lzi/c9;)[B

    move-result-object p2

    new-instance v0, Lzi/m8;

    invoke-direct {v0}, Lzi/m8;-><init>()V

    new-instance v1, Lzi/f8;

    invoke-direct {v1}, Lzi/f8;-><init>()V

    const-wide/16 v2, 0x5

    iput-wide v2, v1, Lzi/f8;->a:J

    const-string v2, "fakeid"

    iput-object v2, v1, Lzi/f8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzi/m8;->i(Lzi/f8;)Lzi/m8;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lzi/m8;->f(Ljava/nio/ByteBuffer;)Lzi/m8;

    invoke-virtual {v0, p3}, Lzi/m8;->g(Lzi/q7;)Lzi/m8;

    invoke-virtual {v0, p4}, Lzi/m8;->s(Z)Lzi/m8;

    invoke-virtual {v0, p0}, Lzi/m8;->r(Ljava/lang/String;)Lzi/m8;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lzi/m8;->j(Z)Lzi/m8;

    invoke-virtual {v0, p1}, Lzi/m8;->e(Ljava/lang/String;)Lzi/m8;

    return-object v0
.end method

.method static h(Lcom/xiaomi/push/service/XMPushService;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/w2;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/v2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/push/service/w2;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/v2;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/xiaomi/push/service/v2;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/service/k0$b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare account. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/xiaomi/push/service/k0$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpi/c;->n(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/xiaomi/push/service/l;->i(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/k0$b;)V

    invoke-static {}, Lcom/xiaomi/push/service/k0;->c()Lcom/xiaomi/push/service/k0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/push/service/k0;->l(Lcom/xiaomi/push/service/k0$b;)V

    const v1, 0x2a300

    invoke-static {p0, v0, v1}, Lcom/xiaomi/push/service/l;->j(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/v2;I)V

    :cond_0
    return-void
.end method

.method static i(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/k0$b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/k0$b;->h(Landroid/os/Messenger;)V

    new-instance v0, Lcom/xiaomi/push/service/n;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/n;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/k0$b;->i(Lcom/xiaomi/push/service/k0$b$a;)V

    return-void
.end method

.method private static j(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/v2;I)V
    .locals 8

    invoke-static {p0}, Lcom/xiaomi/push/service/c1;->c(Landroid/content/Context;)Lcom/xiaomi/push/service/c1;

    move-result-object v0

    new-instance v7, Lcom/xiaomi/push/service/m;

    int-to-long v3, p2

    const-string v2, "MSAID"

    move-object v1, v7

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/push/service/m;-><init>(Ljava/lang/String;JLcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/service/v2;)V

    invoke-virtual {v0, v7}, Lcom/xiaomi/push/service/c1;->f(Lcom/xiaomi/push/service/c1$a;)V

    return-void
.end method

.method static k(Lcom/xiaomi/push/service/XMPushService;Ljava/lang/String;[B)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lzi/u2;->g(Ljava/lang/String;Landroid/content/Context;[B)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Lzi/c6;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lzi/c6;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p2}, Lcom/xiaomi/push/service/l;->c(Lcom/xiaomi/push/service/XMPushService;[B)Lzi/r5;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lzi/c6;->w(Lzi/r5;)V

    return-void

    :cond_0
    const v0, 0x42c1d83

    const-string v1, "not a valid message"

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaomi/push/service/z2;->b(Landroid/content/Context;Ljava/lang/String;[BILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Lzi/o6;

    const-string p1, "Don\'t support XMPP connection."

    invoke-direct {p0, p1}, Lzi/o6;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lzi/o6;

    const-string p1, "try send msg while connection is null."

    invoke-direct {p0, p1}, Lzi/o6;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static l(Lcom/xiaomi/push/service/XMPushService;Lzi/m8;)V
    .locals 3

    invoke-virtual {p1}, Lzi/m8;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, p1, v2}, Lzi/u2;->e(Ljava/lang/String;Landroid/content/Context;Lzi/m8;I)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/XMPushService;->a()Lzi/c6;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lzi/c6;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/xiaomi/push/service/w2;->b(Landroid/content/Context;)Lcom/xiaomi/push/service/v2;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/xiaomi/push/service/l;->d(Lcom/xiaomi/push/service/v2;Landroid/content/Context;Lzi/m8;)Lzi/r5;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lzi/c6;->w(Lzi/r5;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lzi/o6;

    const-string p1, "Don\'t support XMPP connection."

    invoke-direct {p0, p1}, Lzi/o6;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lzi/o6;

    const-string p1, "try send msg while connection is null."

    invoke-direct {p0, p1}, Lzi/o6;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static m(Ljava/lang/String;Ljava/lang/String;)Lzi/m8;
    .locals 2

    new-instance v0, Lzi/q8;

    invoke-direct {v0}, Lzi/q8;-><init>()V

    invoke-virtual {v0, p1}, Lzi/q8;->r(Ljava/lang/String;)Lzi/q8;

    sget-object v1, Lzi/a8;->i0:Lzi/a8;

    iget-object v1, v1, Lzi/a8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lzi/q8;->w(Ljava/lang/String;)Lzi/q8;

    invoke-static {}, Lcom/xiaomi/push/service/h0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzi/q8;->e(Ljava/lang/String;)Lzi/q8;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lzi/q8;->h(Z)Lzi/q8;

    sget-object v1, Lzi/q7;->j:Lzi/q7;

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/push/service/l;->f(Ljava/lang/String;Ljava/lang/String;Lzi/c9;Lzi/q7;)Lzi/m8;

    move-result-object p0

    return-object p0
.end method

.method static n(Ljava/lang/String;Ljava/lang/String;Lzi/c9;Lzi/q7;)Lzi/m8;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lzi/c9<",
            "TT;*>;>(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Lzi/q7;",
            ")",
            "Lzi/m8;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaomi/push/service/l;->g(Ljava/lang/String;Ljava/lang/String;Lzi/c9;Lzi/q7;Z)Lzi/m8;

    move-result-object p0

    return-object p0
.end method
