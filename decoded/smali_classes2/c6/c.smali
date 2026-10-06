.class public Lc6/c;
.super Lh8/h;
.source "SourceFile"


# instance fields
.field private i:Z


# direct methods
.method public constructor <init>(IILg8/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lh8/h;-><init>(IILg8/a;)V

    invoke-virtual {p0}, Lc6/c;->p()V

    return-void
.end method

.method private r()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc6/c;->q(Z)V

    sget-object v0, Lc6/c$a;->a:[I

    invoke-virtual {p0}, Lh8/h;->j()Lg8/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lc6/c;->s(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lc6/c;->o()Z

    move-result v0

    invoke-static {v0}, Lw5/f;->w0(Z)V

    invoke-virtual {p0}, Lc6/c;->o()Z

    move-result v0

    invoke-static {v0}, Lw5/f;->Q0(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->P()Ld6/a;

    move-result-object v0

    invoke-virtual {v0}, Ld6/a;->p()V

    invoke-virtual {p0}, Lc6/c;->o()Z

    move-result v0

    invoke-static {v0}, Ld6/a;->n(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lc6/c;->o()Z

    move-result v0

    invoke-static {v0}, Lw5/f;->L0(Z)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop effect by conflict handle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lh8/h;->j()Lg8/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConversationModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private s(Landroid/content/Context;)V
    .locals 5

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    invoke-static {v0}, Lw5/f;->Z(Lw5/a;)Z

    move-result v1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lw5/f;->S(Lw5/a;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    invoke-static {}, Lw5/f;->b0()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/miui/gamebooster/beauty/a;->k()Lcom/miui/gamebooster/beauty/a;

    move-result-object p1

    new-instance v0, Lc6/b;

    invoke-direct {v0, p0}, Lc6/b;-><init>(Lc6/c;)V

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/beauty/a;->o(Lb6/c;)V

    invoke-static {v3}, Lw5/f;->B0(Z)V

    return-void

    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/gamebooster/beauty/a;->k()Lcom/miui/gamebooster/beauty/a;

    move-result-object v2

    const v4, 0x7f1203c0

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/miui/gamebooster/beauty/a;->p(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2, v0}, Lw5/f;->S0(ZLw5/a;)V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Lw5/f;->R0(Z)V

    return-void

    :cond_2
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lw5/f;->d0(Lw5/a;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    invoke-static {}, Lcom/miui/gamebooster/beauty/a;->k()Lcom/miui/gamebooster/beauty/a;

    move-result-object v2

    const v4, 0x7f1203bf

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/miui/gamebooster/beauty/a;->p(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    xor-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2, v0}, Lw5/f;->S0(ZLw5/a;)V

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object p1

    xor-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Lw5/f;->R0(Z)V

    return-void
.end method


# virtual methods
.method public c()I
    .locals 2

    sget-object v0, Lc6/c$a;->a:[I

    invoke-virtual {p0}, Lh8/h;->j()Lg8/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lh8/b;->c()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lc6/c;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1205ae

    return v0

    :cond_1
    invoke-super {p0}, Lh8/b;->c()I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 4

    invoke-virtual {p0}, Lh8/h;->j()Lg8/a;

    move-result-object v0

    invoke-static {}, Lx5/p;->V()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Ld6/d;->l:Ld6/d$b;

    invoke-virtual {v1}, Ld6/d$b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v1

    invoke-virtual {v1}, Lx5/p;->W()Ld6/d;

    move-result-object v1

    invoke-virtual {v1}, Ld6/d;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lc6/c$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lh8/h;->d()Z

    move-result v0

    return v0

    :pswitch_0
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->n0()Z

    move-result v0

    return v0

    :pswitch_1
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->W()Ld6/d;

    move-result-object v0

    invoke-virtual {v0}, Ld6/d;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    sget-object v3, Lw5/a$a;->p:Lw5/a$a;

    invoke-virtual {v0, v3}, Lx5/p;->K0(Lw5/a$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    return v2

    :pswitch_2
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    sget-object v1, Lw5/a$a;->l:Lw5/a$a;

    invoke-virtual {v0, v1}, Lx5/p;->K0(Lw5/a$a;)Z

    move-result v0

    return v0

    :pswitch_3
    return v1

    :pswitch_4
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    sget-object v3, Lw5/a$a;->f:Lw5/a$a;

    invoke-virtual {v0, v3}, Lx5/p;->K0(Lw5/a$a;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    sget-object v3, Lw5/a$a;->e:Lw5/a$a;

    invoke-virtual {v0, v3}, Lx5/p;->K0(Lw5/a$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    return v2

    :pswitch_5
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    sget-object v3, Lw5/a$a;->j:Lw5/a$a;

    invoke-virtual {v0, v3}, Lx5/p;->K0(Lw5/a$a;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->n0()Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v1

    :cond_4
    return v2

    :pswitch_6
    invoke-static {}, Lx5/p;->M0()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->n0()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v2}, Lz5/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    return v2

    :cond_6
    invoke-static {}, Lx5/p;->D0()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    sget-object v3, Lw5/a$a;->h:Lw5/a$a;

    invoke-virtual {v0, v3}, Lx5/p;->K0(Lw5/a$a;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->n0()Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v1

    :cond_7
    return v2

    :cond_8
    invoke-static {}, Lj8/k;->h()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    sget-object v3, Lw5/a$a;->h:Lw5/a$a;

    invoke-virtual {v0, v3}, Lx5/p;->K0(Lw5/a$a;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->n0()Z

    move-result v0

    if-eqz v0, :cond_9

    move v2, v1

    :cond_9
    return v2

    :pswitch_7
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/g0;->p(Landroid/content/Context;)Z

    move-result v0

    return v0

    :pswitch_8
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    sget-object v1, Lw5/a$a;->g:Lw5/a$a;

    invoke-virtual {v0, v1}, Lx5/p;->K0(Lw5/a$a;)Z

    move-result v0

    return v0

    :pswitch_9
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    sget-object v1, Lw5/a$a;->d:Lw5/a$a;

    invoke-virtual {v0, v1}, Lx5/p;->K0(Lw5/a$a;)Z

    move-result v0

    return v0

    :pswitch_a
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    sget-object v1, Lw5/a$a;->c:Lw5/a$a;

    invoke-virtual {v0, v1}, Lx5/p;->K0(Lw5/a$a;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h(ILandroid/view/View;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly5/c$a;

    iget-object p2, p1, Ly5/c$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc6/c;->d()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p2, p1, Ly5/c$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc6/c;->o()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p2, p1, Ly5/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc6/c;->d()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p2, p1, Ly5/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc6/c;->o()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p2, p1, Ly5/c$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lh8/h;->i()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p2, p1, Ly5/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lc6/c;->c()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p2, p1, Ly5/c$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lh8/h;->j()Lg8/a;

    move-result-object v0

    sget-object v1, Lg8/a;->y:Lg8/a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lh8/h;->j()Lg8/a;

    move-result-object v0

    sget-object v1, Lg8/a;->o:Lg8/a;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lh8/h;->j()Lg8/a;

    move-result-object v0

    sget-object v1, Lg8/a;->s:Lg8/a;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lx5/p;->M0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p1, Ly5/c$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc6/c;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lc6/c;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p1, Ly5/c$a;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc6/c;->d()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public n(Lg8/a;)V
    .locals 1

    sget-object v0, Lc6/c$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc6/c;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lc6/c;->r()V

    :cond_1
    :goto_0
    return-void
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lc6/c;->i:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lh8/h;->j()Lg8/a;

    move-result-object v0

    sget-object v1, Lc6/c$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    :pswitch_1
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    invoke-virtual {p1}, Lx5/p;->L()Ld6/b;

    move-result-object p1

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ld6/b;->i()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lc6/c;->q(Z)V

    invoke-virtual {p1, v1, v0}, Ld6/b;->l(ZLjava/lang/String;)V

    if-eqz v1, :cond_4

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    invoke-virtual {p1}, Lx5/p;->W()Ld6/d;

    move-result-object p1

    invoke-virtual {p1}, Ld6/d;->p()V

    :goto_0
    invoke-virtual {p0}, Lh8/b;->e()V

    goto/16 :goto_5

    :pswitch_3
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    invoke-virtual {p1}, Lx5/p;->Q()Ld6/c;

    move-result-object p1

    invoke-virtual {p1}, Ld6/c;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lc6/c;->q(Z)V

    if-eqz v0, :cond_0

    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v1

    invoke-virtual {v1}, Lx5/p;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ld6/c;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ld6/c;->i()V

    goto/16 :goto_5

    :pswitch_4
    iget-boolean p1, p0, Lc6/c;->i:Z

    const-string v0, "conference_toolbox_screen_translate"

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1, v0}, Lj8/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1, v0}, Lj8/a;->j(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    iget-boolean p1, p0, Lc6/c;->i:Z

    goto :goto_2

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lc6/c;->s(Landroid/content/Context;)V

    invoke-virtual {p0}, Lc6/c;->o()Z

    move-result p1

    :goto_2
    xor-int/lit8 p1, p1, 0x1

    :goto_3
    invoke-virtual {p0, p1}, Lc6/c;->q(Z)V

    goto :goto_5

    :pswitch_6
    invoke-static {}, Lx5/p;->L0()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lx5/p;->z1(Z)V

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lj8/u;->M(Z)V

    goto :goto_2

    :pswitch_7
    invoke-static {}, Lx5/p;->M0()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {p0}, Lc6/c;->o()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx5/p;->C(Z)V

    goto :goto_3

    :pswitch_8
    invoke-static {}, Lj8/a;->g()Z

    move-result v0

    const-string v1, "conference_toolbox"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez v0, :cond_3

    invoke-static {p1, v1}, Lj8/a;->k(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lh8/b;->e()V

    goto :goto_4

    :cond_3
    invoke-static {p1, v1}, Lj8/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_4
    invoke-static {}, Lj8/a;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    xor-int/lit8 p1, v0, 0x1

    goto :goto_3

    :pswitch_9
    invoke-static {}, Lw5/f;->W()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lw5/f;->w0(Z)V

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lw5/f;->Q0(Z)V

    goto :goto_2

    :pswitch_a
    invoke-static {}, Lw5/f;->H()Z

    move-result p1

    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Lw5/f;->L0(Z)V

    goto :goto_2

    :cond_4
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public p()V
    .locals 2

    invoke-virtual {p0}, Lh8/h;->j()Lg8/a;

    move-result-object v0

    sget-object v1, Lc6/c$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->L()Ld6/b;

    move-result-object v0

    invoke-virtual {v0}, Ld6/b;->i()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->W()Ld6/d;

    move-result-object v0

    invoke-virtual {v0}, Ld6/d;->l()Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lx5/p;->t0()Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->Q()Ld6/c;

    move-result-object v0

    invoke-virtual {v0}, Ld6/c;->e()Z

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "conference_toolbox_screen_translate"

    invoke-static {v0, v1}, Lj8/a;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lw5/f;->p()Lw5/f;

    move-result-object v0

    invoke-virtual {v0}, Lw5/f;->l()Lw5/a;

    move-result-object v0

    invoke-static {v0}, Lw5/f;->Z(Lw5/a;)Z

    move-result v0

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lx5/p;->L0()Z

    move-result v0

    goto :goto_0

    :pswitch_7
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v0

    invoke-virtual {v0}, Lx5/p;->x0()Z

    move-result v0

    goto :goto_0

    :pswitch_8
    invoke-static {}, Lj8/a;->g()Z

    move-result v0

    goto :goto_0

    :pswitch_9
    invoke-static {}, Lw5/f;->W()Z

    move-result v0

    goto :goto_0

    :pswitch_a
    invoke-static {}, Ld6/a;->d()Z

    move-result v0

    goto :goto_0

    :pswitch_b
    invoke-static {}, Lw5/f;->H()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lc6/c;->q(Z)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
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

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lc6/c;->i:Z

    return-void
.end method
