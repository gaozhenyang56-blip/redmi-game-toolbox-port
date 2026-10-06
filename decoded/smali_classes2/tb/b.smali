.class public Ltb/b;
.super Lwb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltb/b$d;,
        Ltb/b$f;,
        Ltb/b$e;,
        Ltb/b$a;,
        Ltb/b$c;,
        Ltb/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/permcenter/detection/model/b;",
        ">",
        "Lwb/a<",
        "Ltb/b$b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private c:Ltb/b$d;


# direct methods
.method public constructor <init>(Ltb/b$d;)V
    .locals 1

    invoke-direct {p0}, Lwb/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltb/b;->b:Ljava/util/List;

    iput-object p1, p0, Ltb/b;->c:Ltb/b$d;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ltb/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Ltb/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/detection/model/b;

    invoke-virtual {p1}, Lcom/miui/permcenter/detection/model/b;->a()I

    move-result p1

    return p1
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ltb/b;->b:Ljava/util/List;

    return-object v0
.end method

.method public m(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ltb/b;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Ltb/b;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/detection/model/b;

    invoke-virtual {v1}, Lcom/miui/permcenter/detection/model/b;->a()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public n()I
    .locals 5

    iget-object v0, p0, Ltb/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/permcenter/detection/model/b;

    invoke-virtual {v2}, Lcom/miui/permcenter/detection/model/b;->a()I

    move-result v3

    const/16 v4, 0x15

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/miui/permcenter/detection/model/b;->a()I

    move-result v2

    const/16 v3, 0x13

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public o(Ltb/b$b;I)V
    .locals 1
    .param p1    # Ltb/b$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb/b$b<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lwb/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object v0, p0, Ltb/b;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/permcenter/detection/model/b;

    invoke-virtual {p1, p2}, Ltb/b$b;->a(Lcom/miui/permcenter/detection/model/b;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ltb/b$b;

    invoke-virtual {p0, p1, p2}, Ltb/b;->o(Ltb/b$b;I)V

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

    invoke-virtual {p0, p1, p2}, Ltb/b;->p(Landroid/view/ViewGroup;I)Ltb/b$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/view/ViewGroup;I)Ltb/b$b;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Ltb/b$b<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance p2, Ltb/b$b;

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Ltb/b;->c:Ltb/b$d;

    invoke-direct {p2, v0, p1}, Ltb/b$b;-><init>(Landroid/view/View;Ltb/b$d;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance p2, Ltb/b$e;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0543

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ltb/b;->c:Ltb/b$d;

    invoke-direct {p2, p1, v0}, Ltb/b$e;-><init>(Landroid/view/View;Ltb/b$d;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lx4/a0;->D()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Ltb/b$f;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0547

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ltb/b;->c:Ltb/b$d;

    invoke-direct {p2, p1, v0}, Ltb/b$f;-><init>(Landroid/view/View;Ltb/b$d;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ltb/b$f;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0546

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ltb/b;->c:Ltb/b$d;

    invoke-direct {p2, p1, v0}, Ltb/b$f;-><init>(Landroid/view/View;Ltb/b$d;)V

    goto :goto_0

    :pswitch_3
    new-instance p2, Ltb/b$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0542

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ltb/b;->c:Ltb/b$d;

    invoke-direct {p2, p1, v0}, Ltb/b$a;-><init>(Landroid/view/View;Ltb/b$d;)V

    goto :goto_0

    :pswitch_4
    new-instance p2, Ltb/b$c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e0544

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Ltb/b;->c:Ltb/b$d;

    invoke-direct {p2, p1, v0}, Ltb/b$c;-><init>(Landroid/view/View;Ltb/b$d;)V

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public q(I)V
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Ltb/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ltb/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRemoved(I)V

    invoke-virtual {p0}, Ltb/b;->getItemCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method public r(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Ltb/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ltb/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public s(I)V
    .locals 3

    invoke-virtual {p0}, Ltb/b;->l()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/detection/model/b;

    invoke-virtual {v0}, Lcom/miui/permcenter/detection/model/b;->a()I

    move-result v0

    const/16 v2, 0x13

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ltb/b;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/detection/model/e;

    invoke-virtual {v0, p1}, Lcom/miui/permcenter/detection/model/e;->c(I)V

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method
