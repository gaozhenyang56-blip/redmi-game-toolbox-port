.class public Lcom/miui/gamebooster/ui/WhiteListFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Ll8/e;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/WhiteListFragment$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/ui/BaseFragment;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/ArrayList<",
        "Lcom/miui/gamebooster/model/q;",
        ">;>;",
        "Ll8/e;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/q;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lmiuix/recyclerview/widget/RecyclerView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Lq6/f;

.field protected g:Lmiuix/view/l;

.field private h:Ll8/f;

.field private i:Landroid/view/View;

.field private j:Lmiuix/appcompat/app/ProgressDialog;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroidx/recyclerview/widget/RecyclerView$m;

.field m:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/text/TextWatcher;

.field private p:Lmiuix/view/l$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    new-instance v0, Lcom/miui/gamebooster/ui/WhiteListFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/WhiteListFragment$a;-><init>(Lcom/miui/gamebooster/ui/WhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->m:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/gamebooster/ui/WhiteListFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/WhiteListFragment$b;-><init>(Lcom/miui/gamebooster/ui/WhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->n:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/gamebooster/ui/WhiteListFragment$d;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/WhiteListFragment$d;-><init>(Lcom/miui/gamebooster/ui/WhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->o:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/gamebooster/ui/WhiteListFragment$e;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/WhiteListFragment$e;-><init>(Lcom/miui/gamebooster/ui/WhiteListFragment;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->p:Lmiuix/view/l$b;

    return-void
.end method

.method public static synthetic b0(Lcom/miui/gamebooster/ui/WhiteListFragment;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/ui/WhiteListFragment;->lambda$initView$0(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic c0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/gamebooster/ui/WhiteListFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->n0()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->o:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->p0()Z

    move-result p0

    return p0
.end method

.method static synthetic g0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->k:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Lq6/f;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->f:Lq6/f;

    return-object p0
.end method

.method private hideKeyboard(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method static synthetic i0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Lmiuix/view/l$b;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->p:Lmiuix/view/l$b;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/gamebooster/ui/WhiteListFragment;Lmiuix/view/l$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->startSearchMode(Lmiuix/view/l$b;)V

    return-void
.end method

.method static synthetic l0(Lcom/miui/gamebooster/ui/WhiteListFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method static synthetic m0(Lcom/miui/gamebooster/ui/WhiteListFragment;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private n0()V
    .locals 7

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->l:Landroidx/recyclerview/widget/RecyclerView$m;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    move v4, v1

    :goto_1
    iget-object v5, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v5}, Lcom/miui/gamebooster/model/q;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    new-instance v5, Lc3/o;

    invoke-direct {v5}, Lc3/o;-><init>()V

    iget-object v6, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v6}, Lcom/miui/gamebooster/model/q;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc3/o;->f(Ljava/lang/String;)V

    add-int v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/q;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/miui/gamebooster/ui/WhiteListFragment$c;

    invoke-direct {v1, p0, v0}, Lcom/miui/gamebooster/ui/WhiteListFragment$c;-><init>(Lcom/miui/gamebooster/ui/WhiteListFragment;Ljava/util/Map;)V

    invoke-static {v1}, Ls4/c$b;->b(Lu4/c;)Ls4/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071d6f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ls4/c$b;->c(I)Ls4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Ls4/c$b;->a()Ls4/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->l:Landroidx/recyclerview/widget/RecyclerView$m;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method private o0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->j:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->j:Lmiuix/appcompat/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private p0()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x6

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private r0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->j:Lmiuix/appcompat/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->j:Lmiuix/appcompat/app/ProgressDialog;

    const v1, 0x7f1209cb

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->j:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->j:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private startSearchMode(Lmiuix/view/l$b;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->g:Lmiuix/view/l;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Lcom/miui/gamebooster/model/q;

    invoke-direct {v3}, Lcom/miui/gamebooster/model/q;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v4}, Lcom/miui/gamebooster/model/q;->e(Ljava/util/ArrayList;)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_3

    iget-object v7, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v7}, Lcom/miui/gamebooster/model/q;->a()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v8}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-static {v0, v9}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10002f

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v5

    invoke-virtual {p1, v0, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/miui/gamebooster/model/q;->f(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v5}, Lcom/miui/gamebooster/ui/WhiteListFragment;->s0(Ljava/util/List;Z)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->n0()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/q;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public S(Ll8/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->h:Ll8/f;

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/ui/WhiteListFragment;->q0(Lq0/c;Ljava/util/ArrayList;)V

    return-void
.end method

.method public exitSearchMode()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->g:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->g:Lmiuix/view/l;

    :cond_0
    return-void
.end method

.method protected initView()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lc7/c;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0b06d4

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    const v1, 0x7f0b0379

    invoke-virtual {p0, v1}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->e:Landroid/view/View;

    new-instance v1, Lq6/f;

    invoke-direct {v1, v0}, Lq6/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->f:Lq6/f;

    new-instance v0, Lv5/a;

    iget-object v3, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x6

    if-ne v3, v5, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-direct {v0, v3}, Lv5/a;-><init>(Z)V

    invoke-virtual {v1, v0}, Lq6/f;->o(Lq6/b;)Lq6/f;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->f:Lq6/f;

    new-instance v1, Lv5/c;

    iget-object v3, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v3

    if-ne v3, v5, :cond_2

    move v2, v4

    :cond_2
    iget-object v3, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->m:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {v1, v2, v3}, Lv5/c;-><init>(ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0, v1}, Lq6/f;->o(Lq6/b;)Lq6/f;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->b:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->f:Lq6/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    const v0, 0x7f0b0a23

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->c:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->d:Landroid/widget/TextView;

    const v0, 0x7f0b0139

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->i:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->d:Landroid/widget/TextView;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->c:Landroid/view/View;

    const v1, 0x7f0b0578

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->o:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->d:Landroid/widget/TextView;

    new-instance v1, Ly7/m;

    invoke-direct {v1, p0}, Ly7/m;-><init>(Lcom/miui/gamebooster/ui/WhiteListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x70

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->g:Lmiuix/view/l;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->p0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->i:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->h:Ll8/f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ll8/f;->pop()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, La8/k2;->B(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f130429

    goto :goto_0

    :cond_0
    const p1, 0x7f13043e

    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/q;",
            ">;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->r0()V

    new-instance p1, Lcom/miui/gamebooster/ui/WhiteListFragment$f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/miui/gamebooster/ui/WhiteListFragment$f;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e01e3

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public q0(Lq0/c;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/q;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/miui/gamebooster/model/q;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p1

    const/16 v0, 0x70

    invoke-virtual {p1, v0}, Landroidx/loader/app/a;->a(I)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->o0()V

    iput-object p2, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/q;->d()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f10002c

    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p2

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Lcom/miui/gamebooster/ui/WhiteListFragment;->s0(Ljava/util/List;Z)V

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->n0()V

    return-void
.end method

.method public s0(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gamebooster/model/q;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->p0()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->k:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->k:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->f:Lq6/f;

    invoke-virtual {v0}, Lq6/f;->q()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gamebooster/model/q;

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WhiteListFragment;->p0()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->k:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->f:Lq6/f;

    invoke-virtual {v5}, Lq6/f;->getItemCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->f:Lq6/f;

    new-instance v4, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/q;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v6, v0, v5, v6}, Lcom/miui/gamebooster/model/d;-><init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Lq6/f;->m(Ljava/lang/Object;)V

    :cond_2
    iget-object v3, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->f:Lq6/f;

    invoke-virtual {v2}, Lcom/miui/gamebooster/model/q;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Lq6/f;->p(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/gamebooster/ui/WhiteListFragment;->f:Lq6/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method
