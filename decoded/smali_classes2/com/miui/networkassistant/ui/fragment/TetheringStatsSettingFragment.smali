.class public Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# static fields
.field private static final PREF_KEY_TETHERING_LIMIT_SWITCH:Ljava/lang/String; = "pref_key_tethering_stats_limit_switch"

.field private static final PREF_KEY_TETHERING_LIMIT_VALUE:Ljava/lang/String; = "pref_key_tethering_stats_limit_value"

.field private static final PREF_KEY_TETHERING_OVER_LIMIT_OPT:Ljava/lang/String; = "pref_key_tethering_over_limit_opt"

.field private static final SINGLE_CHOICE_LIMIT_VALUE_FLAG:I = 0x2

.field private static final SINGLE_CHOICE_OVER_LIMIT_FLAG:I = 0x1

.field private static final TITLE_FILED:I = 0x7f1213b9


# instance fields
.field private mChoiceItemsDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mDataChanged:Z

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mLimitValueArray:[Ljava/lang/String;

.field private mLimitValueType:I

.field private mOverLimitOptType:I

.field private mSingleChoiceItemsArray:[Ljava/lang/String;

.field private mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mTetheringLimitCheckBox:Landroidx/preference/CheckBoxPreference;

.field private mTetheringLimitTextPreference:Lmiuix/preference/TextPreference;

.field private mTetheringOverLimitOptType:Lmiuix/preference/TextPreference;

.field private mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mChoiceItemsDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitTextPreference:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->showSetCustomValueDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->initData()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueType:I

    return p1
.end method

.method static synthetic access$402(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$502(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mOverLimitOptType:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;I)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->getLimitValue(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private getLimitSelected(J)I
    .locals 2

    const-wide/32 v0, 0x3200000

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-wide/32 v0, 0x6400000

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-wide/32 v0, 0x9600000

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const-wide/32 v0, 0xc800000

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    const/4 p1, 0x4

    return p1
.end method

.method private getLimitValue(I)J
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-wide/32 v0, 0x3200000

    return-wide v0

    :cond_0
    const-wide/32 v0, 0xc800000

    return-wide v0

    :cond_1
    const-wide/32 v0, 0x9600000

    return-wide v0

    :cond_2
    const-wide/32 v0, 0x6400000

    return-wide v0
.end method

.method private initData()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringLimitEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitCheckBox:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lw2/l;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitTextPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringLimitTraffic()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitTextPreference:Lmiuix/preference/TextPreference;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->getLimitSelected(J)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueType:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getTetheringOverLimitOptType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mOverLimitOptType:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->initTetherLimitArray()V

    :cond_1
    return-void
.end method

.method private initTetherLimitArray()V
    .locals 9

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const-string v7, "%d%s"

    invoke-static {v2, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    aput-object v0, v4, v5

    invoke-static {v2, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    const/16 v8, 0x96

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    aput-object v0, v4, v5

    invoke-static {v2, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v5

    invoke-static {v2, v7, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1219a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-void
.end method

.method private showSetCustomValueDialog()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1219a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v3, 0x7f120c1f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V

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

.method protected getXmlPreference()I
    .locals 1

    const v0, 0x7f15006c

    return v0
.end method

.method protected initPreferenceView()V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mChoiceItemsDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    const-string v0, "pref_key_tethering_stats_limit_switch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitCheckBox:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_key_tethering_stats_limit_value"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitTextPreference:Lmiuix/preference/TextPreference;

    const-string v0, "pref_key_tethering_over_limit_opt"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitCheckBox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitTextPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mDataChanged:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->forceCheckTethingSettingStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitCheckBox:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lw2/l;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-boolean p2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p2, :cond_0

    const p2, 0x7f120370

    goto :goto_0

    :cond_0
    const p2, 0x7f120371

    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitCheckBox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return v0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->setTetheringLimitEnabled(Z)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitTextPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mDataChanged:Z

    :cond_2
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringLimitTextPreference:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1219a7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueArray:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mLimitValueType:I

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mTetheringOverLimitOptType:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1213cf

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;->mOverLimitOptType:I

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return v1
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f1213b9

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$3;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/TetheringStatsSettingFragment;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method protected resetTitle()V
    .locals 0

    return-void
.end method
