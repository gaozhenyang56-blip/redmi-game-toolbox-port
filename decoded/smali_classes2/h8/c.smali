.class public Lh8/c;
.super Lh8/b;
.source "SourceFile"


# instance fields
.field private d:I

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(III)V
    .locals 3

    invoke-direct {p0, p1}, Lh8/b;-><init>(I)V

    iput p3, p0, Lh8/c;->f:I

    iput p2, p0, Lh8/c;->d:I

    const/4 p1, 0x0

    const/4 p2, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xc

    goto :goto_0

    :pswitch_1
    const/16 p1, 0xb

    goto :goto_0

    :pswitch_2
    const/16 p1, 0xa

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x9

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x8

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x5

    :goto_0
    :pswitch_8
    iput p1, p0, Lh8/c;->g:I

    goto :goto_1

    :pswitch_9
    iput p2, p0, Lh8/c;->g:I

    goto :goto_1

    :pswitch_a
    iput v0, p0, Lh8/c;->g:I

    goto :goto_1

    :pswitch_b
    iput v1, p0, Lh8/c;->g:I

    goto :goto_1

    :pswitch_c
    iput v2, p0, Lh8/c;->g:I

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_9
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


# virtual methods
.method public g()I
    .locals 1

    iget v0, p0, Lh8/c;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lh8/c;->d:I

    return v0
.end method

.method public i()Z
    .locals 4

    invoke-static {}, Li8/c;->i()I

    move-result v0

    invoke-static {}, Lj8/p;->d()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget v0, p0, Lh8/c;->g:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget v1, p0, Lh8/c;->g:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method public j(Z)V
    .locals 0

    iput-boolean p1, p0, Lh8/c;->e:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onClick: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\tdisplay="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lh8/c;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\tstatus="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lj8/g;->g()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DispalyStyleDetailModel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lh8/c;->j(Z)V

    iget p1, p0, Lh8/c;->g:I

    invoke-static {p1}, Lj8/g;->s(I)V

    iget p1, p0, Lh8/c;->g:I

    invoke-static {p1}, Li8/c;->c0(I)V

    return-void
.end method
