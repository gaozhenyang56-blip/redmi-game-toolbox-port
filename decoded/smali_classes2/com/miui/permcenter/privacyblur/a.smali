.class public Lcom/miui/permcenter/privacyblur/a;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/privacyblur/a$d;,
        Lcom/miui/permcenter/privacyblur/a$c;,
        Lcom/miui/permcenter/privacyblur/a$f;,
        Lcom/miui/permcenter/privacyblur/a$e;,
        Lcom/miui/permcenter/privacyblur/a$a;,
        Lcom/miui/permcenter/privacyblur/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Lcom/miui/permcenter/privacyblur/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfc/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/miui/permcenter/privacyblur/a$d;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/privacyblur/a$d;Z)V
    .locals 1

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/permcenter/privacyblur/a;->b:Lcom/miui/permcenter/privacyblur/a$d;

    iput-boolean p2, p0, Lcom/miui/permcenter/privacyblur/a;->c:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/privacyblur/a;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfc/b;

    iget p1, p1, Lfc/b;->e:I

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfc/a;

    invoke-virtual {p1}, Lfc/a;->a()I

    move-result p1

    return p1
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/privacyblur/a;->d:I

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfc/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public m()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfc/a;

    invoke-virtual {v1}, Lfc/a;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public n(Lcom/miui/permcenter/privacyblur/a$b;I)V
    .locals 3
    .param p1    # Lcom/miui/permcenter/privacyblur/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    instance-of v0, p1, Lcom/miui/permcenter/privacyblur/a$f;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/permcenter/privacyblur/a$f;

    iget p2, p0, Lcom/miui/permcenter/privacyblur/a;->d:I

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/privacyblur/a$f;->b(I)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/miui/permcenter/privacyblur/a$c;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/miui/permcenter/privacyblur/a$c;

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfc/a;

    const/4 v1, 0x1

    if-lt p2, v1, :cond_2

    iget-object v2, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    sub-int/2addr p2, v1

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lfc/b;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/miui/permcenter/privacyblur/a$c;->b(Lfc/a;Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfc/a;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/privacyblur/a$b;->a(Lfc/a;)V

    :goto_1
    return-void
.end method

.method public o(Lcom/miui/permcenter/privacyblur/a$b;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/miui/permcenter/privacyblur/a$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/permcenter/privacyblur/a$b;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V

    const-string v0, "payload_state"

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    instance-of p3, p1, Lcom/miui/permcenter/privacyblur/a$a;

    if-eqz p3, :cond_0

    check-cast p1, Lcom/miui/permcenter/privacyblur/a$a;

    iget-object p3, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfc/a;

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/privacyblur/a$a;->b(Lfc/a;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/permcenter/privacyblur/a$b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacyblur/a;->n(Lcom/miui/permcenter/privacyblur/a$b;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/permcenter/privacyblur/a$b;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/permcenter/privacyblur/a;->o(Lcom/miui/permcenter/privacyblur/a$b;ILjava/util/List;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/privacyblur/a;->p(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/privacyblur/a$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/privacyblur/a$b;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    new-instance p2, Lcom/miui/permcenter/privacyblur/a$b;

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p2, v0}, Lcom/miui/permcenter/privacyblur/a$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/miui/permcenter/privacyblur/a$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0549

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/a;->b:Lcom/miui/permcenter/privacyblur/a$d;

    invoke-direct {p2, p1, v0}, Lcom/miui/permcenter/privacyblur/a$a;-><init>(Landroid/view/View;Lcom/miui/permcenter/privacyblur/a$d;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/miui/permcenter/privacyblur/a$c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0548

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/permcenter/privacyblur/a$c;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/miui/permcenter/privacyblur/a$f;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e054b

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/a;->b:Lcom/miui/permcenter/privacyblur/a$d;

    invoke-direct {p2, p1, v0}, Lcom/miui/permcenter/privacyblur/a$f;-><init>(Landroid/view/View;Lcom/miui/permcenter/privacyblur/a$d;)V

    goto :goto_0

    :cond_3
    new-instance p2, Lcom/miui/permcenter/privacyblur/a$e;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e054a

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/permcenter/privacyblur/a;->c:Z

    invoke-direct {p2, p1, v0}, Lcom/miui/permcenter/privacyblur/a$e;-><init>(Landroid/view/View;Z)V

    :goto_0
    return-object p2
.end method

.method public q(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfc/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/permcenter/privacyblur/a;->d:I

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfc/a;

    invoke-virtual {v0}, Lfc/a;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/permcenter/privacyblur/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/permcenter/privacyblur/a;->d:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmiuix/recyclerview/card/e;->updateGroupInfo()V

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public setHasStableIds()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->setHasStableIds(Z)V

    return-void
.end method
