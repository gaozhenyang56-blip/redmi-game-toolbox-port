.class public Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/Fragment;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/ArrayList<",
        "Ln3/a;",
        ">;>;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final p:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ln3/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/pm/PackageManager;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/miui/optimizecenter/storage/view/EmptyView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lmiuix/recyclerview/widget/RecyclerView;

.field private i:Landroid/view/ActionMode;

.field private j:Lcom/miui/apppredict/fragment/a;

.field private k:Z

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/a;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/text/TextWatcher;

.field private o:Lmiuix/view/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$c;

    invoke-direct {v0}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$c;-><init>()V

    sput-object v0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->p:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->l:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->m:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$a;-><init>(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)V

    iput-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->n:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$b;-><init>(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)V

    iput-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->o:Lmiuix/view/l$b;

    return-void
.end method

.method public static synthetic b0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->o0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;ILn3/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->n0(ILn3/a;)V

    return-void
.end method

.method static synthetic d0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->m:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Lcom/miui/optimizecenter/storage/view/EmptyView;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Lcom/miui/apppredict/fragment/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->j:Lcom/miui/apppredict/fragment/a;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->d:Landroid/view/View;

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->n:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->l:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->p0()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private synthetic n0(ILn3/a;)V
    .locals 2

    invoke-virtual {p2}, Ln3/a;->c()I

    move-result p1

    const/16 v0, 0x3e7

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Ln3/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lp3/i;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ln3/a;->b()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p2}, Ln3/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p2, v1}, Ln3/a;->e(Z)V

    invoke-static {p1}, Lp3/i;->o(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ln3/a;->e(Z)V

    invoke-static {p1}, Lp3/i;->b(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->isSearchMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->i:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->j:Lcom/miui/apppredict/fragment/a;

    iget-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->l:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/apppredict/fragment/a;->r(Ljava/util/List;Landroid/view/View;Z)V

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/apppredict/service/AppPredictService;->w(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic o0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->o:Lmiuix/view/l$b;

    invoke-virtual {p0, p1}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->startSearchMode(Lmiuix/view/l$b;)V

    return-void
.end method

.method private p0()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ln3/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lp3/i;->i()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Li4/a;->k(Landroid/content/Context;)Li4/a;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Li4/a;->j()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lx4/z1;->y()I

    move-result v3

    const/16 v4, 0x3e7

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/appmanager/AppManageUtils;->k0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->b:Landroid/content/pm/PackageManager;

    const/16 v5, 0x40

    invoke-static {v3, v5, v4}, Lcom/miui/appmanager/AppManageUtils;->G(Landroid/content/pm/PackageManager;II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sget-object v5, Lp3/g;->b:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Lx4/z1;->m(I)I

    move-result v8

    const/4 v5, 0x0

    :try_start_0
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Li4/a;->f(Ljava/lang/String;)Li4/b;

    move-result-object v7

    invoke-virtual {v7}, Li4/b;->a()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v9, "AppPredict"

    const-string v10, "getAppLabel error"

    invoke-static {v9, v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v7, v5

    if-eq v8, v4, :cond_3

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    if-ne v8, v4, :cond_5

    invoke-static {v6}, Lp3/i;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    new-instance v11, Ln3/a;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v10, 0x1

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Ln3/a;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    iget-object v3, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v11, Ln3/a;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Ln3/a;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    :goto_2
    iget-object v3, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/a;

    invoke-virtual {v2}, Ln3/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->p:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->j:Lcom/miui/apppredict/fragment/a;

    iget-object v1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/apppredict/fragment/a;->r(Ljava/util/List;Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Ln3/a;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->q0(Lq0/c;Ljava/util/ArrayList;)V

    return-void
.end method

.method public exitSearchMode()V
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->i:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->i:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->i:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->b:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroidx/loader/app/a;->d(I)Lq0/c;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1, v3, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->k:Z

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->a:Landroid/app/Activity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Ln3/a;",
            ">;>;"
        }
    .end annotation

    new-instance p1, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment$d;-><init>(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;Landroid/content/Context;)V

    return-object p1
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0e0053

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b0b78

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->d:Landroid/view/View;

    const p2, 0x7f0b0379

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/optimizecenter/storage/view/EmptyView;

    iput-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const p2, 0x7f0b0be6

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->f:Landroid/widget/TextView;

    const p2, 0x7f0b06d4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->h:Lmiuix/recyclerview/widget/RecyclerView;

    const p2, 0x7f0b0a23

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->c:Landroid/view/View;

    const p3, 0x1020009

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->g:Landroid/widget/TextView;

    new-instance p2, Lcom/miui/apppredict/fragment/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/miui/apppredict/fragment/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->j:Lcom/miui/apppredict/fragment/a;

    new-instance p3, Ln3/d;

    invoke-direct {p3, p0}, Ln3/d;-><init>(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)V

    invoke-virtual {p2, p3}, Lcom/miui/apppredict/fragment/a;->q(Lcom/miui/apppredict/fragment/a$a;)V

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p3, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->a:Landroid/app/Activity;

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object p3, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->h:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->h:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object p3, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->j:Lcom/miui/apppredict/fragment/a;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->c:Landroid/view/View;

    new-instance p3, Ln3/e;

    invoke-direct {p3, p0}, Ln3/e;-><init>(Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const p3, 0x7f12022d

    invoke-virtual {p2, p3}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setHintView(I)V

    return-object p1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->k:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/appcompat/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public q0(Lq0/c;Ljava/util/ArrayList;)V
    .locals 5
    .param p1    # Lq0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Ln3/a;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Ln3/a;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/storage/view/EmptyView;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->j:Lcom/miui/apppredict/fragment/a;

    iget-object v0, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->e:Lcom/miui/optimizecenter/storage/view/EmptyView;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/apppredict/fragment/a;->r(Ljava/util/List;Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f10002c

    iget-object v2, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public startSearchMode(Lmiuix/view/l$b;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/apppredict/fragment/WidgetBlackListSettingFragment;->i:Landroid/view/ActionMode;

    return-void
.end method
