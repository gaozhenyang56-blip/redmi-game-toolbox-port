.class public Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ChooseLockTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockTypeFragment"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Landroid/content/Intent;

.field private e:Lc3/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const-string v0, "pattern"

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->b:Z

    return-void
.end method

.method static synthetic a0(Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->b:Z

    return p1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x6e

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_2

    const/16 p3, 0x6f

    if-eq p1, p3, :cond_0

    goto :goto_1

    :cond_0
    if-ne p2, v2, :cond_1

    iput-boolean v1, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->b:Z

    goto :goto_1

    :cond_1
    iput-boolean v3, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->b:Z

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/miui/applicationlock/SettingLockActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "cancel_back_to_home"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, v3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    if-ne p2, v2, :cond_4

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->a:Ljava/lang/String;

    invoke-static {p1}, La3/a;->o(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p3, :cond_3

    invoke-virtual {p1, v2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->b:Z

    if-nez p3, :cond_5

    return-void

    :cond_5
    const-string p1, "cancel_setting_password"

    invoke-virtual {p3, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v3, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_6
    const-string p1, "home_cancel_current_pwd_page"

    invoke-virtual {p3, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v3, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->b:Z

    :cond_7
    :goto_1
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f150045

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->e:Lc3/d;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_data"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "external_app_name"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "unlock_set_pattern"

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    const-string v7, "unlock_set_pin"

    invoke-virtual {v0, v7}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    const-string v8, "unlock_set_password"

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    new-array v14, v11, [Ljava/lang/Object;

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v11, 0x0

    aput-object v16, v14, v11

    const-string v10, "%d"

    invoke-static {v13, v10, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v11

    const v13, 0x7f100143

    invoke-virtual {v9, v13, v15, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    move-object/from16 v17, v4

    new-array v4, v14, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v4, v15

    invoke-static {v11, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v15

    const v4, 0x7f100144

    const/4 v10, 0x4

    invoke-virtual {v12, v4, v10, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v9}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {v8, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v7, "forgot_password_reset"

    invoke-virtual {v4, v7, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "setting_password_reset"

    invoke-virtual {v7, v8, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v9, v0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->e:Lc3/d;

    invoke-virtual {v9}, Lc3/d;->l()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->b:Z

    :goto_1
    const-string v6, "ModifyPassword"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/miui/applicationlock/ResetChooseAccessControl;

    invoke-direct {v6, v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v6, v0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->d:Landroid/content/Intent;

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-boolean v4, v0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->c:Z

    goto :goto_2

    :cond_3
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/miui/applicationlock/LockChooseAccessControl;

    invoke-direct {v4, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, v0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->d:Landroid/content/Intent;

    :goto_2
    iget-object v1, v0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->d:Landroid/content/Intent;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, v0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->d:Landroid/content/Intent;

    move-object/from16 v2, v17

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "pattern"

    :goto_0
    iput-object p1, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "numeric"

    goto :goto_0

    :cond_1
    const-string v0, "unlock_set_password"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "mixed"

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->d:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->a:Ljava/lang/String;

    const-string v1, "passwordType"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->d:Landroid/content/Intent;

    const/16 v0, 0x6e

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->e:Lc3/d;

    invoke-virtual {v0}, Lc3/d;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_data"

    const-string v2, "HappyCodingMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x6f

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->b:Z

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->b:Z

    const-string v1, "state"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ChooseLockTypeActivity$ChooseLockTypeFragment;->b:Z

    :cond_0
    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onStop()V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f071da6

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lpg/i;->y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071e1d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071e78

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0, p1, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method
