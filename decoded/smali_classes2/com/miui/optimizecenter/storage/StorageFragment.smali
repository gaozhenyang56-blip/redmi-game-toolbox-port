.class public Lcom/miui/optimizecenter/storage/StorageFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/storage/StorageFragment$c;,
        Lcom/miui/optimizecenter/storage/StorageFragment$b;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

.field private b:Landroid/view/View;

.field private c:Lcom/miui/optimizecenter/storage/view/PreferenceListView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Ljava/lang/String;

.field private h:Lcb/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/optimizecenter/storage/StorageFragment;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragment;->p0(Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/optimizecenter/storage/StorageFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragment;->s0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/optimizecenter/storage/StorageFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragment;->t0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/optimizecenter/storage/StorageFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragment;->u0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/optimizecenter/storage/StorageFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragment;->o0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/optimizecenter/storage/StorageFragment;Lra/j0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragment;->q0(Lra/j0;)V

    return-void
.end method

.method public static synthetic h0(Lcom/miui/optimizecenter/storage/StorageFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragment;->r0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/optimizecenter/storage/StorageFragment;Lra/k0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragment;->n0(Lra/k0;)V

    return-void
.end method

.method private j0(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->g:Ljava/lang/String;

    const-string v1, "button_deepclean"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f12008b

    goto :goto_0

    :cond_0
    const v0, 0x7f121860

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private k0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->i()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lra/v;

    invoke-direct {v2, p0}, Lra/v;-><init>(Lcom/miui/optimizecenter/storage/StorageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->f()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lra/w;

    invoke-direct {v2, p0}, Lra/w;-><init>(Lcom/miui/optimizecenter/storage/StorageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->b()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lra/x;

    invoke-direct {v2, p0}, Lra/x;-><init>(Lcom/miui/optimizecenter/storage/StorageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->c()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lra/y;

    invoke-direct {v2, p0}, Lra/y;-><init>(Lcom/miui/optimizecenter/storage/StorageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lra/z;

    invoke-direct {v2, p0}, Lra/z;-><init>(Lcom/miui/optimizecenter/storage/StorageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    sget-object v0, Lab/h;->a:Lab/h;

    invoke-virtual {v0}, Lab/h;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->j()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lra/a0;

    invoke-direct {v2, p0}, Lra/a0;-><init>(Lcom/miui/optimizecenter/storage/StorageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/miui/optimizecenter/storage/StorageFragment;->x0(JJ)Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->k()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lra/b0;

    invoke-direct {v2, p0}, Lra/b0;-><init>(Lcom/miui/optimizecenter/storage/StorageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->d()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lra/c0;

    invoke-direct {v2, p0}, Lra/c0;-><init>(Lcom/miui/optimizecenter/storage/StorageFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    return-void
.end method

.method private m0(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "miui.intent.action.GARBAGE_DEEPCLEAN"

    goto :goto_0

    :cond_0
    const-string v1, "miui.intent.action.GARBAGE_CLEANUP"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "enter_homepage_way"

    const-string v2, "storage_main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lx4/t;->s(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->h()Leb/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ldb/f;->i(Leb/a;Lcom/miui/optimizecenter/widget/storage/a;Z)V

    return-void
.end method

.method private synthetic n0(Lra/k0;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->a:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    invoke-virtual {v0, p1}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->setStorageStyle(Lra/k0;)V

    return-void
.end method

.method private synthetic o0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/StorageFragment;->z0()V

    return-void
.end method

.method private synthetic p0(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->a:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    invoke-virtual {v0, p1}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->setScanFinished(Ljava/util/Set;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->a:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->h()Leb/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->l(Leb/a;)V

    return-void
.end method

.method private synthetic q0(Lra/j0;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->a:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    invoke-virtual {v0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->getScanFinishedSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/optimizecenter/storage/a;->G(Lra/j0;)Lcom/miui/optimizecenter/widget/storage/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->a:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->h()Leb/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->l(Leb/a;)V

    :cond_0
    return-void
.end method

.method private synthetic r0(Ljava/lang/Boolean;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->a:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->h()Leb/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->l(Leb/a;)V

    return-void
.end method

.method private synthetic s0(Ljava/lang/Boolean;)V
    .locals 9

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {p1}, Lcb/e;->h()Leb/a;

    move-result-object p1

    invoke-virtual {p1}, Leb/a;->m()J

    move-result-wide v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f()J

    move-result-wide v2

    sub-long v4, v0, v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lx4/u1;->b(Landroid/content/Context;)I

    move-result p1

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "%.1f"

    invoke-static {v7, v4, v5, v8}, Ldb/h;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v6, v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v3, v8}, Ldb/h;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v6, v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "%.0f"

    invoke-static {v2, v0, v1, p1, v3}, Ldb/h;->b(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, v6, v0

    const p1, 0x7f12184e

    invoke-virtual {p0, p1, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/miui/optimizecenter/storage/StorageFragment$b;

    invoke-direct {p1, p0}, Lcom/miui/optimizecenter/storage/StorageFragment$b;-><init>(Lcom/miui/optimizecenter/storage/StorageFragment;)V

    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private synthetic t0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/StorageFragment;->v0()V

    return-void
.end method

.method private synthetic u0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/StorageFragment;->v0()V

    return-void
.end method

.method private x0(JJ)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    const-string p1, "button_clean"

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->g:Ljava/lang/String;

    const p1, 0x7f120ef2

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragment;->j0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->g:Ljava/lang/String;

    return-object p1

    :cond_0
    const-wide/16 v2, 0x5

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v2}, Lcb/e;->h()Leb/a;

    move-result-object v2

    invoke-virtual {v2}, Leb/a;->m()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    const-string p1, "button_deepclean"

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->g:Ljava/lang/String;

    const p1, 0x7f121850

    goto :goto_0

    :cond_1
    cmp-long p3, p1, p3

    const-string p4, "%.1f"

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p3, :cond_2

    const-string p3, "button_cache"

    iput-object p3, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->g:Ljava/lang/String;

    const p3, 0x7f12184f

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, p4}, Ldb/h;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, p3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p3, "button_trash"

    iput-object p3, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->g:Ljava/lang/String;

    const p3, 0x7f121851

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, p4}, Ldb/h;->a(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p0, p3, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private z0()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/miui/optimizecenter/storage/StorageFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/optimizecenter/storage/StorageFragment$c;-><init>(Lcom/miui/optimizecenter/storage/StorageFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load volume error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public O(Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;Lbb/a;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/optimizecenter/storage/StorageFragment$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lcom/miui/optimizecenter/storage/StorageSettingsActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lx4/y;->t()Z

    move-result p2

    if-eqz p2, :cond_1

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView;->getmVolumeInfo()Lab/g;

    move-result-object p1

    invoke-virtual {p1}, Lab/g;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lua/b;->d(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public l0(Landroid/app/Activity;Z)Z
    .locals 2

    invoke-static {}, Lx4/y;->t()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lx4/y;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lx4/y;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lx4/y;->s()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Ldb/e;->a(Landroid/content/Context;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    const/4 p2, 0x6

    if-ne p1, p2, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "button_deepclean"

    const v2, 0x7f0b0250

    if-ne v0, v2, :cond_0

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/StorageFragment;->m0(Z)V

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0b0b06

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0b07

    if-ne v0, v1, :cond_2

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/miui/optimizecenter/storage/FboResultActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0b0b

    if-ne p1, v0, :cond_3

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/miui/optimizecenter/storage/UfsTipActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :cond_3
    :goto_2
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

    const p3, 0x7f0e017f

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->c:Lcom/miui/optimizecenter/storage/view/PreferenceListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/view/PreferenceListView;->a()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
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

    iput-object p2, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    const p2, 0x7f0b026e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    iput-object p2, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->a:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {v0}, Lcb/e;->h()Leb/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->setStorageInfo(Leb/a;)V

    const p2, 0x7f0b0bed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->b:Landroid/view/View;

    const p2, 0x7f0b0b09

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->f:Landroid/widget/TextView;

    const p2, 0x7f0b0250

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->d:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lta/d;->b()Z

    move-result p2

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/u1;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v2, 0x7f0b03d5

    if-eqz p2, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0b0b07

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f0b0b0b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const p2, 0x7f0b0b06

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->e:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p2, "deep_clean"

    invoke-static {p2}, Ldb/f;->h(Ljava/lang/String;)V

    const p2, 0x7f0b03cb

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/storage/view/PreferenceListView;

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->c:Lcom/miui/optimizecenter/storage/view/PreferenceListView;

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/StorageFragment;->k0()V

    invoke-virtual {p0}, Lcom/miui/optimizecenter/storage/StorageFragment;->v0()V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->h:Lcb/e;

    invoke-virtual {p1}, Lcb/e;->v()V

    invoke-static {}, Lra/q;->a()Lra/q;

    move-result-object p1

    invoke-virtual {p1}, Lra/q;->c()V

    return-void
.end method

.method public v0()V
    .locals 6

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v1

    invoke-static {}, Lpg/a;->b()Z

    move-result v2

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->a:Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;

    invoke-virtual {v3, v1, v2}, Lcom/miui/optimizecenter/widget/storage/StorageViewGroup;->f(ZZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070362

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702e6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {}, Lx4/y;->t()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0702e7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0702e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :cond_2
    iget-object v1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v4, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->b:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0, v2}, Lcom/miui/optimizecenter/storage/StorageFragment;->l0(Landroid/app/Activity;Z)Z

    move-result v0

    const-string v1, "StorageActivity"

    if-eqz v0, :cond_3

    const-string v0, "summary is start"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->f:Landroid/widget/TextView;

    const v1, 0x800003

    goto :goto_0

    :cond_3
    const-string v0, "summary is center"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    return-void
.end method

.method w0(JJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/optimizecenter/storage/StorageFragment;->x0(JJ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldb/f;->g(Ljava/lang/String;)V

    return-void
.end method

.method y0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lab/g;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/StorageFragment;->c:Lcom/miui/optimizecenter/storage/view/PreferenceListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0}, Lcom/miui/optimizecenter/storage/view/PreferenceListView;->b(Ljava/util/List;Lcom/miui/optimizecenter/storage/view/PreferenceCategoryView$a;)V

    :cond_0
    return-void
.end method
