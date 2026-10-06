.class public final Ll2/d;
.super Lcom/miui/antispam/ui/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/d$c;,
        Ll2/d$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/antispam/ui/view/a<",
        "Ll2/d$d;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lm2/d;

.field public g:Ll2/a;

.field private h:Z

.field private i:Z

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/view/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll2/d;->j:Ljava/util/List;

    iput-boolean p2, p0, Ll2/d;->h:Z

    invoke-static {}, Lm2/a;->p()Z

    move-result p2

    iput-boolean p2, p0, Ll2/d;->i:Z

    invoke-static {p1}, Lm2/d;->h(Landroid/content/Context;)Lm2/d;

    move-result-object p2

    iput-object p2, p0, Ll2/d;->f:Lm2/d;

    new-instance p2, Ll2/a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, v0}, Ll2/a;-><init>(Landroid/content/Context;Landroid/view/View;Landroidx/appcompat/app/ActionBar;)V

    iput-object p2, p0, Ll2/d;->g:Ll2/a;

    return-void
.end method

.method private y(I)Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Ll2/d;->i:Z

    const v1, 0x7f120c55

    const v2, 0x7f120c58

    if-eqz v0, :cond_1

    invoke-static {}, Lm2/a;->o()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p1, p0, Ll2/d;->h:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    iget-boolean p1, p0, Ll2/d;->h:Z

    if-eqz p1, :cond_2

    const p1, 0x7f120c54

    goto :goto_0

    :cond_2
    const p1, 0x7f120c57

    :goto_0
    move v1, p1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Ll2/d;->h:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget-boolean p1, p0, Ll2/d;->h:Z

    if-eqz p1, :cond_5

    const p1, 0x7f120c53

    goto :goto_0

    :cond_5
    const p1, 0x7f120c56

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public A(Ll2/d$d;I)V
    .locals 7
    .param p1    # Ll2/d$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/miui/antispam/ui/view/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object v0, p0, Ll2/d;->j:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/d$c;

    iget-object v1, p1, Ll2/d$d;->c:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/miui/antispam/ui/view/a;->e:Z

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Ll2/d$d;->e:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/miui/antispam/ui/view/a;->e:Z

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Ll2/d$d;->a:Landroid/widget/TextView;

    iget-object v2, v0, Ll2/d$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Ll2/d$d;->a:Landroid/widget/TextView;

    iget-object v2, v0, Ll2/d$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v2, ""

    if-eqz v1, :cond_2

    iget-object v1, p1, Ll2/d$d;->a:Landroid/widget/TextView;

    iget-object v5, v0, Ll2/d$c;->c:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p1, Ll2/d$d;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Ll2/d$d;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Ll2/d$c;->c:Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Ll2/d$d;->a:Landroid/widget/TextView;

    iget-object v2, v0, Ll2/d$c;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Ll2/d;->f:Lm2/d;

    iget-object v2, v0, Ll2/d$c;->c:Ljava/lang/String;

    new-instance v4, Ll2/d$a;

    invoke-direct {v4, p0, p1}, Ll2/d$a;-><init>(Ll2/d;Ll2/d$d;)V

    invoke-virtual {v1, v2, v4}, Lm2/d;->k(Ljava/lang/String;Lm2/d$e;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p1, Ll2/d$d;->a:Landroid/widget/TextView;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Ll2/d$d;->a:Landroid/widget/TextView;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Ll2/d$d;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p1, Ll2/d$d;->d:Landroid/widget/TextView;

    iget-object v3, v0, Ll2/d$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Ll2/d$d;->d:Landroid/widget/TextView;

    iget-object v3, v0, Ll2/d$c;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p1, Ll2/d$d;->b:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, v0, Ll2/d$c;->c:Ljava/lang/String;

    const-string v2, "***"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Ll2/d$c;->e:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v2, p0, Ll2/d;->g:Ll2/a;

    invoke-virtual {v2, v1}, Ll2/a;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Ll2/d$d;->a:Landroid/widget/TextView;

    iget-object v3, v0, Ll2/d$c;->e:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Ll2/d$c;->e:Ljava/lang/String;

    const-string v4, "\u5409\u6797"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v1, v0, Ll2/d$c;->e:Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Ll2/d$c;->e:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v1, p1, Ll2/d$d;->c:Landroid/widget/TextView;

    iget v0, v0, Ll2/d$c;->d:I

    invoke-direct {p0, v0}, Ll2/d;->y(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Ll2/d$b;

    invoke-direct {v1, p0, p1, p2}, Ll2/d$b;-><init>(Ll2/d;Ll2/d$d;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Ll2/d$d;->e:Landroid/widget/CheckBox;

    invoke-virtual {p0, p2}, Lcom/miui/antispam/ui/view/a;->s(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public B(Landroid/view/ViewGroup;I)Ll2/d$d;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Ll2/d$d;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/view/a;->n()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0184

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Ll2/d$d;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ll2/d;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ll2/d;->j:Ljava/util/List;

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

    check-cast p1, Ll2/d$d;

    invoke-virtual {p0, p1, p2}, Ll2/d;->A(Ll2/d$d;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Ll2/d;->B(Landroid/view/ViewGroup;I)Ll2/d$d;

    move-result-object p1

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ll2/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Ll2/d;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public z()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ll2/d;->k:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iput-wide v0, p0, Ll2/d;->k:J

    const/4 v0, 0x0

    return v0
.end method
