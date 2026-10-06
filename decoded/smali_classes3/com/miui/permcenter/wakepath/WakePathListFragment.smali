.class public final Lcom/miui/permcenter/wakepath/WakePathListFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lmiuix/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lmiuix/nestedheader/widget/NestedHeaderLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Llk/s1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lmiuix/view/l;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final g:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Lcom/miui/permcenter/wakepath/WakePathListFragment$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Landroid/text/TextWatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    new-instance v0, Lcom/miui/permcenter/wakepath/WakePathListFragment$f;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/wakepath/WakePathListFragment$f;-><init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->g:Loj/f;

    new-instance v0, Lcom/miui/permcenter/wakepath/WakePathListFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/wakepath/WakePathListFragment$c;-><init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V

    invoke-static {v0}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->h:Loj/f;

    new-instance v0, Lcom/miui/permcenter/wakepath/WakePathListFragment$d;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/wakepath/WakePathListFragment$d;-><init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->i:Lcom/miui/permcenter/wakepath/WakePathListFragment$d;

    new-instance v0, Lcom/miui/permcenter/wakepath/WakePathListFragment$e;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/wakepath/WakePathListFragment$e;-><init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->j:Landroid/text/TextWatcher;

    return-void
.end method

.method public static synthetic b0(Lcom/miui/permcenter/wakepath/WakePathListFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->r0(Lcom/miui/permcenter/wakepath/WakePathListFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->q0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/permcenter/wakepath/WakePathListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->p0(Lcom/miui/permcenter/wakepath/WakePathListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic e0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lyc/j;
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->s0()Lyc/j;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lmiuix/nestedheader/widget/NestedHeaderLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->d:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    return-object p0
.end method

.method public static final synthetic g0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lmiuix/view/l;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->f:Lmiuix/view/l;

    return-object p0
.end method

.method public static final synthetic h0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Llk/s1;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->e:Llk/s1;

    return-object p0
.end method

.method public static final synthetic i0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->j:Landroid/text/TextWatcher;

    return-object p0
.end method

.method public static final synthetic j0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->b:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic k0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lyc/s;
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->t0()Lyc/s;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l0(Lcom/miui/permcenter/wakepath/WakePathListFragment;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static final synthetic m0(Lcom/miui/permcenter/wakepath/WakePathListFragment;Lmiuix/view/l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->f:Lmiuix/view/l;

    return-void
.end method

.method public static final synthetic n0(Lcom/miui/permcenter/wakepath/WakePathListFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method private final o0(Lmiuix/appcompat/app/ActionBar;)V
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

    new-instance v1, Lyc/n;

    invoke-direct {v1, p0}, Lyc/n;-><init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    return-void
.end method

.method private static final p0(Lcom/miui/permcenter/wakepath/WakePathListFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121bc7

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121bc8

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120499

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lyc/o;

    invoke-direct {v1}, Lyc/o;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->addNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120f48

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lyc/p;

    invoke-direct {v1, p0}, Lyc/p;-><init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V

    const/4 p0, 0x1

    invoke-virtual {p1, v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->addPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final q0(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static final r0(Lcom/miui/permcenter/wakepath/WakePathListFragment;Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->t0()Lyc/s;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0, p1}, Lyc/s;->k(Lyc/s;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final s0()Lyc/j;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->h:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/j;

    return-object v0
.end method

.method private final t0()Lyc/s;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->g:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyc/s;

    return-object v0
.end method

.method private final u0(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final updateSearchResult(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v0

    const-string v1, "viewLifecycleOwner"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v2

    new-instance v5, Lcom/miui/permcenter/wakepath/WakePathListFragment$h;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/miui/permcenter/wakepath/WakePathListFragment$h;-><init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;Ljava/lang/String;Ltj/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->e:Llk/s1;

    return-void
.end method


# virtual methods
.method public final exitSearchMode()V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->f:Lmiuix/view/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->f:Lmiuix/view/l;

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->e:Llk/s1;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Llk/s1$a;->a(Llk/s1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->t0()Lyc/s;

    move-result-object v0

    invoke-virtual {v0}, Lyc/s;->s()V

    return-void
.end method

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

    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->s0()Lyc/j;

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
    iput-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->b:Landroid/view/View;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1020009

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120c5e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b027f

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/nestedheader/widget/NestedHeaderLayout;

    iput-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->d:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v0

    const-string v1, "viewLifecycleOwner"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/permcenter/wakepath/WakePathListFragment$a;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/miui/permcenter/wakepath/WakePathListFragment$a;-><init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;Ltj/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    invoke-direct {p0}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->t0()Lyc/s;

    move-result-object v0

    invoke-virtual {v0}, Lyc/s;->n()Landroidx/lifecycle/c0;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/wakepath/WakePathListFragment$b;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/wakepath/WakePathListFragment$b;-><init>(Lcom/miui/permcenter/wakepath/WakePathListFragment;)V

    new-instance v2, Lcom/miui/permcenter/wakepath/WakePathListFragment$g;

    invoke-direct {v2, v1}, Lcom/miui/permcenter/wakepath/WakePathListFragment$g;-><init>(Lak/l;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    return-void
.end method

.method public final isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->f:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->i:Lcom/miui/permcenter/wakepath/WakePathListFragment$d;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->startSearchMode(Lmiuix/view/l$b;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

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

    invoke-direct {p0, p1}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->o0(Lmiuix/appcompat/app/ActionBar;)V

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

    const p1, 0x7f121bd2

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseFragment;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public final startSearchMode(Lmiuix/view/l$b;)V
    .locals 1
    .param p1    # Lmiuix/view/l$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/wakepath/WakePathListFragment;->u0(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type miuix.view.SearchActionMode"

    invoke-static {p1, v0}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/WakePathListFragment;->f:Lmiuix/view/l;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    :cond_0
    return-void
.end method
