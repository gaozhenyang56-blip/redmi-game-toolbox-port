.class public Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;
.super Lcom/miui/common/base/ui/MiuiXPreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;,
        Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$i;,
        Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$f;,
        Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$a;,
        Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$h;,
        Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$c;,
        Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$b;,
        Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$e;,
        Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/ui/MiuiXPreferenceFragment;",
        "Landroidx/loader/app/a$a<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Landroid/content/DialogInterface$OnClickListener;

.field private B:Landroid/content/DialogInterface$OnClickListener;

.field private C:Landroid/content/pm/IPackageStatsObserver$Stub;

.field private D:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$a;

.field private b:Lmiuix/preference/TextPreference;

.field private c:Lmiuix/preference/TextPreference;

.field private d:Lmiuix/preference/TextPreference;

.field private e:Lmiuix/preference/TextPreference;

.field private f:Landroid/view/MenuItem;

.field private g:Landroid/content/pm/ApplicationInfo;

.field private h:Landroid/content/pm/PackageManager;

.field private i:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

.field private j:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

.field private k:Landroid/app/admin/DevicePolicyManager;

.field private l:Ljava/lang/Object;

.field private m:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;

.field private n:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$f;

.field private o:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$i;

.field private p:Ljava/lang/String;

.field private q:I

.field private r:I

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:Z

.field private x:Z

.field private y:Landroid/content/DialogInterface$OnClickListener;

.field private z:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/MiuiXPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->w:Z

    return-void
.end method

