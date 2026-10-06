.class public Lt5/p;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5/p$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls5/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lt5/p$c;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ls5/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt5/p;->d:Z

    iput-object p1, p0, Lt5/p;->a:Landroid/content/Context;

    iput-object p2, p0, Lt5/p;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic k(Lt5/p;)Lt5/p$c;
    .locals 0

    iget-object p0, p0, Lt5/p;->c:Lt5/p$c;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lt5/p;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lt5/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls5/c;

    invoke-virtual {p1}, Ls5/c;->f()I

    move-result p1

    return p1
.end method

.method public l(I)Ls5/c;
    .locals 1

    iget-object v0, p0, Lt5/p;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls5/c;

    return-object p1
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lt5/p;->d:Z

    return-void
.end method

.method public n(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls5/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lt5/p;->b:Ljava/util/List;

    return-void
.end method

.method public o(Lt5/p$c;)V
    .locals 0

    iput-object p1, p0, Lt5/p;->c:Lt5/p$c;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p2}, Lt5/p;->getItemViewType(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lt5/p;->l(I)Ls5/c;

    move-result-object v1

    const v2, 0x7f060ddb

    if-nez v0, :cond_1

    check-cast p1, Lt5/n;

    invoke-virtual {v1}, Ls5/c;->d()Z

    move-result v0

    iget-object v1, p1, Lt5/n;->a:Lcom/miui/gamebooster/view/QRSlidingButton;

    invoke-virtual {v1, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    if-eqz v0, :cond_0

    iget-object v0, p1, Lt5/n;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lt5/p;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060080

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lt5/n;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lt5/p;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p1, Lt5/n;->c:Landroid/view/View;

    new-instance v0, Lt5/p$a;

    invoke-direct {v0, p0, p2}, Lt5/p$a;-><init>(Lt5/p;I)V

    goto :goto_2

    :cond_1
    check-cast p1, Lt5/o;

    invoke-virtual {v1}, Ls5/c;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p1, Lt5/o;->a:Landroid/widget/ImageView;

    sget-object v4, Lx4/o0;->f:Lrh/c;

    const v5, 0x7f0804c9

    invoke-static {v0, v3, v4, v5}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-object v0, p1, Lt5/o;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Ls5/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lt5/o;->c:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lt5/p;->d:Z

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1}, Ls5/c;->a()Z

    move-result v0

    iget-object v1, p1, Lt5/o;->c:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-boolean v0, p0, Lt5/p;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lt5/o;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lt5/p;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060ccb

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lt5/o;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lt5/p;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p1, Lt5/o;->d:Landroid/view/View;

    new-instance v0, Lt5/p$b;

    invoke-direct {v0, p0, p2}, Lt5/p$b;-><init>(Lt5/p;I)V

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lt5/p;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e047c

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lt5/n;

    invoke-direct {p2, p1}, Lt5/n;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lt5/p;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0e047e

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lt5/o;

    invoke-direct {p2, p1}, Lt5/o;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method
