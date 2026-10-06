.class public Lcom/miui/appmanager/fragment/AppFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/appmanager/fragment/AppFragment$d;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/appmanager/widget/AMMainTopView;

.field private b:Lmiuix/recyclerview/widget/RecyclerView;

.field private c:Le3/a;

.field private d:Lcom/miui/appmanager/widget/AMMessageView;

.field private e:Landroid/view/View;

.field private f:Lh3/j;

.field private g:Z

.field private h:I

.field private i:Lsf/e$c;

.field private j:Lsf/h$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    new-instance v0, Lh3/j;

    invoke-direct {v0}, Lh3/j;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AppFragment;->f:Lh3/j;

    new-instance v0, Lcom/miui/appmanager/fragment/AppFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/AppFragment$a;-><init>(Lcom/miui/appmanager/fragment/AppFragment;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AppFragment;->i:Lsf/e$c;

    new-instance v0, Lcom/miui/appmanager/fragment/AppFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/AppFragment$b;-><init>(Lcom/miui/appmanager/fragment/AppFragment;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AppFragment;->j:Lsf/h$b;

    return-void
.end method

.method private J(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AppFragment;->c:Le3/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Le3/a;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/f;

    instance-of v3, v2, Lh3/b;

    if-eqz v3, :cond_1

    check-cast v2, Lh3/b;

    invoke-virtual {v2}, Lh3/b;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AppFragment;->c:Le3/a;

    const-string v0, "updateButton"

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private N(Ljava/lang/String;II)V
    .locals 4

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AppFragment;->c:Le3/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Le3/a;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh3/f;

    instance-of v3, v2, Lh3/b;

    if-eqz v3, :cond_1

    check-cast v2, Lh3/b;

    invoke-virtual {v2}, Lh3/b;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p2}, Lh3/b;->C(I)V

    invoke-virtual {v2, p3}, Lh3/b;->D(I)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AppFragment;->c:Le3/a;

    const-string p2, "updateButton"

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic b0(Lcom/miui/appmanager/fragment/AppFragment;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/appmanager/fragment/AppFragment;->N(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic c0(Lcom/miui/appmanager/fragment/AppFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/AppFragment;->J(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d0(Lcom/miui/appmanager/fragment/AppFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AppFragment;->e:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/appmanager/fragment/AppFragment;)Lh3/j;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AppFragment;->f:Lh3/j;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/appmanager/fragment/AppFragment;)Lcom/miui/appmanager/widget/AMMainTopView;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AppFragment;->a:Lcom/miui/appmanager/widget/AMMainTopView;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/appmanager/fragment/AppFragment;)Le3/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AppFragment;->c:Le3/a;

    return-object p0
.end method

.method private h0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/fragment/AppFragment;->j:Lsf/h$b;

    invoke-virtual {v1, v2}, Lsf/h;->f(Lsf/h$b;)V

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AppFragment;->i:Lsf/e$c;

    invoke-virtual {v0, v1}, Lsf/e;->k(Lsf/e$c;)V

    return-void
.end method

.method private i0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lsf/h;->c(Landroid/content/Context;)Lsf/h;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/appmanager/fragment/AppFragment;->j:Lsf/h$b;

    invoke-virtual {v1, v2}, Lsf/h;->g(Lsf/h$b;)V

    invoke-static {v0}, Lsf/e;->d(Landroid/content/Context;)Lsf/e;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AppFragment;->i:Lsf/e$c;

    invoke-virtual {v0, v1}, Lsf/e;->o(Lsf/e$c;)V

    return-void
.end method


# virtual methods
.method public j0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/miui/appmanager/AppManagerMainActivity;

    iget v0, v0, Lcom/miui/appmanager/AppManagerMainActivity;->b:I

    invoke-virtual {p0, v0}, Lcom/miui/appmanager/fragment/AppFragment;->l0(I)V

    invoke-virtual {p0}, Lcom/miui/appmanager/fragment/AppFragment;->k0()V

    return-void
.end method

.method public k0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AppFragment;->a:Lcom/miui/appmanager/widget/AMMainTopView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/miui/appmanager/fragment/AppFragment$d;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/fragment/AppFragment$d;-><init>(Lcom/miui/appmanager/fragment/AppFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public l0(I)V
    .locals 6

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AppFragment;->d:Lcom/miui/appmanager/widget/AMMessageView;

    new-instance v1, Lcom/miui/appmanager/fragment/AppFragment$c;

    invoke-direct {v1, p0}, Lcom/miui/appmanager/fragment/AppFragment$c;-><init>(Lcom/miui/appmanager/fragment/AppFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AppFragment;->d:Lcom/miui/appmanager/widget/AMMessageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AppFragment;->d:Lcom/miui/appmanager/widget/AMMessageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100015

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/appmanager/widget/AMMessageView;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/appmanager/fragment/AppFragment;->d:Lcom/miui/appmanager/widget/AMMessageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    check-cast p1, Lcom/miui/appmanager/AppManagerMainActivity;

    iget-object p1, p1, Lcom/miui/appmanager/AppManagerMainActivity;->e:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AppFragment;->f:Lh3/j;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p1, Lh3/e;

    invoke-direct {p1}, Lh3/e;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AppFragment;->c:Le3/a;

    invoke-virtual {p1, v0}, Le3/a;->x(Ljava/util/ArrayList;)V

    iget-boolean p1, p0, Lcom/miui/appmanager/fragment/AppFragment;->g:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AppFragment;->h0()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/appmanager/fragment/AppFragment;->g:Z

    :cond_1
    invoke-virtual {p0}, Lcom/miui/appmanager/fragment/AppFragment;->j0()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/miui/appmanager/fragment/AppFragment;->h:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/miui/appmanager/fragment/AppFragment;->h:I

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AppFragment;->c:Le3/a;

    invoke-virtual {v0, p1}, Le3/a;->v(I)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AppFragment;->c:Le3/a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/AppFragment;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AppFragment;->i0()V

    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p2, 0x7f0e008b

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0b0bfd

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/miui/appmanager/widget/AMMainTopView;

    iput-object p3, p0, Lcom/miui/appmanager/fragment/AppFragment;->a:Lcom/miui/appmanager/widget/AMMainTopView;

    const p3, 0x7f0b0bf4

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/appmanager/fragment/AppFragment;->e:Landroid/view/View;

    const p3, 0x7f0b0d5e

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/miui/appmanager/widget/AMMessageView;

    iput-object p3, p0, Lcom/miui/appmanager/fragment/AppFragment;->d:Lcom/miui/appmanager/widget/AMMessageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object v1, p3

    check-cast v1, Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-virtual {v1}, Lcom/miui/appmanager/AppManagerMainActivity;->m0()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const v2, 0x7f0b06d4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/miui/appmanager/fragment/AppFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v2, Le3/a;

    invoke-direct {v2, p2}, Le3/a;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/appmanager/fragment/AppFragment;->c:Le3/a;

    iget-object p2, p0, Lcom/miui/appmanager/fragment/AppFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v2, Lmiuix/recyclerview/card/f;

    invoke-direct {v2, p3}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p0, Lcom/miui/appmanager/fragment/AppFragment;->c:Le3/a;

    invoke-virtual {p2, v1}, Le3/a;->w(Z)V

    invoke-static {}, Lx4/t;->p()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    iput p2, p0, Lcom/miui/appmanager/fragment/AppFragment;->h:I

    iget-object p3, p0, Lcom/miui/appmanager/fragment/AppFragment;->c:Le3/a;

    invoke-virtual {p3, p2}, Le3/a;->v(I)V

    :cond_1
    iget-object p2, p0, Lcom/miui/appmanager/fragment/AppFragment;->c:Le3/a;

    invoke-virtual {p2, v0}, Le3/a;->u(Z)V

    iget-object p2, p0, Lcom/miui/appmanager/fragment/AppFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/miui/appmanager/fragment/AppFragment;->c:Le3/a;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-virtual {p0}, Lcom/miui/appmanager/fragment/AppFragment;->k0()V

    return-object p1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lx4/q;->l(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgb/b;->t(Ljava/lang/String;)V

    return-void
.end method
