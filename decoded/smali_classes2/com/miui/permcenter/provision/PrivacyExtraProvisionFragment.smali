.class public final Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPrivacyExtraProvisionActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyExtraProvisionActivity.kt\ncom/miui/permcenter/provision/PrivacyExtraProvisionFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,294:1\n84#2,6:295\n*S KotlinDebug\n*F\n+ 1 PrivacyExtraProvisionActivity.kt\ncom/miui/permcenter/provision/PrivacyExtraProvisionFragment\n*L\n91#1:295,6\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:Lcom/miui/permcenter/provision/b;

.field private d:Lqc/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    const-class v0, Lcom/miui/permcenter/provision/c;

    invoke-static {v0}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$d;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$d;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$e;

    invoke-direct {v2, p0}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$e;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/x;->a(Landroidx/fragment/app/Fragment;Lhk/b;Lak/a;Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->a:Loj/f;

    return-void
.end method

.method public static final synthetic b0(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;)Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->e:Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;

    return-object p0
.end method

.method public static final synthetic c0(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;)Lcom/miui/permcenter/provision/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->c:Lcom/miui/permcenter/provision/b;

    return-object p0
.end method

.method public static final synthetic d0(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;)Lcom/miui/permcenter/provision/c;
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->f0()Lcom/miui/permcenter/provision/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e0(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;Lqc/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->d:Lqc/a;

    return-void
.end method

.method private final f0()Lcom/miui/permcenter/provision/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->a:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/provision/c;

    return-object v0
.end method


# virtual methods
.method protected initView()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.miui.permcenter.provision.PrivacyExtraProvisionActivity"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;

    iput-object v0, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->e:Lcom/miui/permcenter/provision/PrivacyExtraProvisionActivity;

    const v0, 0x7f0b06cc

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.list)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "mRecyclerView"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v0, Lcom/miui/permcenter/provision/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "requireActivity()"

    invoke-static {v3, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$a;

    invoke-direct {v5, p0}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$a;-><init>(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;)V

    new-instance v6, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$b;

    invoke-direct {v6, p0}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$b;-><init>(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;)V

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/miui/permcenter/provision/b;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lak/p;Lak/l;)V

    iput-object v0, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->c:Lcom/miui/permcenter/provision/b;

    iget-object v0, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->c:Lcom/miui/permcenter/provision/b;

    if-nez v1, :cond_2

    const-string v1, "mAdapter"

    invoke-static {v1}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v0

    const-string v1, "viewLifecycleOwner"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$c;

    invoke-direct {v1, p0, v2}, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment$c;-><init>(Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;Ltj/d;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/o;->c(Lak/p;)Llk/s1;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/provision/PrivacyExtraProvisionFragment;->d:Lqc/a;

    if-eqz p1, :cond_0

    sget-object p2, Lxc/e;->a:Lxc/e;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lqc/a;->d()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lxc/e;->d(Landroid/content/Intent;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e017c

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0
    .param p1    # Landroidx/appcompat/app/ActionBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
