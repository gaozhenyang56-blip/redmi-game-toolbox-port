.class public Lsa/a;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsa/a$b;,
        Lsa/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Lsa/a$c;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsa/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lsa/a$b;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lsa/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lsa/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lsa/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 2

    sget-object v0, Lsa/a$a;->a:[I

    iget-object v1, p0, Lsa/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsa/b;

    invoke-virtual {p1}, Lsa/b;->b()Lsa/c;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lsa/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsa/b;

    invoke-virtual {p1}, Lsa/b;->b()Lsa/c;

    move-result-object p1

    invoke-virtual {p1}, Lsa/c;->b()I

    move-result p1

    return p1
.end method

.method public k(Lsa/a$c;I)V
    .locals 6
    .param p1    # Lsa/a$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object v0, p0, Lsa/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsa/b;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sget-object v1, Lsa/a$a;->a:[I

    invoke-virtual {p2}, Lsa/b;->b()Lsa/c;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p1, Lsa/a$c;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lsa/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lsa/a$c;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lsa/b;->f()I

    move-result v2

    invoke-static {v0, v2}, Ldb/i;->e(Landroid/widget/TextView;I)V

    :goto_0
    iget-object v0, p1, Lsa/a$c;->f:Landroid/widget/ImageView;

    goto :goto_1

    :pswitch_2
    iget-object v2, p1, Lsa/a$c;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Lsa/b;->f()I

    move-result v4

    invoke-static {v2, v4}, Ldb/i;->e(Landroid/widget/TextView;I)V

    iget-object v2, p1, Lsa/a$c;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lsa/b;->c()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p1, Lsa/a$c;->f:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ldb/i;->l(Landroid/view/View;I)V

    iget-object v0, p1, Lsa/a$c;->b:Landroid/widget/TextView;

    :goto_1
    invoke-static {v0, v3}, Ldb/i;->l(Landroid/view/View;I)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p2}, Lsa/b;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lsa/a$c;->c:Landroid/widget/ImageView;

    sget-object v4, Lx4/o0;->f:Lrh/c;

    invoke-static {v0, v2, v4}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v0, p1, Lsa/a$c;->e:Landroid/widget/TextView;

    invoke-virtual {p2}, Lsa/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p1, Lsa/a$c;->d:Landroid/widget/TextView;

    invoke-virtual {p2}, Lsa/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldb/i;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p2}, Lsa/b;->b()Lsa/c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0}, Ldb/i;->b(Landroid/view/View;)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {p2}, Lsa/b;->c()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0, p0}, Ldb/i;->j(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldb/i;->i(Landroid/view/View;Z)V

    goto :goto_3

    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0}, Ldb/i;->b(Landroid/view/View;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0, v3}, Ldb/i;->i(Landroid/view/View;Z)V

    goto :goto_3

    :pswitch_5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0, p0}, Ldb/i;->j(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    :goto_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public l(Landroid/view/ViewGroup;I)Lsa/a$c;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const p2, 0x7f0e04d6

    goto :goto_0

    :cond_1
    const p2, 0x7f0e04d5

    goto :goto_0

    :cond_2
    const p2, 0x7f0e04d4

    :goto_0
    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    :goto_1
    new-instance p2, Lsa/a$c;

    invoke-direct {p2, p1}, Lsa/a$c;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public m(Lsa/a$b;)V
    .locals 0

    iput-object p1, p0, Lsa/a;->b:Lsa/a$b;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lsa/a$c;

    invoke-virtual {p0, p1, p2}, Lsa/a;->k(Lsa/a$c;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lsa/a;->b:Lsa/a$b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsa/b;

    invoke-interface {v0, p1}, Lsa/a$b;->A(Lsa/b;)V

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lsa/a;->l(Landroid/view/ViewGroup;I)Lsa/a$c;

    move-result-object p1

    return-object p1
.end method

.method public setHasStableIds()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->setHasStableIds(Z)V

    return-void
.end method
