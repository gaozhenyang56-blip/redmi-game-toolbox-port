.class public Lcom/miui/optimizemanage/memoryclean/a;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/memoryclean/a$d;,
        Lcom/miui/optimizemanage/memoryclean/a$c;,
        Lcom/miui/optimizemanage/memoryclean/a$e;,
        Lcom/miui/optimizemanage/memoryclean/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljb/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/miui/optimizemanage/memoryclean/a$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/a;->b:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/a;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic k(Lcom/miui/optimizemanage/memoryclean/a;)Lcom/miui/optimizemanage/memoryclean/a$d;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizemanage/memoryclean/a;->c:Lcom/miui/optimizemanage/memoryclean/a$d;

    return-object p0
.end method

.method private l(Lcom/miui/optimizemanage/memoryclean/a$e;I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljb/d;

    iget-object v1, p1, Lcom/miui/optimizemanage/memoryclean/a$e;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/optimizemanage/memoryclean/a;->b:Landroid/content/Context;

    iget-object v3, v0, Ljb/d;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/miui/optimizemanage/memoryclean/a$e;->b:Landroid/widget/ImageView;

    iget-object v2, v0, Ljb/d;->b:Ljava/lang/String;

    iget v3, v0, Ljb/d;->a:I

    invoke-static {v1, v2, v3}, Llb/g;->j(Landroid/widget/ImageView;Ljava/lang/String;I)V

    iget-object v1, p1, Lcom/miui/optimizemanage/memoryclean/a$e;->d:Lcom/miui/gamebooster/view/QRSlidingButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/miui/optimizemanage/memoryclean/a$e;->d:Lcom/miui/gamebooster/view/QRSlidingButton;

    iget-boolean v2, v0, Ljb/d;->c:Z

    invoke-virtual {v1, v2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object v1, p1, Lcom/miui/optimizemanage/memoryclean/a$e;->a:Landroid/view/View;

    new-instance v2, Lcom/miui/optimizemanage/memoryclean/a$a;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/miui/optimizemanage/memoryclean/a$a;-><init>(Lcom/miui/optimizemanage/memoryclean/a;Lcom/miui/optimizemanage/memoryclean/a$e;Ljb/d;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private m(Lcom/miui/optimizemanage/memoryclean/a$c;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljb/d;

    iget p2, p2, Ljb/d;->d:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Lcom/miui/optimizemanage/memoryclean/a$c;->a:Landroid/widget/TextView;

    const p2, 0x7f120f4f

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object p1, p1, Lcom/miui/optimizemanage/memoryclean/a$c;->a:Landroid/widget/TextView;

    const p2, 0x7f120f50

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private n(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    instance-of v0, p1, Lcom/miui/optimizemanage/memoryclean/a$e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/optimizemanage/memoryclean/a$e;

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljb/d;

    iget-object p1, p1, Lcom/miui/optimizemanage/memoryclean/a$e;->d:Lcom/miui/gamebooster/view/QRSlidingButton;

    iget-boolean p2, p2, Ljb/d;->c:Z

    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/memoryclean/a;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/high16 p1, -0x80000000

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljb/d;

    iget p1, p1, Ljb/d;->d:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public o(Lcom/miui/optimizemanage/memoryclean/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/memoryclean/a;->c:Lcom/miui/optimizemanage/memoryclean/a$d;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/miui/optimizemanage/memoryclean/a$c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/optimizemanage/memoryclean/a$c;

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizemanage/memoryclean/a;->m(Lcom/miui/optimizemanage/memoryclean/a$c;I)V

    goto :goto_0

    :cond_0
    check-cast p1, Lcom/miui/optimizemanage/memoryclean/a$e;

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizemanage/memoryclean/a;->l(Lcom/miui/optimizemanage/memoryclean/a$e;I)V

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;ILjava/util/List;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
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
            "Landroidx/recyclerview/widget/RecyclerView$c0;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "payload_type_click"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizemanage/memoryclean/a;->n(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/optimizemanage/memoryclean/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    new-instance p2, Lcom/miui/optimizemanage/memoryclean/a$c;

    iget-object v1, p0, Lcom/miui/optimizemanage/memoryclean/a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e04be

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/optimizemanage/memoryclean/a$c;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/miui/optimizemanage/memoryclean/a$e;

    iget-object v1, p0, Lcom/miui/optimizemanage/memoryclean/a;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e03ad

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/miui/optimizemanage/memoryclean/a$e;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public p(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/optimizemanage/memoryclean/a$b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/optimizemanage/memoryclean/a;->a:Ljava/util/List;

    new-instance v2, Ljb/d;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/optimizemanage/memoryclean/a$b;

    iget v3, v3, Lcom/miui/optimizemanage/memoryclean/a$b;->a:I

    invoke-direct {v2, v3}, Ljb/d;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/optimizemanage/memoryclean/a;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/optimizemanage/memoryclean/a$b;

    iget-object v2, v2, Lcom/miui/optimizemanage/memoryclean/a$b;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHasStableIds()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->setHasStableIds(Z)V

    return-void
.end method
