.class public Lcom/miui/optimizecenter/storage/fragment/PriorityStorageFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# instance fields
.field private a:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private a0()V
    .locals 9

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.PRIORITY_STORAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/fragment/PriorityStorageFragment;->a:Landroid/content/pm/PackageManager;

    const/16 v2, 0x280

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v3, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v6, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/miui/optimizecenter/storage/fragment/PriorityStorageFragment;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v6, 0x7f030051

    invoke-virtual {v3, v6}, Landroidx/preference/ListPreference;->r(I)V

    const v6, 0x7f030052

    invoke-virtual {v3, v6}, Landroidx/preference/ListPreference;->u(I)V

    :try_start_0
    iget-object v6, p0, Lcom/miui/optimizecenter/storage/fragment/PriorityStorageFragment;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2

    if-nez v4, :cond_1

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v8, "miui.intent.extra.SET_PRIORITY_DEFAULT"

    invoke-virtual {v4, v8}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v7

    :goto_2
    invoke-virtual {v3, v4}, Landroidx/preference/ListPreference;->x(I)V

    invoke-virtual {v3}, Landroidx/preference/ListPreference;->l()[Ljava/lang/CharSequence;

    move-result-object v8

    aget-object v4, v8, v4

    invoke-virtual {v3, v4}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v6}, Landroidx/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v3, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v4, 0x7f121419

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v5, v8, v6

    invoke-virtual {p0, v4, v8}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/DialogPreference;->j(Ljava/lang/CharSequence;)V

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_4

    const-string v4, "miui.intent.extra.PRIORITY_STORAGE_KILL_APP"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    move v6, v7

    :cond_3
    move v7, v6

    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v4, "extra_kill_app"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/fragment/PriorityStorageFragment;->a:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const p1, 0x7f15005d

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/fragment/PriorityStorageFragment;->a0()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    check-cast p1, Landroidx/preference/ListPreference;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_kill_app"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lcom/miui/optimizecenter/storage/fragment/PriorityStorageFragment;->a:Landroid/content/pm/PackageManager;

    xor-int/2addr v3, v1

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    invoke-virtual {p1}, Landroidx/preference/ListPreference;->l()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
