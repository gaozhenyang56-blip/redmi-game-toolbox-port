.class public Lh8/h;
.super Lh8/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh8/h$c;
    }
.end annotation


# instance fields
.field private d:I

.field private e:Lg8/a;

.field private f:Z

.field private g:Z

.field private final h:I


# direct methods
.method public constructor <init>(IILg8/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lh8/b;-><init>(I)V

    const/16 p1, 0x12c

    iput p1, p0, Lh8/h;->h:I

    iput p2, p0, Lh8/h;->d:I

    iput-object p3, p0, Lh8/h;->e:Lg8/a;

    return-void
.end method

.method private g(Ld8/f$d;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/g1;->n(Landroid/content/Context;)La8/g1;

    move-result-object v0

    invoke-virtual {v0}, La8/g1;->q()Z

    move-result v1

    iget-object v2, p1, Ld8/f$d;->c:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v2, p1, Ld8/f$d;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    iget-object v2, p1, Ld8/f$d;->b:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, La8/g1;->m()Z

    move-result v1

    iget-object v2, p1, Ld8/f$d;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v2, p1, Ld8/f$d;->d:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_4
    new-instance v1, Lh8/h$a;

    invoke-direct {v1, p0, p1}, Lh8/h$a;-><init>(Lh8/h;Ld8/f$d;)V

    invoke-virtual {v0, v1}, La8/g1;->x(Ls5/b;)V

    :cond_5
    return-void
.end method

.method private k(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, La8/t;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La8/t;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lj8/m;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lj8/m;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/m;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->i(I)V

    :cond_0
    invoke-static {}, Lj8/m;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lj8/m;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, v1}, Lj8/m;->q(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public d()Z
    .locals 4

    sget-object v0, Lh8/h$b;->a:[I

    iget-object v1, p0, Lh8/h;->e:Lg8/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-static {}, La8/u;->a()Z

    move-result v0

    return v0

    :pswitch_1
    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj8/u;->t(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_2
    invoke-static {}, La8/g0;->z()Z

    move-result v0

    return v0

    :pswitch_3
    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj8/u;->v(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v0}, Lj8/u;->s(Ljava/lang/String;)Z

    move-result v0

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :pswitch_4
    iget-boolean v0, p0, Lh8/h;->g:Z

    if-nez v0, :cond_2

    invoke-static {}, La8/t;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, La8/t;->j()Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :pswitch_5
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lj8/m;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1

    :pswitch_6
    invoke-static {}, Lj8/g;->p()Z

    move-result v0

    return v0

    :pswitch_7
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, La8/g0;->p(Landroid/content/Context;)Z

    move-result v0

    return v0

    :pswitch_8
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lj8/n;->c(Landroid/content/Context;)Z

    move-result v0

    return v0

    :pswitch_9
    return v2

    :pswitch_a
    invoke-static {}, Lx4/z1;->y()I

    move-result v0

    if-nez v0, :cond_5

    move v1, v2

    :cond_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public h(ILandroid/view/View;)V
    .locals 10

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x2000000

    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {p0}, Lh8/h;->d()Z

    move-result v0

    sget-object v1, Lh8/h$b;->a:[I

    iget-object v2, p0, Lh8/h;->e:Lg8/a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_e

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ld8/f$d;

    if-nez v1, :cond_2

    goto/16 :goto_e

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld8/f$d;

    invoke-static {}, Lj8/p;->d()Z

    move-result v2

    iget-object v3, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_d

    iget v6, p0, Lh8/h;->d:I

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, p0, Lh8/h;->e:Lg8/a;

    sget-object v6, Lg8/a;->e:Lg8/a;

    if-ne v3, v6, :cond_4

    iget-object v3, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    invoke-static {}, Li8/c;->i()I

    move-result v6

    if-eqz v6, :cond_3

    :goto_0
    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v5

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_4

    :cond_4
    sget-object v6, Lg8/a;->m:Lg8/a;

    if-ne v3, v6, :cond_5

    iget-object v3, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    invoke-static {}, La8/t;->k()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_5
    sget-object v6, Lg8/a;->g:Lg8/a;

    if-ne v3, v6, :cond_9

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lj8/u;->v(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v3}, Lj8/u;->s(Ljava/lang/String;)Z

    move-result v3

    iget-object v7, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    if-nez v2, :cond_8

    if-eqz v6, :cond_6

    invoke-static {}, Li8/c;->K()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    if-eqz v3, :cond_8

    invoke-static {}, Li8/c;->V()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    move v3, v4

    goto :goto_2

    :cond_8
    move v3, v5

    :goto_2
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_4

    :cond_9
    sget-object v6, Lg8/a;->l:Lg8/a;

    if-ne v3, v6, :cond_b

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lj8/u;->t(Ljava/lang/String;)Z

    move-result v3

    iget-object v6, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    if-nez v2, :cond_a

    if-eqz v3, :cond_a

    invoke-static {}, Li8/c;->I()Z

    move-result v3

    if-eqz v3, :cond_a

    move v3, v4

    goto :goto_3

    :cond_a
    move v3, v5

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_4

    :cond_b
    sget-object v6, Lg8/a;->j:Lg8/a;

    if-ne v3, v6, :cond_c

    iget-object v3, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lh8/h;->f:Z

    goto :goto_1

    :cond_c
    sget-object v6, Lg8/a;->w:Lg8/a;

    if-ne v3, v6, :cond_d

    iget-object v3, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    invoke-static {}, La8/u;->a()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, La8/u;->b()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_d
    :goto_4
    iget-object v3, v1, Ld8/f$d;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lh8/h;->e:Lg8/a;

    sget-object v6, Lg8/a;->k:Lg8/a;

    if-ne v3, v6, :cond_12

    if-nez v2, :cond_f

    invoke-static {}, Lj8/g;->d()I

    move-result v3

    invoke-static {}, Li8/c;->J()Z

    move-result v6

    if-eqz v6, :cond_e

    if-lez v3, :cond_e

    iget-object v6, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    const v7, 0x7f081069

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f121b36

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f071dcf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v6, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v8, 0x21

    invoke-virtual {v7, v6, v5, v3, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v3, v1, Ld8/f$d;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v1, Ld8/f$d;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_e
    iget-object v3, v1, Ld8/f$d;->a:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    const v6, 0x7f08106a

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_f
    :goto_5
    iget-object v3, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    if-nez v2, :cond_10

    invoke-static {}, Li8/c;->J()Z

    move-result v6

    if-eqz v6, :cond_10

    move v6, v4

    goto :goto_6

    :cond_10
    move v6, v5

    :goto_6
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v3, v1, Ld8/f$d;->d:Landroid/widget/TextView;

    if-nez v2, :cond_11

    invoke-static {}, Li8/c;->J()Z

    move-result v6

    if-eqz v6, :cond_11

    move v6, v4

    goto :goto_7

    :cond_11
    move v6, v5

    :goto_7
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_12
    invoke-virtual {p0}, Lh8/b;->c()I

    move-result v3

    if-lez v3, :cond_13

    iget-object v3, v1, Ld8/f$d;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Lh8/b;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    iget-object v3, v1, Ld8/f$d;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v3, p0, Lh8/h;->e:Lg8/a;

    sget-object v6, Lg8/a;->e:Lg8/a;

    if-ne v3, v6, :cond_15

    iget-object v3, v1, Ld8/f$d;->d:Landroid/widget/TextView;

    if-nez v2, :cond_14

    invoke-static {}, Li8/c;->i()I

    move-result v6

    if-eqz v6, :cond_14

    :goto_8
    move v6, v4

    goto :goto_9

    :cond_14
    move v6, v5

    :goto_9
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_c

    :cond_15
    sget-object v6, Lg8/a;->m:Lg8/a;

    if-ne v3, v6, :cond_16

    iget-object v3, v1, Ld8/f$d;->d:Landroid/widget/TextView;

    if-nez v2, :cond_14

    invoke-static {}, La8/t;->k()Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_8

    :cond_16
    sget-object v6, Lg8/a;->g:Lg8/a;

    if-ne v3, v6, :cond_1a

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lj8/u;->v(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v3}, Lj8/u;->s(Ljava/lang/String;)Z

    move-result v3

    iget-object v7, v1, Ld8/f$d;->d:Landroid/widget/TextView;

    if-nez v2, :cond_19

    if-eqz v6, :cond_17

    invoke-static {}, Li8/c;->K()Z

    move-result v6

    if-nez v6, :cond_18

    :cond_17
    if-eqz v3, :cond_19

    invoke-static {}, Li8/c;->V()Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_18
    move v3, v4

    goto :goto_a

    :cond_19
    move v3, v5

    :goto_a
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_c

    :cond_1a
    sget-object v6, Lg8/a;->l:Lg8/a;

    if-ne v3, v6, :cond_1c

    invoke-static {}, Li8/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lj8/u;->t(Ljava/lang/String;)Z

    move-result v3

    iget-object v6, v1, Ld8/f$d;->d:Landroid/widget/TextView;

    if-nez v2, :cond_1b

    if-eqz v3, :cond_1b

    invoke-static {}, Li8/c;->I()Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v4

    goto :goto_b

    :cond_1b
    move v3, v5

    :goto_b
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_c

    :cond_1c
    sget-object v6, Lg8/a;->j:Lg8/a;

    if-ne v3, v6, :cond_1d

    iget-object v3, v1, Ld8/f$d;->d:Landroid/widget/TextView;

    iget-boolean v6, p0, Lh8/h;->f:Z

    goto :goto_9

    :cond_1d
    sget-object v6, Lg8/a;->w:Lg8/a;

    if-ne v3, v6, :cond_1e

    iget-object v3, v1, Ld8/f$d;->d:Landroid/widget/TextView;

    if-nez v2, :cond_14

    invoke-static {}, La8/u;->a()Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {}, La8/u;->b()Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_8

    :cond_1e
    :goto_c
    iget-object v3, v1, Ld8/f$d;->c:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1f

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_1f
    iget-object v0, p0, Lh8/h;->e:Lg8/a;

    sget-object v3, Lg8/a;->c:Lg8/a;

    if-ne v0, v3, :cond_20

    invoke-direct {p0, v1}, Lh8/h;->g(Ld8/f$d;)V

    goto :goto_e

    :cond_20
    sget-object v3, Lg8/a;->e:Lg8/a;

    if-ne v0, v3, :cond_22

    iget-object p1, v1, Ld8/f$d;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_24

    if-nez v2, :cond_21

    invoke-static {}, Li8/c;->i()I

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_d

    :cond_21
    move v4, v5

    :goto_d
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_e

    :cond_22
    sget-object v1, Lg8/a;->m:Lg8/a;

    if-ne v0, v1, :cond_23

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lh8/h;->k(Landroid/content/Context;)V

    goto :goto_e

    :cond_23
    sget-object v1, Lg8/a;->f:Lg8/a;

    if-ne v0, v1, :cond_24

    new-instance v0, Lh8/h$c;

    invoke-direct {v0, p2}, Lh8/h$c;-><init>(Landroid/view/View;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p2, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_24
    :goto_e
    invoke-static {}, Lx4/y1;->f()Z

    move-result p1

    if-eqz p1, :cond_25

    invoke-static {p2}, Le8/a;->a(Landroid/view/View;)V

    :cond_25
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lh8/h;->d:I

    return v0
.end method

.method public j()Lg8/a;
    .locals 1

    iget-object v0, p0, Lh8/h;->e:Lg8/a;

    return-object v0
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lh8/h;->f:Z

    return-void
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lh8/h;->g:Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lh8/h$b;->a:[I

    iget-object v2, p0, Lh8/h;->e:Lg8/a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xe

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, Lj8/a;->g()Z

    move-result v0

    const-string v1, "video_toolbox"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez v0, :cond_0

    invoke-static {p1, v1}, Lj8/a;->k(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lj8/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    xor-int/lit8 p1, v0, 0x1

    iput-boolean p1, p0, Lh8/h;->f:Z

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lj8/n;->a()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.miui.player"

    invoke-static {p1, v0, v1}, La8/a0;->P(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-static {v0}, Lj8/i;->c(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_3
    invoke-static {v0}, Lj8/i;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f121bbf

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lj8/i;->a(Landroid/content/Context;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lj8/i;->d(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.gamebooster.action.VIDEOBOX_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    invoke-static {}, La8/t;->n()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lj8/p;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x3ea

    invoke-static {p1}, Lj8/p;->l(I)V

    invoke-static {v3}, Li8/c;->A0(Z)V

    invoke-static {}, Li8/c;->q()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v4}, La8/t;->w(Z)V

    goto :goto_1

    :cond_3
    invoke-static {}, La8/t;->k()Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-static {p1}, La8/t;->w(Z)V

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
