.class public Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment$LevelDialogListener;
    }
.end annotation


# instance fields
.field private mChooseLevelDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mSelectLevelOld:Lmiuix/preference/TextPreference;

.field private mSlidePush:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method public static synthetic a0([Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->lambda$onCreatePreferences$1([Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->mSelectLevelOld:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method public static synthetic b0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->lambda$onCreatePreferences$2(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreatePreferences$0(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->showChoicesDialog()V

    const/4 p1, 0x0

    return p1
.end method

.method private static synthetic lambda$onCreatePreferences$1([Ljava/lang/CharSequence;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p1, p0, p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, p0, v0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 v1, 0x40200000    # 2.5f

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    aget-object p1, p0, p1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 v1, 0x40400000    # 3.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    aget-object p0, p0, p1

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 v1, 0x40800000    # 4.0f

    :cond_3
    :goto_0
    invoke-static {v1}, Lcom/miui/earthquakewarning/utils/Utils;->setSelectIntensity(F)V

    return v0
.end method

.method private synthetic lambda$onCreatePreferences$2(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/earthquakewarning/utils/Utils;->setLowEarthquakeWarningOpen(Z)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->mSlidePush:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method private showChoicesDialog()V
    .locals 11

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const v4, 0x7f1207dc

    invoke-virtual {p0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    new-array v2, v1, [Ljava/lang/Object;

    const/high16 v6, 0x40200000    # 2.5f

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-virtual {p0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-array v2, v1, [Ljava/lang/Object;

    const/high16 v7, 0x40400000    # 3.0f

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    invoke-virtual {p0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x2

    aput-object v2, v0, v8

    new-array v2, v1, [Ljava/lang/Object;

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v5

    invoke-virtual {p0, v4, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v0, v4

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getSelectIntensity()F

    move-result v2

    cmpl-float v3, v2, v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    cmpl-float v3, v2, v6

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    cmpl-float v1, v2, v7

    if-nez v1, :cond_3

    move v1, v8

    goto :goto_0

    :cond_3
    cmpl-float v1, v2, v9

    if-nez v1, :cond_0

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->mChooseLevelDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->mChooseLevelDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_4
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f1207db

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment$LevelDialogListener;

    invoke-direct {v4, p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment$LevelDialogListener;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;[Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0, v1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120499

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->mChooseLevelDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 12

    const p1, 0x7f15002c

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "slide_normal"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    const-string p2, "slide_push"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/CheckBoxPreference;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->mSlidePush:Landroidx/preference/CheckBoxPreference;

    const-string p2, "select_level"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Lmiuix/preference/DropDownPreference;

    const-string v0, "select_level_old"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->mSelectLevelOld:Lmiuix/preference/TextPreference;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const v5, 0x7f1207dc

    invoke-virtual {p0, v5, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    new-array v3, v2, [Ljava/lang/Object;

    const/high16 v7, 0x40200000    # 2.5f

    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-virtual {p0, v5, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-array v3, v2, [Ljava/lang/Object;

    const/high16 v8, 0x40400000    # 3.0f

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v6

    invoke-virtual {p0, v5, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x2

    aput-object v3, v1, v9

    new-array v3, v2, [Ljava/lang/Object;

    const/high16 v10, 0x40800000    # 4.0f

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v6

    invoke-virtual {p0, v5, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v3, 0x7f1207dd

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v6

    const v3, 0x7f1207de

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v3, 0x7f1207df

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    const v3, 0x7f1207e0

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getSelectIntensity()F

    move-result v3

    cmpl-float v4, v3, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float v4, v3, v7

    if-nez v4, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    cmpl-float v4, v3, v8

    if-nez v4, :cond_2

    move v6, v9

    goto :goto_0

    :cond_2
    cmpl-float v3, v3, v10

    if-nez v3, :cond_3

    move v6, v5

    :cond_3
    :goto_0
    invoke-static {}, Lpg/i;->k()I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_4

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->mSelectLevelOld:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->mSelectLevelOld:Lmiuix/preference/TextPreference;

    aget-object v0, v1, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->mSelectLevelOld:Lmiuix/preference/TextPreference;

    new-instance v0, Lcom/miui/earthquakewarning/ui/v0;

    invoke-direct {v0, p0}, Lcom/miui/earthquakewarning/ui/v0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;)V

    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p2, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-virtual {p2, v1}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Lmiuix/preference/DropDownPreference;->C([Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/miui/earthquakewarning/ui/w0;

    invoke-direct {v1, v0}, Lcom/miui/earthquakewarning/ui/w0;-><init>([Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-virtual {p2, v6}, Lmiuix/preference/DropDownPreference;->E(I)V

    :goto_1
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isLowEarthquakeWarningOpen()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->mSlidePush:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_5
    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->mSlidePush:Landroidx/preference/CheckBoxPreference;

    new-instance p2, Lcom/miui/earthquakewarning/ui/x0;

    invoke-direct {p2, p0}, Lcom/miui/earthquakewarning/ui/x0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningSettingFragment;->mChooseLevelDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
