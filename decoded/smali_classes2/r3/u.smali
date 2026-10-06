.class public Lr3/u;
.super Lmiuix/recyclerview/card/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/u$a;,
        Lr3/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/recyclerview/card/e<",
        "Lr3/u$b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lr3/u$a;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/AppInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lr3/u$a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/AppInfoBean;",
            ">;",
            "Lr3/u$a;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lmiuix/recyclerview/card/e;-><init>()V

    iput-object p1, p0, Lr3/u;->b:Ljava/util/List;

    iput-object p2, p0, Lr3/u;->a:Lr3/u$a;

    iput-boolean p3, p0, Lr3/u;->c:Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lmiuix/recyclerview/card/e;->updateGroupInfo()V

    :cond_0
    return-void
.end method

.method public static synthetic k(Lr3/u;Lr3/u$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lr3/u;->l(Lr3/u$b;Landroid/view/View;)V

    return-void
.end method

.method private synthetic l(Lr3/u$b;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lr3/u;->a:Lr3/u$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result p1

    invoke-interface {v0, p2, p1}, Lr3/u$a;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lr3/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewGroup(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public m(Lr3/u$b;I)V
    .locals 4
    .param p1    # Lr3/u$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/recyclerview/card/e;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    iget-object v0, p0, Lr3/u;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/autotask/bean/AppInfoBean;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lr3/u$b;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/autotask/bean/AppInfoBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/autotask/bean/AppInfoBean;->getIconPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lr3/u$b;->a:Landroid/widget/ImageView;

    sget-object v2, Lx4/o0;->f:Lrh/c;

    const v3, 0x7f0804c9

    invoke-static {v0, v1, v2, v3}, Lx4/o0;->e(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;I)V

    iget-boolean v0, p0, Lr3/u;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lr3/u$b;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lr3/u$b;->d:Landroid/widget/CheckBox;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lr3/u$b;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lr3/u$b;->c:Landroid/widget/RadioButton;

    :goto_0
    invoke-virtual {p2}, Lcom/miui/autotask/bean/AppInfoBean;->isSelect()Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lr3/t;

    invoke-direct {v0, p0, p1}, Lr3/t;-><init>(Lr3/u;Lr3/u$b;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public n(Landroid/view/ViewGroup;I)Lr3/u$b;
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

    const v0, 0x7f0e04a1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lr3/u$b;

    iget-object v0, p0, Lr3/u;->a:Lr3/u$a;

    invoke-direct {p2, p1, v0}, Lr3/u$b;-><init>(Landroid/view/View;Lr3/u$a;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lr3/u$b;

    invoke-virtual {p0, p1, p2}, Lr3/u;->m(Lr3/u$b;I)V

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

    invoke-virtual {p0, p1, p2}, Lr3/u;->n(Landroid/view/ViewGroup;I)Lr3/u$b;

    move-result-object p1

    return-object p1
.end method

.method public setHasStableIds()V
    .locals 0

    return-void
.end method
