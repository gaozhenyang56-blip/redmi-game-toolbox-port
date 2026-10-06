.class public Lnb/f;
.super Lwb/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnb/f$d;,
        Lnb/f$b;,
        Lnb/f$a;,
        Lnb/f$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwb/a<",
        "Lnb/f$d;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lob/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private d:Lmiuix/appcompat/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AppCompatActivity;)V
    .locals 1

    invoke-direct {p0}, Lwb/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnb/f;->b:Ljava/util/List;

    iput-object p1, p0, Lnb/f;->d:Lmiuix/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lnb/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 3

    invoke-static {}, Lbl/l;->a()I

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lnb/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lob/f;

    invoke-virtual {p1}, Lob/f;->a()I

    move-result p1

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lnb/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lob/f;

    invoke-virtual {p1}, Lob/f;->a()I

    move-result p1

    return p1
.end method

.method public l(Lnb/f$d;I)V
    .locals 3
    .param p1    # Lnb/f$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lwb/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    sget-object v0, Lxc/v;->a:Lxc/v$a;

    iget-object v1, p0, Lnb/f;->d:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lxc/v$a;->d(Lmiuix/appcompat/app/AppCompatActivity;Landroid/view/View;)V

    iget-object v0, p0, Lnb/f;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lob/f;

    invoke-virtual {p1, p2}, Lnb/f$d;->a(Lob/f;)V

    return-void
.end method

.method public m(Landroid/view/ViewGroup;I)Lnb/f$d;
    .locals 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lnb/f$a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e0430

    invoke-virtual {v2, v3, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lnb/f;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {p2, p1, v0, v1}, Lnb/f$a;-><init>(Landroid/view/View;Landroid/widget/CompoundButton$OnCheckedChangeListener;Z)V

    return-object p2

    :cond_1
    new-instance p2, Lnb/f$c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e02aa

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lnb/f$c;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_2
    new-instance p2, Lnb/f$b;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0e015b

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lnb/f$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public n(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lnb/f;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public o(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnb/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lnb/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lnb/f;->b:Ljava/util/List;

    invoke-static {p1}, Lob/g;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lnb/f$d;

    invoke-virtual {p0, p1, p2}, Lnb/f;->l(Lnb/f$d;I)V

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

    invoke-virtual {p0, p1, p2}, Lnb/f;->m(Landroid/view/ViewGroup;I)Lnb/f$d;

    move-result-object p1

    return-object p1
.end method
