.class public final Ll2/i;
.super Ll2/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/i$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Ll2/g;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic B(Ll2/i;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ll2/i;->F(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static D(Ljava/lang/String;)[B
    .locals 2

    :try_start_0
    const-string v0, "iso-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "SmsGroupLogAdapter"

    const-string v1, "ISO_8859_1 must be supported!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method private F(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lm2/f;->Q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "check_sms"

    invoke-static {p1}, Lc2/a;->f(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public C()[J
    .locals 4

    iget-object v0, p0, Ll2/g;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Ll2/g;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ll2/g;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ll2/g;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll2/i$c;

    iget v2, v2, Ll2/i$c;->a:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public E()[J
    .locals 6

    invoke-virtual {p0}, Ll2/b;->p()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    new-array v2, v1, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Ll2/g;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll2/i$c;

    iget v4, v4, Ll2/i$c;->a:I

    int-to-long v4, v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

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

    invoke-virtual {p0, p1, p2}, Ll2/i;->x(Ll2/g$a;I)V

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

    check-cast v0, Ll2/i$c;

    iget-object v1, v0, Ll2/i$c;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    iget-object v2, v0, Ll2/i$c;->b:Ljava/lang/String;

    invoke-static {v2}, Lm2/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    iget-object v2, v0, Ll2/i$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Ll2/g;->g:Lm2/d;

    iget-object v2, v0, Ll2/i$c;->b:Ljava/lang/String;

    new-instance v3, Ll2/i$a;

    invoke-direct {v3, p0, p1}, Ll2/i$a;-><init>(Ll2/i;Ll2/g$a;)V

    invoke-virtual {v1, v2, v3}, Lm2/d;->k(Ljava/lang/String;Lm2/d$e;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean v1, p0, Ll2/g;->i:Z

    const/4 v2, 0x0

    const v3, 0x7f120cd8

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, v0, Ll2/i$c;->d:I

    if-lez v1, :cond_2

    iget-object v1, p1, Ll2/g$a;->a:Landroid/widget/TextView;

    const-string v5, "#F30018"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p1, Ll2/g$a;->b:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p1, Ll2/g$a;->b:Landroid/widget/TextView;

    iget-object v5, p0, Ll2/g;->f:Landroid/content/Context;

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, v0, Ll2/i$c;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

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

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, v0, Ll2/i$c;->c:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Ll2/g$a;->c:Landroid/widget/TextView;

    iget-object v2, p0, Ll2/g;->f:Landroid/content/Context;

    iget-wide v5, v0, Ll2/i$c;->g:J

    invoke-static {v2, v5, v6, v4}, Lm2/f;->n(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Ll2/i$c;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, v0, Ll2/i$c;->f:I

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget v2, v0, Ll2/i$c;->f:I

    iget-object v3, v0, Ll2/i$c;->e:Ljava/lang/String;

    invoke-static {v3}, Ll2/i;->D(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ll2/i$c;->e:Ljava/lang/String;

    :cond_3
    iget-object v1, p1, Ll2/g$a;->d:Landroid/widget/TextView;

    iget-object v2, v0, Ll2/i$c;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v2, Ll2/i$b;

    invoke-direct {v2, p0, p1, v0, p2}, Ll2/i$b;-><init>(Ll2/i;Ll2/g$a;Ll2/i$c;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Ll2/g$a;->g:Landroid/widget/CheckBox;

    invoke-virtual {p0, p2}, Ll2/b;->r(I)Z

    move-result p2

    invoke-virtual {v1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget p2, v0, Ll2/i$c;->h:I

    const v0, 0x7f1216d1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    const v0, 0x7f1216c8

    goto :goto_1

    :pswitch_2
    const v0, 0x7f1216c6

    goto :goto_1

    :pswitch_3
    const v0, 0x7f1216d2

    goto :goto_1

    :pswitch_4
    const v0, 0x7f1216d6

    goto :goto_1

    :pswitch_5
    const v0, 0x7f1216c9

    goto :goto_1

    :pswitch_6
    const v0, 0x7f1216d3

    goto :goto_1

    :pswitch_7
    const v0, 0x7f1216d9

    goto :goto_1

    :pswitch_8
    const v0, 0x7f1216d4

    goto :goto_1

    :pswitch_9
    const v0, 0x7f1216c7

    :goto_1
    :pswitch_a
    iget-object p1, p1, Ll2/g$a;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
