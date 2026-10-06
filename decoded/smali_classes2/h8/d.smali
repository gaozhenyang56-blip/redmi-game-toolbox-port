.class public Lh8/d;
.super Lh8/b;
.source "SourceFile"


# instance fields
.field private d:I

.field private e:I

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1}, Lh8/b;-><init>(I)V

    iput p3, p0, Lh8/d;->g:I

    iput p2, p0, Lh8/d;->d:I

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lh8/d;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lh8/d;->d:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lh8/d;->e:I

    return v0
.end method

.method public j()I
    .locals 2

    iget v0, p0, Lh8/d;->g:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-static {}, Li8/c;->h()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-static {}, Li8/c;->w()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public k(I)V
    .locals 0

    iput p1, p0, Lh8/d;->e:I

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lh8/d;->f:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: funcId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh8/d;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tlevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh8/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolbySettingsModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lh8/d;->g:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lj8/k;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    iget p1, p0, Lh8/d;->e:I

    invoke-static {p1}, La8/t;->A(I)V

    iget p1, p0, Lh8/d;->e:I

    invoke-static {p1}, Li8/c;->z0(I)V

    goto :goto_0

    :pswitch_1
    iget p1, p0, Lh8/d;->e:I

    invoke-static {p1}, La8/t;->v(I)V

    iget p1, p0, Lh8/d;->e:I

    invoke-static {p1}, Li8/c;->b0(I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lj8/p;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/p;->n()Z

    invoke-static {}, Li8/c;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lh8/d;->f:Z

    invoke-static {p1}, La8/t;->w(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apply fw audio, dolby to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lh8/d;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lj8/m;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lj8/m;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lj8/m;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->i(I)V

    :cond_2
    invoke-static {}, Lj8/m;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lj8/m;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lj8/m;->q(Landroid/content/Context;Z)V

    :cond_3
    iget-boolean p1, p0, Lh8/d;->f:Z

    invoke-static {p1}, La8/t;->w(Z)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
