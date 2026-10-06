.class public final Lcom/miui/permcenter/wakepath/WakePathDetailFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"


# instance fields
.field private a:Lyc/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Landroid/app/AppOpsManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Z

.field private final d:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lcom/miui/permcenter/wakepath/WakePathDetailFragment$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.AppOpsManager"

    invoke-static {v0, v1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->b:Landroid/app/AppOpsManager;

    new-instance v0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$c;-><init>(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->d:Loj/f;

    new-instance v0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b;-><init>(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->e:Loj/f;

    new-instance v0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$d;

    invoke-direct {v0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$d;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->f:Lcom/miui/permcenter/wakepath/WakePathDetailFragment$d;

    return-void
.end method

.method public static synthetic b0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->m0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->l0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->k0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic e0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->c:Z

    return p0
.end method

.method public static final synthetic f0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)Lyc/j;
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->n0()Lyc/j;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)Lyc/s;
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->o0()Lyc/s;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)Lyc/r;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->a:Lyc/r;

    return-object p0
.end method

.method public static final synthetic i0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->c:Z

    return-void
.end method

.method private final j0(Lmiuix/appcompat/app/ActionBar;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayOptions(II)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121bc7

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f080b06

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, Lyc/k;

    invoke-direct {v1, p0}, Lyc/k;-><init>(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    return-void
.end method

.method private static final k0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/view/View;)V
    .locals 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121bc2

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lbk/b0;->a:Lbk/b0;

    const v0, 0x7f121bc9

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.wakepath_delete_app_start_all)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->a:Lyc/r;

    invoke-static {v3}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lyc/r;->e()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "format(format, *args)"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120499

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lyc/l;

    invoke-direct {v2}, Lyc/l;-><init>()V

    invoke-virtual {p1, v0, v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->addNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120f48

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lyc/m;

    invoke-direct {v2, p0}, Lyc/m;-><init>(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;)V

    invoke-virtual {p1, v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->addPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final l0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static final m0(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->o0()Lyc/s;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->a:Lyc/r;

    invoke-static {p0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lyc/r;->d()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, p0, p2, v0, v1}, Lyc/s;->k(Lyc/s;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final n0()Lyc/j;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->e:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/j;

    return-object v0
.end method

.method private final o0()Lyc/s;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->d:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/s;

    return-object v0
.end method


# virtual methods
.method protected initView()V
    .locals 8

    const v0, 0x7f0b06cc

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->n0()Lyc/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-static {}, Lbl/l;->a()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060b72

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    new-instance v1, Lmiuix/recyclerview/card/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v0

    const-string v1, "viewLifecycleOwner"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$a;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$a;-><init>(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Ltj/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "pkg_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->finish()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->o0()Lyc/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lyc/s;->p(Ljava/lang/String;)Lyc/r;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->a:Lyc/r;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BaseFragment;->finish()V

    return-void

    :cond_3
    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e0446

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 1
    .param p1    # Landroidx/appcompat/app/ActionBar;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/permcenter/o;->t:Z

    if-nez v0, :cond_0

    check-cast p1, Lmiuix/appcompat/app/ActionBar;

    invoke-direct {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->j0(Lmiuix/appcompat/app/ActionBar;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewInflated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0b00bd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->a:Lyc/r;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lyc/r;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public final p0(Z)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->o0()Lyc/s;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->a:Lyc/r;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lyc/s;->j(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->a:Lyc/r;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lx4/z1;->y()I

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v0, v2, v1}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->b:Landroid/app/AppOpsManager;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->a:Lyc/r;

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v2

    xor-int/lit8 v3, p1, 0x1

    const/16 v4, 0x2741

    invoke-static {v1, v4, v0, v2, v3}, Landroid/app/AppOpsManagerCompat;->setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V

    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->o0()Lyc/s;

    move-result-object v0

    invoke-virtual {v0}, Lyc/s;->q()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->a:Lyc/r;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->o0()Lyc/s;

    move-result-object v0

    invoke-virtual {v0}, Lyc/s;->q()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->a:Lyc/r;

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lyc/r;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/miui/permcenter/wakepath/WakePathDetailFragment;->b:Landroid/app/AppOpsManager;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v1, v4, v2, v0, p1}, Landroid/app/AppOpsManagerCompat;->setMode(Landroid/app/AppOpsManager;IILjava/lang/String;I)V

    :cond_0
    return-void
.end method
