.class public Lcom/xiaomi/push/service/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lzi/m8;)Lzi/c9;
    .locals 1

    invoke-virtual {p1}, Lzi/m8;->v()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lzi/m8;->o()[B

    move-result-object p0

    invoke-virtual {p1}, Lzi/m8;->c()Lzi/q7;

    move-result-object v0

    iget-boolean p1, p1, Lzi/m8;->c:Z

    invoke-static {v0, p1}, Lcom/xiaomi/push/service/l1;->b(Lzi/q7;Z)Lzi/c9;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1, p0}, Lzi/b9;->d(Lzi/c9;[B)V

    :cond_1
    return-object p1
.end method

.method private static b(Lzi/q7;Z)Lzi/c9;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/m1;->a:[I

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
