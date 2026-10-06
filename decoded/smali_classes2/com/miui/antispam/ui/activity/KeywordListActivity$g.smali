.class Lcom/miui/antispam/ui/activity/KeywordListActivity$g;
.super Lcom/miui/antispam/ui/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/KeywordListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/activity/KeywordListActivity$g$b;,
        Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/antispam/ui/view/a<",
        "Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;",
        ">;"
    }
.end annotation


# instance fields
.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/view/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->f:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antispam/ui/activity/KeywordListActivity$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Landroid/view/ViewGroup;I)Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/view/a;->n()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0188

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;-><init>(Landroid/view/View;Lcom/miui/antispam/ui/activity/KeywordListActivity$a;)V

    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->z(Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;I)V

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

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->A(Landroid/view/ViewGroup;I)Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;

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

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public y()[J
    .locals 6

    invoke-virtual {p0}, Lcom/miui/antispam/ui/view/a;->q()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    new-array v2, v1, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$b;

    iget v4, v4, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$b;->a:I

    int-to-long v4, v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public z(Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;I)V
    .locals 2
    .param p1    # Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/miui/antispam/ui/view/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->f:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$b;

    iget-object v1, p1, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;->a:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;->b:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/miui/antispam/ui/view/a;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$a;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity$g;Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;->b:Landroid/widget/CheckBox;

    invoke-virtual {p0, p2}, Lcom/miui/antispam/ui/view/a;->s(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