.method static synthetic A0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->z:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic B0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->M0(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic C0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->y:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method private D0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->j:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->m:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;

    invoke-direct {v0, v1}, Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->j:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->f:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->p:Ljava/lang/String;

    iget v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->r:I

    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->j:Lcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->h(Ljava/lang/String;ILcom/miui/appmanager/AppManageUtils$ClearUserDataObserver;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->A:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->M0(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->L0()V

    const-string v0, "clear_data"

    invoke-static {v0}, Lf3/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method private E0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->i:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->m:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;

    invoke-direct {v0, v1}, Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->i:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->l:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->p:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->r:I

    iget-object v3, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->i:Lcom/miui/appmanager/AppManageUtils$ClearCacheObserver;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/appmanager/AppManageUtils;->g(Ljava/lang/Object;Ljava/lang/String;ILcom/miui/appmanager/AppManageUtils$ClearCacheObserver;)V

    const-string v0, "clear_cache"

    invoke-static {v0}, Lf3/a;->k(Ljava/lang/String;)V

    return-void
.end method

.method private F0(Landroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v1, v2, :cond_2

    iget v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->q:I

    invoke-static {p1, v0, v1}, Lcom/miui/appmanager/AppManageUtils;->L(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;I)Lcom/miui/appmanager/a;

    move-result-object p1

    iget-wide v0, p1, Lcom/miui/appmanager/a;->b:J

    iget-wide v2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->u:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-wide v2, p1, Lcom/miui/appmanager/a;->c:J

    iget-wide v4, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->t:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p1, Lcom/miui/appmanager/a;->a:J

    iget-wide v4, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->v:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    :cond_1
    iput-wide v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->u:J

    iget-wide v2, p1, Lcom/miui/appmanager/a;->c:J

    iput-wide v2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->t:J

    iget-wide v4, p1, Lcom/miui/appmanager/a;->a:J

    iput-wide v4, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->v:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->s:J

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->m:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->p:Ljava/lang/String;

    iget v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->r:I

    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->C:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-static {p1, v0, v1, v2}, Lcom/miui/appmanager/AppManageUtils;->J(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private G0()V
    .locals 3

    new-instance v0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$f;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$f;-><init>(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->n:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$f;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private H0(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "key_total_size"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->b:Lmiuix/preference/TextPreference;

    const-string v1, "key_code_size"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->c:Lmiuix/preference/TextPreference;

    const-string v1, "key_data_size"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->d:Lmiuix/preference/TextPreference;

    const-string v1, "key_cache_size"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->e:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->b:Lmiuix/preference/TextPreference;

    const v2, 0x7f1201ad

    invoke-virtual {v1, v2}, Lmiuix/preference/TextPreference;->setText(I)V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->c:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v2}, Lmiuix/preference/TextPreference;->setText(I)V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->d:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v2}, Lmiuix/preference/TextPreference;->setText(I)V

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->e:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v2}, Lmiuix/preference/TextPreference;->setText(I)V

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->k:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$h;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$h;-><init>(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->C:Landroid/content/pm/IPackageStatsObserver$Stub;

    new-instance v0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$d;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$d;-><init>(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->y:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$e;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$e;-><init>(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->z:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$b;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$b;-><init>(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->A:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$c;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$c;-><init>(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->B:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object v0

    const/16 v1, 0x83

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

    if-lt v4, v5, :cond_1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1, v3, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :cond_1
    return-void
.end method

.method private L0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->o:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$i;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$i;

    invoke-direct {v0, p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$i;-><init>(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->o:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$i;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private M0(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/miui/appmanager/AppManageUtils;->C0(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private N0(Landroid/content/Context;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->r:I

    const/16 v3, 0x2728

    invoke-static {p1, v0, v1, v2, v3}, Lcom/miui/appmanager/AppManageUtils;->E0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method static synthetic c0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->E0()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->D0()V

    return-void
.end method

.method static synthetic e0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->t:J

    return-wide v0
.end method

.method static synthetic f0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->t:J

    return-wide p1
.end method

.method private finish()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method static synthetic g0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->v:J

    return-wide v0
.end method

.method static synthetic h0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->v:J

    return-wide p1
.end method

.method static synthetic i0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->s:J

    return-wide v0
.end method

.method static synthetic j0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->s:J

    return-wide p1
.end method

.method static synthetic k0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->m:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->F0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic m0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->b:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->c:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->d:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->e:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->f:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic s0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->r:I

    return p0
.end method

.method static synthetic t0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->G0()V

    return-void
.end method

.method static synthetic u0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->u:J

    return-wide v0
.end method

.method static synthetic v0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;J)J
    .locals 0

    iput-wide p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->u:J

    return-wide p1
.end method

.method static synthetic w0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;J)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->u:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->u:J

    return-wide v0
.end method

.method static synthetic x0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->w:Z

    return p0
.end method

.method static synthetic y0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method static synthetic z0(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->N0(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public I0(Lq0/c;Ljava/lang/Void;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public J0(Landroid/view/MenuItem;)V
    .locals 10

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->u:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    iget-boolean v7, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->w:Z

    if-eqz v7, :cond_2

    iget-wide v8, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->v:J

    cmp-long p1, v8, v5

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->B:Landroid/content/DialogInterface$OnClickListener;

    move-wide v5, v8

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/miui/appmanager/AppManageUtils;->B0(Landroid/content/Context;Ljava/lang/String;JJZLandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    iget-boolean p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->w:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->N0(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->z:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, v0, p1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->M0(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_4
    iget-wide v2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->v:J

    cmp-long p1, v2, v5

    if-lez p1, :cond_5

    const/4 p1, 0x3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->y:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, v1, p1, v0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->M0(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public K0(Landroid/view/Menu;)V
    .locals 9

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->f:Landroid/view/MenuItem;

    iget-wide v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->s:J

    iget-wide v3, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->u:J

    iget-wide v5, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->v:J

    iget-boolean v7, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->w:Z

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/miui/appmanager/AppManageUtils;->H0(Landroid/view/MenuItem;JJJZLjava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->p:Ljava/lang/String;

    iget v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->r:I

    invoke-static {p1, v0, v1}, Lcom/miui/appmanager/AppManageUtils;->f(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->f:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->I0(Lq0/c;Ljava/lang/Void;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lx4/f1;->P(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/miui/appmanager/AMAppStorageDetailsActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const v1, 0x7f1201b7

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x2728

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->G0()V

    :cond_0
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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$a;

    invoke-direct {p1, p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$a;-><init>(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V

    iput-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->D:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$a;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object p2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g:Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_2

    const p2, 0x7f1201d4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1, v0, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->f:Landroid/view/MenuItem;

    invoke-static {}, Lx4/t;->h()I

    move-result p1

    const/16 p2, 0x8

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->f:Landroid/view/MenuItem;

    const p2, 0x7f0802fc

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    const/4 p2, 0x7

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->f:Landroid/view/MenuItem;

    const p2, 0x7f0802f6

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->f:Landroid/view/MenuItem;

    const p2, 0x7f0802f7

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->f:Landroid/view/MenuItem;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->k:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->p:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/miui/appmanager/AppManageUtils;->d(Landroid/content/pm/ApplicationInfo;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->w:Z

    :cond_2
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    const p2, 0x7f150015

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    new-instance p2, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;

    invoke-direct {p2, p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;-><init>(Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;)V

    iput-object p2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->m:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "package_name"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->p:Ljava/lang/String;

    const-string v0, "uid"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->q:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    iput p2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->r:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->h:Landroid/content/pm/PackageManager;

    :try_start_0
    const-string p2, "android.os.ServiceManager"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v0, "getService"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "package"

    aput-object v5, v3, v4

    invoke-static {p2, v0, v2, v3}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    const-string v0, "android.content.pm.IPackageManager$Stub"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "asInterface"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v4

    invoke-static {v0, v2, v3, v1}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->l:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->h:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->p:Ljava/lang/String;

    iget v2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->r:I

    invoke-static {p2, v0, v1, v4, v2}, Lcom/miui/appmanager/AppManageUtils;->s(Ljava/lang/Object;Landroid/content/pm/PackageManager;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g:Landroid/content/pm/ApplicationInfo;

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->finish()V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->H0(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->m:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->m:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->m:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$g;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->n:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->D:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lq0/c;->b()Z

    :cond_1
    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->o:Lcom/miui/appmanager/fragment/AMStorageDetailsFragment$i;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->x:Z

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->x:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->l:Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->h:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->p:Ljava/lang/String;

    iget v4, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->r:I

    invoke-static {v1, v2, v3, v0, v4}, Lcom/miui/appmanager/AppManageUtils;->s(Ljava/lang/Object;Landroid/content/pm/PackageManager;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->g:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->finish()V

    :cond_0
    iput-boolean v0, p0, Lcom/miui/appmanager/fragment/AMStorageDetailsFragment;->x:Z

    :cond_1
    return-void
.end method
