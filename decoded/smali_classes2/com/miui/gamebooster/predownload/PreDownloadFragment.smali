.class public Lcom/miui/gamebooster/predownload/PreDownloadFragment;
.super Lcom/miui/common/base/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Ll8/e;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ll8/f;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lmiuix/recyclerview/widget/RecyclerView;

.field private f:Lq6/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/f<",
            "Li7/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li7/a;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lmiuix/appcompat/app/ProgressDialog;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->j:Z

    return-void
.end method

.method public static synthetic b0(Lcom/miui/gamebooster/predownload/PreDownloadFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->i0(I)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/gamebooster/predownload/PreDownloadFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->h0(I)V

    return-void
.end method

.method static synthetic d0(Lcom/miui/gamebooster/predownload/PreDownloadFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->g0()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/gamebooster/predownload/PreDownloadFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/gamebooster/predownload/PreDownloadFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->g:Ljava/util/List;

    return-object p1
.end method

.method private g0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lx4/h1;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->h:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->h:Lmiuix/appcompat/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method private synthetic h0(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->f:Lq6/f;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->f:Lq6/f;

    invoke-virtual {v2, p1}, Lq6/f;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li7/a;

    invoke-virtual {v0, v1, p1}, Li7/i;->O(Landroid/content/Context;Li7/a;)V

    return-void
.end method

.method private synthetic i0(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->f:Lq6/f;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->f:Lq6/f;

    invoke-virtual {v2, p1}, Lq6/f;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li7/a;

    invoke-virtual {v0, v1, p1}, Li7/i;->O(Landroid/content/Context;Li7/a;)V

    return-void
.end method

.method private j0()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->k0()V

    invoke-static {}, Lk7/f;->k()Lk7/f;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/predownload/PreDownloadFragment$a;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/predownload/PreDownloadFragment$a;-><init>(Lcom/miui/gamebooster/predownload/PreDownloadFragment;)V

    invoke-virtual {v0, v1}, Lk7/f;->t(Lk7/f$b;)V

    return-void
.end method

.method private k0()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lx4/h1;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->h:Lmiuix/appcompat/app/ProgressDialog;

    if-nez v0, :cond_1

    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->h:Lmiuix/appcompat/app/ProgressDialog;

    const v1, 0x7f120a23

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->h:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->h:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->i:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public S(Ll8/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->a:Ll8/f;

    return-void
.end method

.method protected initView()V
    .locals 3

    const v0, 0x7f0b0bcd

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v1, 0x7f120a9c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v0, 0x7f0b0041

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f0b0379

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->d:Landroid/view/View;

    const v0, 0x7f0b06d4

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BaseFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->e:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->e:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->e:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Li7/d;

    invoke-direct {v1}, Li7/d;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    new-instance v0, Lq6/f;

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lq6/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->f:Lq6/f;

    new-instance v1, Lcom/miui/gamebooster/predownload/b;

    new-instance v2, Li7/b;

    invoke-direct {v2, p0}, Li7/b;-><init>(Lcom/miui/gamebooster/predownload/PreDownloadFragment;)V

    invoke-direct {v1, v2}, Lcom/miui/gamebooster/predownload/b;-><init>(Lcom/miui/gamebooster/predownload/b$c;)V

    invoke-virtual {v0, v1}, Lq6/f;->o(Lq6/b;)Lq6/f;

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->f:Lq6/f;

    new-instance v1, Lcom/miui/gamebooster/predownload/a;

    new-instance v2, Li7/c;

    invoke-direct {v2, p0}, Li7/c;-><init>(Lcom/miui/gamebooster/predownload/PreDownloadFragment;)V

    invoke-direct {v1, v2}, Lcom/miui/gamebooster/predownload/a;-><init>(Lcom/miui/gamebooster/predownload/b$c;)V

    invoke-virtual {v0, v1}, Lq6/f;->o(Lq6/b;)Lq6/f;

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->e:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->f:Lq6/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lve/g;->n(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->j0()V

    return-void
.end method

.method public l0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li7/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lc7/c;->n(Ljava/util/Collection;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->e:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->d:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->e:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->f:Lq6/f;

    invoke-virtual {v0, p1}, Lq6/f;->F(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->f:Lq6/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->c:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->a:Ll8/f;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ll8/f;->pop()V

    :cond_0
    return-void
.end method

.method protected onCreateViewLayout()I
    .locals 1

    const v0, 0x7f0e017b

    return v0
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    invoke-static {}, Lk7/f;->k()Lk7/f;

    move-result-object v0

    invoke-virtual {v0}, Lk7/f;->w()V

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BaseFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lve/g;->t(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->j:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->j0()V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/miui/gamebooster/predownload/PreDownloadFragment;->j:Z

    :goto_0
    invoke-static {}, Li7/i;->l()Li7/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Li7/i;->F(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onStop()V

    invoke-static {}, Lve/g;->m()Lve/g;

    move-result-object v0

    invoke-virtual {v0}, Lve/g;->i()V

    return-void
.end method
