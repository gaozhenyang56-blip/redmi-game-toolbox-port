.class public Lzi/u2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;I)I
    .locals 1

    invoke-static {p0}, Lzi/i7;->a(Landroid/content/Context;)I

    move-result p0

    const/4 v0, -0x1

    if-ne v0, p0, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    const/16 p0, 0xd

    goto :goto_0

    :cond_1
    const/16 p0, 0xb

    :goto_0
    mul-int/2addr p1, p0

    div-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public static b(Lzi/q7;)I
    .locals 0

    invoke-virtual {p0}, Lzi/q7;->a()I

    move-result p0

    invoke-static {p0}, Lzi/p4;->a(I)I

    move-result p0

    return p0
.end method

.method public static c(Lzi/c9;Lzi/q7;)I
    .locals 2

    sget-object v0, Lzi/v2;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p1}, Lzi/q7;->a()I

    move-result p1

    invoke-static {p1}, Lzi/p4;->a(I)I

    move-result p1

    if-eqz p0, :cond_1

    :try_start_0
    instance-of v0, p0, Lzi/l8;

    if-eqz v0, :cond_0

    check-cast p0, Lzi/l8;

    invoke-virtual {p0}, Lzi/l8;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lzi/y4;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lzi/y4;->a(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lzi/k8;

    if-eqz v0, :cond_1

    check-cast p0, Lzi/k8;

    invoke-virtual {p0}, Lzi/k8;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lzi/y4;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lzi/y4;->a(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto/16 :goto_1

    :catch_0
    const-string p0, "PERF_ERROR : parse Command type error"

    invoke-static {p0}, Lpi/c;->D(Ljava/lang/String;)V

    :cond_1
    :goto_0
    move v1, p1

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lzi/q7;->a()I

    move-result p1

    invoke-static {p1}, Lzi/p4;->a(I)I

    move-result p1

    if-eqz p0, :cond_1

    :try_start_1
    instance-of v0, p0, Lzi/h8;

    if-eqz v0, :cond_2

    check-cast p0, Lzi/h8;

    iget-object p0, p0, Lzi/h8;->e:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lzi/p4;->j(Ljava/lang/String;)Lzi/a8;

    move-result-object v0

    invoke-static {v0}, Lzi/p4;->b(Ljava/lang/Enum;)I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lzi/p4;->j(Ljava/lang/String;)Lzi/a8;

    move-result-object p0

    invoke-static {p0}, Lzi/p4;->b(Ljava/lang/Enum;)I

    move-result p1

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lzi/q8;

    if-eqz v0, :cond_1

    check-cast p0, Lzi/q8;

    iget-object p0, p0, Lzi/q8;->e:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lzi/p4;->j(Ljava/lang/String;)Lzi/a8;

    move-result-object v0

    invoke-static {v0}, Lzi/p4;->b(Ljava/lang/Enum;)I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-static {p0}, Lzi/p4;->j(Ljava/lang/String;)Lzi/a8;

    move-result-object v0

    invoke-static {v0}, Lzi/p4;->b(Ljava/lang/Enum;)I

    move-result p1

    :cond_3
    sget-object v0, Lzi/a8;->C:Lzi/a8;

    invoke-static {p0}, Lzi/p4;->j(Ljava/lang/String;)Lzi/a8;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_1

    goto :goto_1

    :catch_1
    move v1, p1

    const-string p0, "PERF_ERROR : parse Notification type error"

    invoke-static {p0}, Lpi/c;->D(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lzi/q7;->a()I

    move-result p0

    invoke-static {p0}, Lzi/p4;->a(I)I

    move-result v1

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Ljava/lang/String;Landroid/content/Context;II)V
    .locals 7

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    invoke-static {p1, p3}, Lzi/u2;->a(Landroid/content/Context;I)I

    move-result p3

    sget-object v0, Lzi/a8;->C:Lzi/a8;

    invoke-static {v0}, Lzi/p4;->b(Ljava/lang/Enum;)I

    move-result v0

    if-eq p2, v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lzi/q4;->a(Landroid/content/Context;)Lzi/q4;

    move-result-object v0

    const-wide/16 v3, 0x1

    int-to-long v5, p3

    move-object v1, p0

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lzi/q4;->b(Ljava/lang/String;IJJ)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Landroid/content/Context;Lzi/m8;I)V
    .locals 2

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lzi/m8;->c()Lzi/q7;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lzi/u2;->b(Lzi/q7;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz p3, :cond_2

    invoke-static {p2}, Lzi/b9;->e(Lzi/c9;)[B

    move-result-object p2

    if-eqz p2, :cond_1

    array-length p2, p2

    move p3, p2

    goto :goto_0

    :cond_1
    move p3, v1

    :cond_2
    :goto_0
    invoke-static {p0, p1, v0, p3}, Lzi/u2;->d(Ljava/lang/String;Landroid/content/Context;II)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static f(Ljava/lang/String;Landroid/content/Context;Lzi/c9;Lzi/q7;I)V
    .locals 0

    invoke-static {p2, p3}, Lzi/u2;->c(Lzi/c9;Lzi/q7;)I

    move-result p2

    invoke-static {p0, p1, p2, p4}, Lzi/u2;->d(Ljava/lang/String;Landroid/content/Context;II)V

    return-void
.end method

.method public static g(Ljava/lang/String;Landroid/content/Context;[B)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length v0, p2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lzi/m8;

    invoke-direct {v0}, Lzi/m8;-><init>()V

    :try_start_0
    invoke-static {v0, p2}, Lzi/b9;->d(Lzi/c9;[B)V

    array-length p2, p2

    invoke-static {p0, p1, v0, p2}, Lzi/u2;->e(Ljava/lang/String;Landroid/content/Context;Lzi/m8;I)V
    :try_end_0
    .catch Lzi/h9; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "fail to convert bytes to container"

    invoke-static {p0}, Lpi/c;->n(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
