.class public Lcom/xiaomi/mipush/sdk/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static a(Landroid/content/Context;Lzi/c9;Lzi/q7;)Lzi/m8;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lzi/c9<",
            "TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lzi/q7;",
            ")",
            "Lzi/m8;"
        }
    .end annotation

    sget-object v0, Lzi/q7;->b:Lzi/q7;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/m0;->d()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/mipush/sdk/x;->b(Landroid/content/Context;Lzi/c9;Lzi/q7;ZLjava/lang/String;Ljava/lang/String;)Lzi/m8;

    move-result-object p0

    return-object p0
.end method

.method protected static b(Landroid/content/Context;Lzi/c9;Lzi/q7;ZLjava/lang/String;Ljava/lang/String;)Lzi/m8;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lzi/c9<",
            "TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lzi/q7;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lzi/m8;"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/x;->c(Landroid/content/Context;Lzi/c9;Lzi/q7;ZLjava/lang/String;Ljava/lang/String;Z)Lzi/m8;

    move-result-object p0

    return-object p0
.end method

.method protected static c(Landroid/content/Context;Lzi/c9;Lzi/q7;ZLjava/lang/String;Ljava/lang/String;Z)Lzi/m8;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lzi/c9<",
            "TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lzi/q7;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lzi/m8;"
        }
    .end annotation

    invoke-static {p1}, Lzi/b9;->e(Lzi/c9;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "invoke convertThriftObjectToBytes method, return null."

    :goto_0
    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v1, Lzi/m8;

    invoke-direct {v1}, Lzi/m8;-><init>()V

    if-eqz p3, :cond_2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/m0;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "regSecret is empty, return null"

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lzi/n0;->b(Ljava/lang/String;)[B

    move-result-object p0

    :try_start_0
    invoke-static {p0, p1}, Lzi/n6;->c([B[B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "encryption error. "

    invoke-static {p0}, Lpi/c;->D(Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance p0, Lzi/f8;

    invoke-direct {p0}, Lzi/f8;-><init>()V

    const-wide/16 v2, 0x5

    iput-wide v2, p0, Lzi/f8;->a:J

    const-string v0, "fakeid"

    iput-object v0, p0, Lzi/f8;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lzi/m8;->i(Lzi/f8;)Lzi/m8;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v1, p0}, Lzi/m8;->f(Ljava/nio/ByteBuffer;)Lzi/m8;

    invoke-virtual {v1, p2}, Lzi/m8;->g(Lzi/q7;)Lzi/m8;

    invoke-virtual {v1, p6}, Lzi/m8;->s(Z)Lzi/m8;

    invoke-virtual {v1, p4}, Lzi/m8;->r(Ljava/lang/String;)Lzi/m8;

    invoke-virtual {v1, p3}, Lzi/m8;->j(Z)Lzi/m8;

    invoke-virtual {v1, p5}, Lzi/m8;->e(Ljava/lang/String;)Lzi/m8;

    return-object v1
.end method

.method public static d(Landroid/content/Context;Lzi/m8;)Lzi/c9;
    .locals 1

    invoke-virtual {p1}, Lzi/m8;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/mipush/sdk/o0;->c:Lcom/xiaomi/mipush/sdk/o0;

    invoke-static {p0, p1, v0}, Lcom/xiaomi/mipush/sdk/s0;->j(Landroid/content/Context;Lzi/m8;Lcom/xiaomi/mipush/sdk/o0;)[B

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/m0;->c(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/m0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/m0;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lzi/n0;->b(Ljava/lang/String;)[B

    move-result-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lzi/m8;->o()[B

    move-result-object p0

    invoke-static {v0, p0}, Lzi/n6;->b([B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/xiaomi/mipush/sdk/b1;

    const-string v0, "the aes decrypt failed."

    invoke-direct {p1, v0, p0}, Lcom/xiaomi/mipush/sdk/b1;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lzi/m8;->o()[B

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lzi/m8;->c()Lzi/q7;

    move-result-object v0

    iget-boolean p1, p1, Lzi/m8;->c:Z

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/x;->e(Lzi/q7;Z)Lzi/c9;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1, p0}, Lzi/b9;->d(Lzi/c9;[B)V

    :cond_2
    return-object p1
.end method

.method private static e(Lzi/q7;Z)Lzi/c9;
    .locals 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/y;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lzi/l8;

    invoke-direct {p0}, Lzi/l8;-><init>()V

    return-object p0

    :pswitch_1
    if-eqz p1, :cond_0

    new-instance p0, Lzi/q8;

    invoke-direct {p0}, Lzi/q8;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lzi/h8;

    invoke-direct {p0}, Lzi/h8;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lzi/h8;->h(Z)V

    return-object p0

    :pswitch_2
    new-instance p0, Lzi/t8;

    invoke-direct {p0}, Lzi/t8;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lzi/l8;

    invoke-direct {p0}, Lzi/l8;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lzi/g8;

    invoke-direct {p0}, Lzi/g8;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lzi/u8;

    invoke-direct {p0}, Lzi/u8;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lzi/a9;

    invoke-direct {p0}, Lzi/a9;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lzi/w8;

    invoke-direct {p0}, Lzi/w8;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lzi/y8;

    invoke-direct {p0}, Lzi/y8;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lzi/s8;

    invoke-direct {p0}, Lzi/s8;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static f(Landroid/content/Context;Lzi/c9;Lzi/q7;ZLjava/lang/String;Ljava/lang/String;)Lzi/m8;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lzi/c9<",
            "TT;*>;>(",
            "Landroid/content/Context;",
            "TT;",
            "Lzi/q7;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lzi/m8;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/x;->c(Landroid/content/Context;Lzi/c9;Lzi/q7;ZLjava/lang/String;Ljava/lang/String;Z)Lzi/m8;

    move-result-object p0

    return-object p0
.end method
