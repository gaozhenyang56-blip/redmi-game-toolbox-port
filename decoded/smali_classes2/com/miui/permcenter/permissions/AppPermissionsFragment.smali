.class public Lcom/miui/permcenter/permissions/AppPermissionsFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/miui/permcenter/permissions/b$c;
.implements Landroid/view/View$OnClickListener;
.implements Lwb/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/permissions/AppPermissionsFragment$c;
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/AppPermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/miui/permcenter/permissions/b;

.field private d:Lmiuix/recyclerview/widget/RecyclerView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/miui/permcenter/permissions/AppPermissionsFragment$c;

.field private i:Landroid/text/TextWatcher;

.field protected j:Lmiuix/view/l;

.field private k:Lmiuix/view/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->b:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/permcenter/permissions/AppPermissionsFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/AppPermissionsFragment$a;-><init>(Lcom/miui/permcenter/permissions/AppPermissionsFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->i:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/permcenter/permissions/AppPermissionsFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/AppPermissionsFragment$b;-><init>(Lcom/miui/permcenter/permissions/AppPermissionsFragment;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->k:Lmiuix/view/l$b;

    return-void
.end method

.method static synthetic b0(Lcom/miui/permcenter/permissions/AppPermissionsFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c0(Lcom/miui/permcenter/permissions/AppPermissionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->updateData()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/permcenter/permissions/AppPermissionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->j0()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/permcenter/permissions/AppPermissionsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/permcenter/permissions/AppPermissionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->k0()V

    return-void
.end method

.method static synthetic g0(Lcom/miui/permcenter/permissions/AppPermissionsFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->f:Landroid/view/View;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/permcenter/permissions/AppPermissionsFragment;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->d:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/permcenter/permissions/AppPermissionsFragment;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->i:Landroid/text/TextWatcher;

    return-object p0
.end method

.method private j0()V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10002c

    iget-object v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private k0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private updateData()V
    .locals 5

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->isSearchMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->j:Lmiuix/view/l;

    invoke-interface {v0}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->isSearchMode()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_5

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->c:Lcom/miui/permcenter/permissions/b;

    iget-object v4, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/miui/permcenter/permissions/b;->p(Ljava/util/List;)V

    iget-object v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->e:Landroid/view/View;

    if-eqz v0, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->d:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    move v1, v3

    :cond_4
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->a:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    iget-object v4, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->c:Lcom/miui/permcenter/permissions/b;

    invoke-virtual {v4, v0}, Lcom/miui/permcenter/permissions/b;->p(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->e:Landroid/view/View;

    if-eqz v2, :cond_6

    move v4, v1

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->d:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_7

    move v1, v3

    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->j0()V

    :goto_4
    return-void
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->k0()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/AppPermissionInfo;

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->updateData()V

    return-void
.end method


# virtual methods
.method public D(ILandroid/view/View;Lcom/miui/permcenter/AppPermissionInfo;)V
    .locals 1

    invoke-virtual {p3}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.miui.hybrid"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.miui.hybrid.action.PERMISSION_PREFERENCES"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const-class v0, Lcom/miui/permcenter/settings/OtherPermissionsActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "extra_pkgname"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public exitSearchMode()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->j:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->j:Lmiuix/view/l;

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->i0(Z)V

    :cond_1
    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->j:Lmiuix/view/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance p1, Lcom/miui/permcenter/permissions/b;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p1, v0}, Lcom/miui/permcenter/permissions/b;-><init>(Lmiuix/appcompat/app/AppCompatActivity;)V

    iput-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->c:Lcom/miui/permcenter/permissions/b;

    invoke-virtual {p1, p0}, Lcom/miui/permcenter/permissions/b;->o(Lcom/miui/permcenter/permissions/b$c;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->c:Lcom/miui/permcenter/permissions/b;

    invoke-virtual {p1, p0}, Lwb/a;->k(Lwb/b;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->d:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->c:Lcom/miui/permcenter/permissions/b;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    invoke-static {}, Lbl/l;->a()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    new-instance p1, Lmiuix/recyclerview/card/f;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    sget-object v0, Lxc/v;->a:Lxc/v$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxc/v$a;->f(Landroid/app/Activity;)I

    move-result v0

    int-to-float v0, v0

    sget v1, Ltm/e;->d:I

    mul-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0714b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lmiuix/recyclerview/card/f;->v(I)V

    invoke-virtual {p1, v0}, Lmiuix/recyclerview/card/f;->u(I)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->d:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_0
    new-instance p1, Lcom/miui/permcenter/permissions/AppPermissionsFragment$c;

    invoke-direct {p1, p0}, Lcom/miui/permcenter/permissions/AppPermissionsFragment$c;-><init>(Lcom/miui/permcenter/permissions/AppPermissionsFragment;)V

    iput-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->h:Lcom/miui/permcenter/permissions/AppPermissionsFragment$c;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->f:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->k:Lmiuix/view/l$b;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->startSearchMode(Lmiuix/view/l$b;)V

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
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->h:Lcom/miui/permcenter/permissions/AppPermissionsFragment$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0e0431

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b0101

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->d:Lmiuix/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b0379

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->e:Landroid/view/View;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p3, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->d:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    const p2, 0x7f0b00bd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->f:Landroid/view/View;

    const p3, 0x1020009

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->g:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->f:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->c:Lcom/miui/permcenter/permissions/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setHorizontalPadding(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/common/base/BaseActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/miui/common/base/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/miui/common/base/BaseActivity;->setViewHorizontalPadding(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    check-cast p1, Lmiuix/view/l;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsFragment;->j:Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;->i0(Z)V

    :cond_0
    return-void
.end method
