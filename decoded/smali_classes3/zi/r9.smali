.class public Lzi/r9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lzi/n9;B)V
    .locals 1

    sget v0, Lzi/r9;->a:I

    invoke-static {p0, p1, v0}, Lzi/r9;->b(Lzi/n9;BI)V

    return-void
.end method

.method public static b(Lzi/n9;BI)V
    .locals 3

    if-lez p2, :cond_4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0}, Lzi/n9;->h()Lzi/l9;

    move-result-object p1

    :goto_0
    iget v1, p1, Lzi/l9;->b:I

    if-ge v0, v1, :cond_0

    iget-byte v1, p1, Lzi/l9;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lzi/r9;->b(Lzi/n9;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lzi/n9;->G()V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {p0}, Lzi/n9;->j()Lzi/s9;

    move-result-object p1

    :goto_1
    iget v1, p1, Lzi/s9;->b:I

    if-ge v0, v1, :cond_1

    iget-byte v1, p1, Lzi/s9;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lzi/r9;->b(Lzi/n9;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lzi/n9;->H()V

    goto :goto_4

    :pswitch_3
    invoke-virtual {p0}, Lzi/n9;->i()Lzi/m9;

    move-result-object p1

    :goto_2
    iget v1, p1, Lzi/m9;->c:I

    if-ge v0, v1, :cond_2

    iget-byte v1, p1, Lzi/m9;->a:B

    add-int/lit8 v2, p2, -0x1

    invoke-static {p0, v1, v2}, Lzi/r9;->b(Lzi/n9;BI)V

    iget-byte v1, p1, Lzi/m9;->b:B

    invoke-static {p0, v1, v2}, Lzi/r9;->b(Lzi/n9;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lzi/n9;->F()V

    goto :goto_4

    :pswitch_4
    invoke-virtual {p0}, Lzi/n9;->k()Lzi/t9;

    :goto_3
    invoke-virtual {p0}, Lzi/n9;->g()Lzi/k9;

    move-result-object p1

    iget-byte p1, p1, Lzi/k9;->b:B

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lzi/n9;->D()V

    goto :goto_4

    :cond_3
    add-int/lit8 v0, p2, -0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Lzi/r9;->b(Lzi/n9;BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lzi/n9;->E()V

    goto :goto_3

    :pswitch_5
    invoke-virtual {p0}, Lzi/n9;->f()Ljava/nio/ByteBuffer;

    goto :goto_4

    :pswitch_6
    invoke-virtual {p0}, Lzi/n9;->d()J

    goto :goto_4

    :pswitch_7
    invoke-virtual {p0}, Lzi/n9;->c()I

    goto :goto_4

    :pswitch_8
    invoke-virtual {p0}, Lzi/n9;->l()S

    goto :goto_4

    :pswitch_9
    invoke-virtual {p0}, Lzi/n9;->b()D

    goto :goto_4

    :pswitch_a
    invoke-virtual {p0}, Lzi/n9;->a()B

    goto :goto_4

    :pswitch_b
    invoke-virtual {p0}, Lzi/n9;->y()Z

    :goto_4
    return-void

    :cond_4
    new-instance p0, Lzi/h9;

    const-string p1, "Maximum skip depth exceeded"

    invoke-direct {p0, p1}, Lzi/h9;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
