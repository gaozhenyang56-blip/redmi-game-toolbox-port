.class public Lcom/miui/optimizecenter/storage/StorageFragmentWork;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lcb/e;

.field private b:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/optimizecenter/storage/StorageFragmentWork;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->k0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/optimizecenter/storage/StorageFragmentWork;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->l0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/optimizecenter/storage/StorageFragmentWork;Lra/j0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->i0(Lra/j0;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/optimizecenter/storage/StorageFragmentWork;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->j0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/optimizecenter/storage/StorageFragmentWork;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->h0(Ljava/util/Set;)V

    return-void
.end method

.method private g0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->a:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->b()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lra/d0;

    invoke-direct {v2, p0}, Lra/d0;-><init>(Lcom/miui/optimizecenter/storage/StorageFragmentWork;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->a:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->c()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lra/e0;

    invoke-direct {v2, p0}, Lra/e0;-><init>(Lcom/miui/optimizecenter/storage/StorageFragmentWork;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->a:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->k()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lra/f0;

    invoke-direct {v2, p0}, Lra/f0;-><init>(Lcom/miui/optimizecenter/storage/StorageFragmentWork;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->a:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->d()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lra/g0;

    invoke-direct {v2, p0}, Lra/g0;-><init>(Lcom/miui/optimizecenter/storage/StorageFragmentWork;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->a:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lra/h0;

    invoke-direct {v2, p0}, Lra/h0;-><init>(Lcom/miui/optimizecenter/storage/StorageFragmentWork;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    return-void
.end method

.method private synthetic h0(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->b:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    invoke-virtual {v0, p1}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->setScanFinished(Ljava/util/Set;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->b:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->a:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->h()Leb/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->l(Leb/a;)V

    return-void
.end method

.method private synthetic i0(Lra/j0;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->b:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->getScanFinishedSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/optimizecenter/storage/a;->G(Lra/j0;)Lcom/miui/optimizecenter/widget/storage/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->b:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->a:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->h()Leb/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->l(Leb/a;)V

    :cond_0
    return-void
.end method

.method private synthetic j0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->m0()V

    return-void
.end method

.method private synthetic k0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->m0()V

    return-void
.end method

.method private synthetic l0(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->b:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->a:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->h()Leb/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->l(Leb/a;)V

    return-void
.end method


# virtual methods
.method public m0()V
    .locals 3

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lx4/y;->t()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lpg/a;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->b:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f(ZZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130004

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0e0180

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p2, Landroidx/lifecycle/u0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lcb/e;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object p2

    check-cast p2, Lcb/e;

    iput-object p2, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->a:Lcb/e;

    const p2, 0x7f0b026e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->b:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    sget-object p2, Lra/k0;->c:Lra/k0;

    invoke-virtual {p1, p2}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->setStorageStyle(Lra/k0;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->b:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->a:Lcb/e;

    invoke-virtual {p2}, Lcb/e;->h()Leb/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->setStorageInfo(Leb/a;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->b:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->b:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->b:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->g0()V

    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->m0()V

    return-void
.end method
