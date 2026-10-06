.class public Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;
.implements Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;
.implements Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;
.implements Landroidx/preference/Preference$d;
.implements Landroidx/preference/Preference$c;


# static fields
.field private static final ACTION_FLAG_NORMAL_EXTRA_TRAFFIC:I = 0x1

.field private static final ACTION_FLAG_NORMAL_HALF_YEAR_TRAFFIC:I = 0x2

.field private static final ACTION_FLAG_NORMAL_LEISURE_TRAFFIC:I = 0x0

.field private static final CATEGORY_HALF_YEAR_PACKAGE:Ljava/lang/String; = "category_half_year_package"

.field private static final CATEGORY_KEY_LEISURE_TRAFFIC:Ljava/lang/String; = "category_key_leisure_traffic"

.field private static final FLAG_END_TIME:I = 0x2

.field private static final FLAG_START_TIME:I = 0x1

.field private static final OVER_LEISURE_TRAFFIC_LIMIT:I = 0x4

.field private static final PREF_DATA_USAGE_IGNORE_SETTINGS:Ljava/lang/String; = "pref_data_usage_ignore_settings"

.field private static final PREF_KEY_END_TIME:Ljava/lang/String; = "pref_key_end_time"

.field private static final PREF_KEY_EXTRA_TRAFFIC:Ljava/lang/String; = "pref_key_extra_traffic"

.field private static final PREF_KEY_HALF_YEAR_START:Ljava/lang/String; = "pref_key_half_year_start"

.field private static final PREF_KEY_HALF_YEAR_TRAFFIC:Ljava/lang/String; = "pref_key_half_year_traffic"

.field private static final PREF_KEY_HALF_YEAR_TRAFFIC_SETTING_SWITCH:Ljava/lang/String; = "pref_key_half_year_traffic_setting_switch"

.field private static final PREF_KEY_LEISURE_TRAFFIC:Ljava/lang/String; = "pref_key_leisure_traffic"

.field private static final PREF_KEY_LEISURE_TRAFFIC_SETTING_SWITCH:Ljava/lang/String; = "pref_key_leisure_traffic_setting_switch"

.field private static final PREF_KEY_START_TIME:Ljava/lang/String; = "pref_key_start_time"

.field private static final PREF_LEISURE_TRAFFIC_LIMIT:Ljava/lang/String; = "pref_leisure_traffic_limit"

.field private static final PREF_LEISURE_TRAFFIC_LIMIT_OLD:Ljava/lang/String; = "pref_leisure_traffic_limit_old"

.field private static final TITLE_FILED:I = 0x7f1213c9


# instance fields
.field private mChanged:Z

.field private mDataUsageIgnorePreference:Lmiuix/preference/TextPreference;

.field private mDatePickerDialog:Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;

.field private mDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mEndHour:I

.field private mEndMinute:I

.field private mEndTimePreference:Lmiuix/preference/TextPreference;

.field private mExtraPackagePreference:Lmiuix/preference/TextPreference;

.field private mHalfYearCategory:Landroidx/preference/PreferenceCategory;

.field private mHalfYearTrafficPreference:Landroidx/preference/CheckBoxPreference;

.field private mHalfYearTrafficStart:Lmiuix/preference/TextPreference;

.field private mHalfYearTrafficValue:Lmiuix/preference/TextPreference;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mLeisureSettingCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

.field private mLeisureTrafficLimit:Lmiuix/preference/DropDownPreference;

.field private mLeisureTrafficLimitOld:Lmiuix/preference/TextPreference;

.field private mLeisureTrafficPreference:Lmiuix/preference/TextPreference;

.field private mOverLeisureLimitSelected:I

