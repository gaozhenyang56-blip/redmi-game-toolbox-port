.class public Lcom/miui/optimizecenter/storage/b;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/storage/b$b;,
        Lcom/miui/optimizecenter/storage/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Lcom/miui/optimizecenter/storage/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/miui/optimizecenter/storage/b$b;


# direct methods
.method public constructor <init>(Lcom/miui/optimizecenter/storage/b$b;)V
    .locals 1

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/b;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/b;->b:Lcom/miui/optimizecenter/storage/b$b;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public k()J
    .locals 5

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    invoke-virtual {v3}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->getFileSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    return-wide v1
.end method

.method public l()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    invoke-virtual {v1}, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public m(Lcom/miui/optimizecenter/storage/b$a;I)V
    .locals 1
    .param p1    # Lcom/miui/optimizecenter/storage/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/b;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    invoke-virtual {p1, p2}, Lcom/miui/optimizecenter/storage/b$a;->a(Lcom/miui/optimizecenter/storage/model/PublicFileModel;)V

    return-void
.end method

.method public n(Lcom/miui/optimizecenter/storage/b$a;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/miui/optimizecenter/storage/b$a;
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
            "Lcom/miui/optimizecenter/storage/b$a;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "checked"

    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lcom/miui/optimizecenter/storage/b;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/optimizecenter/storage/model/PublicFileModel;

    invoke-virtual {p1, p2}, Lcom/miui/optimizecenter/storage/b$a;->b(Lcom/miui/optimizecenter/storage/model/PublicFileModel;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$h;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V

    return-void
.end method

.method public o(Landroid/view/ViewGroup;I)Lcom/miui/optimizecenter/storage/b$a;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e04e1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/optimizecenter/storage/b$a;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/b;->b:Lcom/miui/optimizecenter/storage/b$b;

    invoke-direct {p2, p1, v0}, Lcom/miui/optimizecenter/storage/b$a;-><init>(Landroid/view/View;Lcom/miui/optimizecenter/storage/b$b;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/optimizecenter/storage/b$a;

    invoke-virtual {p0, p1, p2}, Lcom/miui/optimizecenter/storage/b;->m(Lcom/miui/optimizecenter/storage/b$a;I)V

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

    check-cast p1, Lcom/miui/optimizecenter/storage/b$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/optimizecenter/storage/b;->n(Lcom/miui/optimizecenter/storage/b$a;ILjava/util/List;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/optimizecenter/storage/b;->o(Landroid/view/ViewGroup;I)Lcom/miui/optimizecenter/storage/b$a;

    move-result-object p1

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/optimizecenter/storage/model/PublicFileModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public setHasStableIds()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->setHasStableIds(Z)V

    return-void
.end method
