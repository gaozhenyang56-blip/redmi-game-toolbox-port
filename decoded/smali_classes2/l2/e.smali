.class public final Ll2/e;
.super Ll2/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/e$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Ll2/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic B(Ll2/e;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ll2/e;->C(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private C(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Lm2/f;->M(Landroid/content/Context;Ljava/lang/String;I)V

    const-string p1, "check_call"

    invoke-static {p1}, Lc2/a;->f(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ll2/g;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ll2/g$a;

    invoke-virtual {p0, p1, p2}, Ll2/e;->x(Ll2/g$a;I)V

    return-void
.end method

.method public x(Ll2/g$a;I)V
    .locals 8
    .param p1    # Ll2/g$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Ll2/g;->x(Ll2/g$a;I)V

    iget-object v0, p0, Ll2/g;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/e$c;

    iget v1, v0, Ll2/e$c;->c:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    const v3, 0x7f121934

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    iget-object v3, v0, Ll2/e$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    iget-object v3, v0, Ll2/e$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    iget-object v3, v0, Ll2/e$c;->a:Ljava/lang/String;

    invoke-static {v3}, Lmiui/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ll2/g;->g:Lm2/d;

    iget-object v3, v0, Ll2/e$c;->a:Ljava/lang/String;

    new-instance v4, Ll2/e$a;

    invoke-direct {v4, p0, p1}, Ll2/e$a;-><init>(Ll2/e;Ll2/g$a;)V

    invoke-virtual {v1, v3, v4}, Lm2/d;->k(Ljava/lang/String;Lm2/d$e;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget v1, v0, Ll2/e$c;->d:I

    const/4 v3, 0x0

    const v4, 0x7f120cd8

    if-lez v1, :cond_2

    iget-object v1, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    const-string v5, "#F22424"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p1, Ll2/g$a;->b:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p1, Ll2/g$a;->b:Landroid/widget/TextView;

    iget-object v5, p0, Ll2/g;->f:Landroid/content/Context;

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, v0, Ll2/e$c;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v1, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    iget-object v5, p0, Ll2/g;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060dac

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p1, Ll2/g$a;->b:Landroid/widget/TextView;

    iget-object v5, p0, Ll2/g;->f:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p1, Ll2/g$a;->b:Landroid/widget/TextView;

    iget-object v5, p0, Ll2/g;->f:Landroid/content/Context;

    new-array v6, v2, [Ljava/lang/Object;

    iget v7, v0, Ll2/e$c;->e:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ll2/g;->f:Landroid/content/Context;

    iget-object v3, v0, Ll2/e$c;->a:Ljava/lang/String;

    invoke-static {v3}, Lm2/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Ll2/g$a;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p1, Ll2/g$a;->c:Landroid/widget/TextView;

    iget-object v3, p0, Ll2/g;->f:Landroid/content/Context;

    iget-wide v4, v0, Ll2/e$c;->f:J

    invoke-static {v3, v4, v5, v2}, Lm2/f;->n(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v2, Ll2/e$b;

    invoke-direct {v2, p0, p1, v0, p2}, Ll2/e$b;-><init>(Ll2/e;Ll2/g$a;Ll2/e$c;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Ll2/g$a;->g:Landroid/widget/CheckBox;

    invoke-virtual {p0, p2}, Ll2/b;->r(I)Z

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget p2, v0, Ll2/e$c;->g:I

    const v0, 0x7f120484

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_3

    :pswitch_1
    const v0, 0x7f120491

    goto :goto_3

    :pswitch_2
    const v0, 0x7f120485

    goto :goto_3

    :pswitch_3
    const v0, 0x7f120495

    goto :goto_3

    :pswitch_4
    invoke-static {}, Lm2/f;->A()Z

    move-result p2

    if-eqz p2, :cond_4

    const p2, 0x7f120d57

    goto :goto_2

    :cond_4
    const p2, 0x7f120d56

    :goto_2
    move v0, p2

    goto :goto_3

    :pswitch_5
    const v0, 0x7f120481

    goto :goto_3

    :pswitch_6
    invoke-static {}, Lm2/f;->A()Z

    move-result p2

    if-eqz p2, :cond_5

    const p2, 0x7f120d65

    goto :goto_2

    :cond_5
    const p2, 0x7f120d64

    goto :goto_2

    :pswitch_7
    invoke-static {}, Lm2/f;->A()Z

    move-result p2

    if-eqz p2, :cond_6

    const p2, 0x7f120d4e

    goto :goto_2

    :cond_6
    const p2, 0x7f120d4d

    goto :goto_2

    :pswitch_8
    const v0, 0x7f120486

    goto :goto_3

    :pswitch_9
    invoke-static {}, Lm2/f;->A()Z

    move-result p2

    if-eqz p2, :cond_7

    const p2, 0x7f120d53

    goto :goto_2

    :cond_7
    const p2, 0x7f120d52

    goto :goto_2

    :pswitch_a
    const v0, 0x7f120494

    goto :goto_3

    :pswitch_b
    const v0, 0x7f120492

    goto :goto_3

    :pswitch_c
    const v0, 0x7f120493

    :goto_3
    :pswitch_d
    iget-object p1, p1, Ll2/g$a;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
