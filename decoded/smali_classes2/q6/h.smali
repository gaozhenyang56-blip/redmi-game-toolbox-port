.class public Lq6/h;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq6/h$a;,
        Lq6/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lq6/h$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/o;",
            ">;"
        }
    .end annotation
.end field

.field c:Lq6/h$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/o;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p1, p0, Lq6/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lq6/h;->b:Ljava/util/List;

    return-void
.end method

.method public static synthetic k(Lq6/h;ILcom/miui/gamebooster/model/o;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lq6/h;->l(ILcom/miui/gamebooster/model/o;Landroid/view/View;)V

    return-void
.end method

.method private synthetic l(ILcom/miui/gamebooster/model/o;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lq6/h;->c:Lq6/h$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3, p1, p2}, Lq6/h$a;->c(Landroid/view/View;ILcom/miui/gamebooster/model/o;)V

    :cond_0
    invoke-virtual {p2}, Lcom/miui/gamebooster/model/o;->f()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lq6/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public m(Lq6/h$b;I)V
    .locals 8
    .param p1    # Lq6/h$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lq6/h;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/o;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f0b0898

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v3, 0x7f0b0899

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v4, 0x7f0b0897

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/o;->c()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    invoke-static {}, La8/u0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, La8/u0;->e(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBindViewHolder: level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PerformanceFunctionAdapter"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v0, v5}, Lcom/miui/gamebooster/model/o;->g(Z)V

    const/high16 v4, 0x3f800000    # 1.0f

    const v6, 0x3e99999a    # 0.3f

    if-eqz v5, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    if-eqz v5, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v6

    :goto_2
    invoke-virtual {v2, v7}, Landroid/view/View;->setAlpha(F)V

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v4, v6

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    invoke-virtual {v0}, Lcom/miui/gamebooster/model/o;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/o;->d()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/o;->a()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {v2}, La8/d2;->a(Landroid/widget/TextView;)V

    invoke-static {v3}, La8/d2;->a(Landroid/widget/TextView;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v2, Lq6/g;

    invoke-direct {v2, p0, p2, v0}, Lq6/g;-><init>(Lq6/h;ILcom/miui/gamebooster/model/o;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p1}, Le8/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public n(Lq6/h$b;ILjava/util/List;)V
    .locals 2
    .param p1    # Lq6/h$b;
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
            "Lq6/h$b;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lq6/h;->m(Lq6/h$b;I)V

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lq6/h;->m(Lq6/h$b;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public o(Landroid/view/ViewGroup;I)Lq6/h$b;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lq6/h;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e029e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lq6/h$b;

    invoke-direct {p2, p1}, Lq6/h$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lq6/h$b;

    invoke-virtual {p0, p1, p2}, Lq6/h;->m(Lq6/h$b;I)V

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

    check-cast p1, Lq6/h$b;

    invoke-virtual {p0, p1, p2, p3}, Lq6/h;->n(Lq6/h$b;ILjava/util/List;)V

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

    invoke-virtual {p0, p1, p2}, Lq6/h;->o(Landroid/view/ViewGroup;I)Lq6/h$b;

    move-result-object p1

    return-object p1
.end method

.method public p(Lq6/h$a;)V
    .locals 0

    iput-object p1, p0, Lq6/h;->c:Lq6/h$a;

    return-void
.end method
