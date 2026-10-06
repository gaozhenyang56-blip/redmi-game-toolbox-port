.class public Lcom/miui/permcenter/permissions/PermissionsFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/permissions/PermissionsFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/permcenter/permissions/PermissionsFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a0(Lcom/miui/permcenter/permissions/PermissionsFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/PermissionsFragment;->b0(Ljava/util/ArrayList;)V

    return-void
.end method

.method private b0(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/permcenter/permissions/d;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    new-instance v1, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const-string v2, "ro.radio.noril"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/miui/permcenter/compact/SystemPropertiesCompat;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120c50

    goto :goto_0

    :cond_1
    const v2, 0x7f121388

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permcenter/permissions/d;

    iget-object v2, v1, Lcom/miui/permcenter/permissions/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v2, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iget-object v4, v1, Lcom/miui/permcenter/permissions/d;->a:Lcom/miui/permission/PermissionGroupInfo;

    invoke-static {}, Lhc/a;->b()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/permission/PermissionGroupInfo;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v1, v1, Lcom/miui/permcenter/permissions/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/permission/PermissionInfo;

    invoke-virtual {v4}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v5

    const-wide v7, 0x400000000L

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    invoke-static {}, Lxc/k;->c()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    new-instance v5, Lcom/miui/permcenter/permissions/ValuePreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/miui/permcenter/permissions/ValuePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v6

    const-wide/16 v8, 0x40

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    invoke-static {}, Lx4/t;->E()Z

    move-result v6

    if-eqz v6, :cond_5

    const v6, 0x7f12137e

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {v4}, Lcom/miui/permission/PermissionInfo;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/miui/permcenter/permissions/ValuePreference;->e(Z)V

    invoke-virtual {v4}, Lcom/miui/permission/PermissionInfo;->getAppCount()I

    move-result v7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f100059

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v3

    invoke-virtual {v8, v9, v7, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/miui/permcenter/permissions/ValuePreference;->f(Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const-class v8, Lcom/miui/permcenter/permissions/PermissionAppsEditorActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ":miui:starting_window_label"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v7

    const-string v9, "extra_permission_id"

    invoke-virtual {v6, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v4}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "extra_permission_name"

    invoke-virtual {v6, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_2

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f15005a

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsFragment;->a:Lcom/miui/permcenter/permissions/PermissionsFragment$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/PermissionsFragment;->a:Lcom/miui/permcenter/permissions/PermissionsFragment$a;

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const-string v0, "1127.21.11.1.28293"

    invoke-static {v0}, Lmb/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lcom/miui/permcenter/permissions/PermissionsFragment$a;

    invoke-direct {p1, p0}, Lcom/miui/permcenter/permissions/PermissionsFragment$a;-><init>(Lcom/miui/permcenter/permissions/PermissionsFragment;)V

    iput-object p1, p0, Lcom/miui/permcenter/permissions/PermissionsFragment;->a:Lcom/miui/permcenter/permissions/PermissionsFragment$a;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
