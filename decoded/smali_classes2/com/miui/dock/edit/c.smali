.class public Lcom/miui/dock/edit/c;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"

# interfaces
.implements Lf5/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/dock/edit/c$a;,
        Lcom/miui/dock/edit/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/dock/edit/c$b;",
        ">;",
        "Lf5/y;"
    }
.end annotation


# instance fields
.field private a:Lcom/miui/dock/edit/c$a;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg5/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg5/j;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lcom/miui/dock/edit/c;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic k(Lcom/miui/dock/edit/c;ILg5/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/dock/edit/c;->o(ILg5/j;Landroid/view/View;)V

    return-void
.end method

.method private synthetic o(ILg5/j;Landroid/view/View;)V
    .locals 0

    iget-object p3, p0, Lcom/miui/dock/edit/c;->a:Lcom/miui/dock/edit/c$a;

    if-eqz p3, :cond_0

    invoke-interface {p3, p1, p2}, Lcom/miui/dock/edit/c$a;->a(ILg5/j;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/edit/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method

.method public j(II)V
    .locals 3

    move v0, p1

    if-ge p1, p2, :cond_0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/miui/dock/edit/c;->b:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_0

    :cond_0
    :goto_1
    if-le v0, p2, :cond_1

    iget-object v1, p0, Lcom/miui/dock/edit/c;->b:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemMoved(II)V

    return-void
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg5/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/dock/edit/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/edit/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public n(Lg5/j;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/edit/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/dock/edit/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/dock/edit/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/dock/edit/c$b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/dock/edit/c;->p(Lcom/miui/dock/edit/c$b;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/dock/edit/c;->q(Landroid/view/ViewGroup;I)Lcom/miui/dock/edit/c$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/miui/dock/edit/c$b;I)V
    .locals 4
    .param p1    # Lcom/miui/dock/edit/c$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lcom/miui/dock/edit/c;->getItemViewType(I)I

    move-result v0

    iget-object v1, p1, Lcom/miui/dock/edit/c$b;->a:Landroid/view/View;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p1, Lcom/miui/dock/edit/c$b;->b:Landroid/widget/ImageView;

    const v3, 0x7f080779

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/miui/dock/edit/c;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/j;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lg5/j;->b(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lf5/w;

    invoke-direct {v1, p0, p2, v0}, Lf5/w;-><init>(Lcom/miui/dock/edit/c;ILg5/j;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public q(Landroid/view/ViewGroup;I)Lcom/miui/dock/edit/c$b;
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

    const v0, 0x7f0e0283

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/dock/edit/c$b;

    invoke-direct {p2, p1}, Lcom/miui/dock/edit/c$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public r(Lg5/j;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/edit/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/dock/edit/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public s(Lcom/miui/dock/edit/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/edit/c;->a:Lcom/miui/dock/edit/c$a;

    return-void
.end method
