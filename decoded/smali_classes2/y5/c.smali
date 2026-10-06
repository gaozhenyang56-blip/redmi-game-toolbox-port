.class public Ly5/c;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly5/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Ly5/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh8/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lh8/b$a;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh8/h;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ly5/c;->a:Ljava/util/List;

    return-void
.end method

.method public static synthetic k(Ly5/c;Lg8/a;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ly5/c;->p(Lg8/a;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public static synthetic l(Ly5/c;Lh8/h;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ly5/c;->o(Lh8/h;ILandroid/view/View;)V

    return-void
.end method

.method private m(Lh8/h;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {}, Lx5/p;->V()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lh8/h;->j()Lg8/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ld6/d;->l:Ld6/d$b;

    invoke-virtual {v1}, Ld6/d$b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object v1

    invoke-virtual {v1}, Lx5/p;->W()Ld6/d;

    move-result-object v1

    invoke-virtual {v1}, Ld6/d;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    const v0, 0x7f1205ac

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Ly5/c;->n(Lh8/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lx5/p;->M0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1205af

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->z()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1205b0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lh8/h;->j()Lg8/a;

    move-result-object p1

    sget-object v1, Lg8/a;->z:Lg8/a;

    if-ne p1, v1, :cond_3

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    sget-object v1, Lw5/a$a;->p:Lw5/a$a;

    invoke-virtual {p1, v1}, Lx5/p;->K0(Lw5/a$a;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    invoke-virtual {p1}, Lx5/p;->W()Ld6/d;

    move-result-object p1

    invoke-virtual {p1}, Ld6/d;->j()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    invoke-virtual {p1}, Lx5/p;->n0()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1205b3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {}, Lx5/p;->O()Lx5/p;

    move-result-object p1

    invoke-virtual {p1}, Lx5/p;->w0()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1205b9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1205b1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private n(Lh8/h;)Z
    .locals 2

    invoke-virtual {p1}, Lh8/h;->j()Lg8/a;

    move-result-object p1

    sget-object v0, Lg8/a;->s:Lg8/a;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lx5/p;->M0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v1}, Lz5/a;->h(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    invoke-static {}, Lj8/k;->h()Z

    move-result p1

    return p1
.end method

.method private synthetic o(Lh8/h;ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ly5/c;->b:Lh8/b$a;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lh8/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Ly5/c;->b:Lh8/b$a;

    invoke-interface {v0, p1, p3, p2}, Lh8/b$a;->b(Lh8/b;Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lh8/b;->e()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p2

    invoke-direct {p0, p1}, Ly5/c;->m(Lh8/h;)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic p(Lg8/a;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ly5/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ly5/c;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh8/h;

    invoke-virtual {v1}, Lh8/h;->j()Lg8/a;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Ly5/c;->b:Lh8/b$a;

    if-eqz p1, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    check-cast p1, Ly5/c$a;

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p2, p0, Ly5/c;->b:Lh8/b$a;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-interface {p2, v1, p1, v0}, Lh8/b$a;->b(Lh8/b;Landroid/view/View;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Ly5/c;->a:Ljava/util/List;

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

    check-cast p1, Ly5/c$a;

    invoke-virtual {p0, p1, p2}, Ly5/c;->q(Ly5/c$a;I)V

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

    invoke-virtual {p0, p1, p2}, Ly5/c;->r(Landroid/view/ViewGroup;I)Ly5/c$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ly5/c$a;

    invoke-virtual {p0, p1}, Ly5/c;->s(Ly5/c$a;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Ly5/c$a;

    invoke-virtual {p0, p1}, Ly5/c;->t(Ly5/c$a;)V

    return-void
.end method

.method public q(Ly5/c$a;I)V
    .locals 2
    .param p1    # Ly5/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Ly5/c;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/h;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2, v1}, Lh8/h;->h(ILandroid/view/View;)V

    iget-object v1, p1, Ly5/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {}, Lx4/y1;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v1}, Le8/a;->a(Landroid/view/View;)V

    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Ly5/a;

    invoke-direct {v1, p0, v0, p2}, Ly5/a;-><init>(Ly5/c;Lh8/h;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r(Landroid/view/ViewGroup;I)Ly5/c$a;
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

    const v0, 0x7f0e0100

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ly5/c$a;

    invoke-direct {p2, p1}, Ly5/c$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public s(Ly5/c$a;)V
    .locals 0
    .param p1    # Ly5/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public t(Ly5/c$a;)V
    .locals 1
    .param p1    # Ly5/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    iget-object p1, p1, Ly5/c$a;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public u(Lh8/b$a;)V
    .locals 0

    iput-object p1, p0, Ly5/c;->b:Lh8/b$a;

    return-void
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView;Lg8/a;)V
    .locals 1

    iget-object v0, p0, Ly5/c;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ly5/b;

    invoke-direct {v0, p0, p2, p1}, Ly5/b;-><init>(Ly5/c;Lg8/a;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
