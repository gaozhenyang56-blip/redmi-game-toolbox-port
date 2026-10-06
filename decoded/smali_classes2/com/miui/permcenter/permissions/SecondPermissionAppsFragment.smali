.class public Lcom/miui/permcenter/permissions/SecondPermissionAppsFragment;
.super Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;
.source "SourceFile"


# instance fields
.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/permission/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 11

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    iget v1, p0, Lcom/miui/permcenter/permissions/SecondPermissionAppsFragment;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const v1, 0x7f120028

    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/permcenter/compact/MIUIXCompact;->setTitle(Lmiuix/preference/PreferenceFragment;Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    const v1, 0x7f120483

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    const v1, 0x7f12154f

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    if-ne v1, v4, :cond_4

    const v1, 0x7f12000f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/permcenter/compact/MIUIXCompact;->setTitle(Lmiuix/preference/PreferenceFragment;Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/miui/permcenter/permissions/PermTipsPreference;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/f;->b()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/miui/permcenter/permissions/PermTipsPreference;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e0461

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setLayoutResource(I)V

    sget-object v4, Lcc/i;->a:Ljava/util/Map;

    iget v5, p0, Lcom/miui/permcenter/permissions/SecondPermissionAppsFragment;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcc/i;->a:Ljava/util/Map;

    iget v5, p0, Lcom/miui/permcenter/permissions/SecondPermissionAppsFragment;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    const-string v4, "file_page_content_management"

    invoke-static {v4}, Lcom/miui/analytics/AnalyticsUtil;->trackEvent(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/miui/permcenter/permissions/SecondPermissionAppsFragment;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/miui/permcenter/permissions/SecondPermissionAppsFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/permission/PermissionInfo;

    new-instance v5, Lcom/miui/permcenter/permissions/ValuePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/miui/permcenter/permissions/ValuePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v3}, Lcom/miui/permcenter/permissions/ValuePreference;->e(Z)V

    invoke-virtual {v4}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/miui/permission/PermissionInfo;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/miui/permission/PermissionInfo;->getAppCount()I

    move-result v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100059

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/permcenter/permissions/PermissionsEditorBaseFragment;->e0(Landroidx/preference/PreferenceScreen;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f15005a

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/SecondPermissionAppsFragment;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/permission/PermissionInfo;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/permission/PermissionManager;->getInstance(Landroid/content/Context;)Lcom/miui/permission/PermissionManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/miui/permission/PermissionManager;->getPermissionForId(J)Lcom/miui/permission/PermissionInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/permission/PermissionInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/permission/PermissionInfo;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/permission/PermissionInfo;->setDesc(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/miui/permission/PermissionInfo;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/f;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/miui/permission/PermissionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/miui/permission/PermissionInfo;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "extra_group_type"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/permcenter/permissions/SecondPermissionAppsFragment;->d:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "extra_permission_list"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/permissions/SecondPermissionAppsFragment;->c:Ljava/util/ArrayList;

    iget p2, p0, Lcom/miui/permcenter/permissions/SecondPermissionAppsFragment;->d:I

    if-eq p2, v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    invoke-direct {p0}, Lcom/miui/permcenter/permissions/SecondPermissionAppsFragment;->initView()V

    return-void
.end method
