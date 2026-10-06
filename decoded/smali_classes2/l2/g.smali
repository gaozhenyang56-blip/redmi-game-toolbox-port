.class public abstract Ll2/g;
.super Ll2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll2/b<",
        "Ll2/g$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected f:Landroid/content/Context;

.field protected g:Lm2/d;

.field private h:Z

.field protected i:Z

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ll2/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll2/g;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll2/g;->i:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll2/g;->j:Ljava/util/List;

    invoke-static {p1}, Lm2/d;->h(Landroid/content/Context;)Lm2/d;

    move-result-object v0

    iput-object v0, p0, Ll2/g;->g:Lm2/d;

    iput-object p1, p0, Ll2/g;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, Ll2/g;->h:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ll2/g;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Ll2/g;->y(Landroid/view/ViewGroup;I)Ll2/g$a;

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

    iget-object v0, p0, Ll2/g;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Ll2/g;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public x(Ll2/g$a;I)V
    .locals 3
    .param p1    # Ll2/g$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Ll2/b;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-boolean p2, p0, Ll2/b;->e:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p2, :cond_1

    iget-object p2, p1, Ll2/g$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Ll2/g$a;->e:Landroid/widget/TextView;

    iget-boolean v2, p0, Ll2/g;->h:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Ll2/g$a;->g:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p2, p1, Ll2/g$a;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Ll2/g$a;->g:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public y(Landroid/view/ViewGroup;I)Ll2/g$a;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Ll2/g$a;

    iget-object v0, p0, Ll2/g;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0189

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Ll2/g$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public z(Z)V
    .locals 0

    iput-boolean p1, p0, Ll2/g;->i:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