.field private mOverLimitOperatorType:[Ljava/lang/String;

.field private mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mStartHour:I

.field private mStartMinute:I

.field private mStartTimePreference:Lmiuix/preference/TextPreference;

.field private mTimePickerDialog:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLeisureLimitSelected:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->onSelectLeisureTrafficLimit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->initData()V

    return-void
.end method

.method private activateComponent(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartTimePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndTimePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiuix/preference/DropDownPreference;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimitOld:Lmiuix/preference/TextPreference;

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private initAppTrafficIgnoreCount()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getIgnoreAppCount(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100141

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDataUsageIgnorePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private initData()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageOn()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureSettingCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->activateComponent(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficPreference:Lmiuix/preference/TextPreference;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v0, v1, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageFromTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DateUtil;->getHourInMilliTime(J)I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartHour:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DateUtil;->getMinuteInMilliTime(J)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartMinute:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartTimePreference:Lmiuix/preference/TextPreference;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartHour:I

    invoke-static {v2, v0}, Lcom/miui/networkassistant/utils/DateUtil;->getFormatTime(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageOverLimitWarning()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLeisureLimitSelected:I

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimitOld:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageToTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DateUtil;->getHourInMilliTime(J)I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndHour:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DateUtil;->getMinuteInMilliTime(J)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndMinute:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndTimePreference:Lmiuix/preference/TextPreference;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndHour:I

    invoke-static {v2, v0}, Lcom/miui/networkassistant/utils/DateUtil;->getFormatTime(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->initExtraPackage()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->initHalfYearPackage()V

    return-void
.end method

.method private initExtraPackage()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverlayPackageTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/DateUtil;->isCurrentCycleMonth(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageOverlayPackage()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mExtraPackagePreference:Lmiuix/preference/TextPreference;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v0, v1, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private initHalfYearPackage()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isHalfYearPackageEnable()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getHalfYearPackageValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiuix/preference/TextPreference;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v0, v1, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getHalfYearPackageBeginTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiuix/preference/TextPreference;

    invoke-static {v0, v1, v4}, Lcom/miui/networkassistant/utils/DateUtil;->formatDataTime(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private onSelectLeisureTrafficLimit(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLeisureLimitSelected:I

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimitOld:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleLeisureDataUsageOverLimitWarning(Z)Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mChanged:Z

    return-void
.end method

.method private setChanged()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mChanged:Z

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->isAttatched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    :cond_0
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

    const v0, 0x7f150065

    return v0
.end method

.method protected initPreferenceView()V
    .locals 4

    const-string v0, "category_key_leisure_traffic"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    new-instance v1, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    invoke-direct {v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const-string v1, "pref_key_leisure_traffic_setting_switch"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureSettingCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v1, "pref_key_leisure_traffic"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v1, "pref_key_start_time"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartTimePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v1, "pref_key_end_time"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndTimePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v1, "pref_key_extra_traffic"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mExtraPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v1, "pref_data_usage_ignore_settings"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDataUsageIgnorePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v1, "pref_key_half_year_traffic_setting_switch"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v1, "pref_key_half_year_traffic"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v1, "pref_key_half_year_start"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v1, "pref_leisure_traffic_limit"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/DropDownPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiuix/preference/DropDownPreference;

    const-string v1, "pref_leisure_traffic_limit_old"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimitOld:Lmiuix/preference/TextPreference;

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :goto_0
    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimitOld:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiuix/preference/DropDownPreference;

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "category_half_year_package"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0, p0}, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TimePickerDialog$TimePickerDialogListener;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTimePickerDialog:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;

    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDateChanged(III)V
    .locals 1

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2, p3}, Lcom/miui/networkassistant/utils/DateUtil;->getSomedayTimeMillis(III)J

    move-result-wide p1

    iget-object p3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setHalfYearPackageBeginTime(J)Z

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiuix/preference/TextPreference;

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/miui/networkassistant/utils/DateUtil;->formatDataTime(JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mChanged:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateTrafficStatusMonitor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEffective()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v2, v1, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->toggleDataUsageAutoCorrection(ZI)V

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isCorrectionEffective()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v1, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureSettingCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->activateComponent(Z)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleLeisureDataUsageOn(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficPreference:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setHalfYearPackageEnable(Z)Z

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimit:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->onSelectLeisureTrafficLimit(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficPreference:Lmiuix/preference/TextPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f12090e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v4, 0x7f12090c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartTimePreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v0, 0x7f1212fa

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTimePickerDialog:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;

    invoke-virtual {v0, p1, v2}, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->buildTimePickerdialog(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTimePickerDialog:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartHour:I

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartMinute:I

    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->setTimePicker(II)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndTimePreference:Lmiuix/preference/TextPreference;

    const/4 v3, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v0, 0x7f1212f9

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTimePickerDialog:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;

    invoke-virtual {v0, p1, v3}, Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;->buildTimePickerdialog(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mTimePickerDialog:Lcom/miui/networkassistant/ui/dialog/TimePickerDialog;

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndHour:I

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndMinute:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mExtraPackagePreference:Lmiuix/preference/TextPreference;

    const v4, 0x7f1211e7

    const v5, 0x7f120c62

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDataUsageIgnorePreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficStart:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_6

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0, p0}, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/DatePickerDialog$DatePickerDialogListener;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDatePickerDialog:Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->buildDatePickerDialog(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mDatePickerDialog:Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {v0, v1, v3, p1}, Lcom/miui/networkassistant/ui/dialog/DatePickerDialog;->setData(III)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficLimitOld:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v0, 0x7f1213cf

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mOverLeisureLimitSelected:I

    const/4 v4, 0x4

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    :cond_7
    :goto_2
    return v2
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->initAppTrafficIgnoreCount()V

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f1213c9

    return v0
.end method

.method public onTimeUpdated(III)V
    .locals 1

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndHour:I

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndMinute:I

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndTimePreference:Lmiuix/preference/TextPreference;

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/DateUtil;->getFormatTime(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndHour:I

    iget p3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mEndMinute:I

    invoke-static {p2, p3}, Lcom/miui/networkassistant/utils/DateUtil;->getMillisUsingHM(II)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageToTime(J)Z

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartHour:I

    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartMinute:I

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartTimePreference:Lmiuix/preference/TextPreference;

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/DateUtil;->getFormatTime(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartHour:I

    iget p3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mStartMinute:I

    invoke-static {p2, p3}, Lcom/miui/networkassistant/utils/DateUtil;->getMillisUsingHM(II)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageFromTime(J)Z

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->setChanged()V

    return-void
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$2;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method public onTrafficUpdated(JI)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p3, :cond_3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p3, p3, v1

    invoke-virtual {p3, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setHalfYearPackageValue(J)Z

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mHalfYearTrafficValue:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->setChanged()V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mExtraPackagePreference:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverlayPackage(J)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverlayPackageTime(J)Z

    :try_start_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {p1, p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateGlobleDataUsage(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_3
    iget-boolean p3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p3, p3, v1

    invoke-virtual {p3, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveLeisureDataUsageTotal(J)Z

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;->mLeisureTrafficPreference:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficCorrectionAutoModify(Z)Z

    goto :goto_0

    :goto_1
    return-void
.end method
