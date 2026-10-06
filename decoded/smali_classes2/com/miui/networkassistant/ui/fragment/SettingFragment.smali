.class public Lcom/miui/networkassistant/ui/fragment/SettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;
.implements Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$PhoneNumInputDialogListener;
.implements Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/fragment/SettingFragment$UiHandler;,
        Lcom/miui/networkassistant/ui/fragment/SettingFragment$MyTrafficInputDialogListener;,
        Lcom/miui/networkassistant/ui/fragment/SettingFragment$GetPhoneNumListener;
    }
.end annotation


# static fields
.field private static final ACTION_FLAG_INPUT_PHONE_NUM:I = 0x1

.field private static final MSG_TRAFFIC_MANAGE_SERVICE_CONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NASettingFragment"

.field private static final TITLE_FILED:I = 0x7f121628


# instance fields
.field private final PREF_BILL_REMINDER_SWITCH1:Ljava/lang/String;

.field private final PREF_BILL_REMINDER_SWITCH2:Ljava/lang/String;

.field private final PREF_CATEGORY_KEY_OTHER:Ljava/lang/String;

.field private final PREF_KEY_CATEGORY_KEY_TRAFFIC_SETTINGS1:Ljava/lang/String;

.field private final PREF_KEY_CATEGORY_KEY_TRAFFIC_SETTINGS2:Ljava/lang/String;

.field private final PREF_KEY_CATEGORY_REMINDER_SIM1:Ljava/lang/String;

.field private final PREF_KEY_CATEGORY_REMINDER_SIM2:Ljava/lang/String;

.field private final PREF_KEY_DECLARATION:Ljava/lang/String;

.field private final PREF_KEY_LIMITED_TRAFFIC_PER_DAY1:Ljava/lang/String;

.field private final PREF_KEY_LIMITED_TRAFFIC_PER_DAY2:Ljava/lang/String;

.field private final PREF_KEY_OPERATOR_SETTINGS1:Ljava/lang/String;

.field private final PREF_KEY_OPERATOR_SETTINGS2:Ljava/lang/String;

.field private final PREF_KEY_TRAFFIC_ADVANCED_SETTINGS1:Ljava/lang/String;

.field private final PREF_KEY_TRAFFIC_ADVANCED_SETTINGS2:Ljava/lang/String;

.field private final PREF_SHOW_NETWORK_SPEED:Ljava/lang/String;

.field private final PREF_SHOW_TRAFFIC_NOTIFICATION:Ljava/lang/String;

.field private final PREF_TRAFFIC_REMINDER_SWITCH1:Ljava/lang/String;

.field private final PREF_TRAFFIC_REMINDER_SWITCH2:Ljava/lang/String;

.field private hasAutoCorrection:Z

.field private hasOperator:Z

.field private inputDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

.field private isSetPhone:Z

.field private mBillReminder:[Landroidx/preference/CheckBoxPreference;

.field private mCurrentSlotNum:I

.field private mDeclarationPreference:Landroidx/preference/Preference;

.field private mDisplayTrafficInBar:I

.field private mHandler:Lcom/miui/networkassistant/ui/fragment/SettingFragment$UiHandler;

.field private final mNetworkSpeedObserver:Landroid/database/ContentObserver;

.field private mOperatorSettings:[Lmiuix/preference/TextPreference;

.field private mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

.field private final mPermanentNotificationEnableObserver:Landroid/database/ContentObserver;

.field private mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

.field private mReminderType:[Ljava/lang/String;

.field private mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

.field private mShowNetworkSpeedBar:I

.field private mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

.field private mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

.field private mTrafficAdvanced:[Lmiuix/preference/TextPreference;

.field private mTrafficLimitedSettings:[Landroidx/preference/Preference;

.field private mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

.field private mType:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    const-string v0, "category_key_other"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_CATEGORY_KEY_OTHER:Ljava/lang/String;

    const-string v0, "pref_show_traffic_notification"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_SHOW_TRAFFIC_NOTIFICATION:Ljava/lang/String;

    const-string v0, "pref_show_traffic_speed_state"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_SHOW_NETWORK_SPEED:Ljava/lang/String;

    const-string v0, "pref_key_declaration"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_DECLARATION:Ljava/lang/String;

    const-string v0, "pref_key_category_reminder_sim1"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_CATEGORY_REMINDER_SIM1:Ljava/lang/String;

    const-string v0, "pref_key_category_reminder_sim2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_CATEGORY_REMINDER_SIM2:Ljava/lang/String;

    const-string v0, "pref_key_category_key_traffic_settings1"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_CATEGORY_KEY_TRAFFIC_SETTINGS1:Ljava/lang/String;

    const-string v0, "pref_key_category_key_traffic_settings2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_CATEGORY_KEY_TRAFFIC_SETTINGS2:Ljava/lang/String;

    const-string v0, "pref_bill_reminder_switch1"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_BILL_REMINDER_SWITCH1:Ljava/lang/String;

    const-string v0, "pref_traffic_reminder_switch1"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_TRAFFIC_REMINDER_SWITCH1:Ljava/lang/String;

    const-string v0, "pref_bill_reminder_switch2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_BILL_REMINDER_SWITCH2:Ljava/lang/String;

    const-string v0, "pref_traffic_reminder_switch2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_TRAFFIC_REMINDER_SWITCH2:Ljava/lang/String;

    const-string v0, "pref_key_operator_settings1"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_OPERATOR_SETTINGS1:Ljava/lang/String;

    const-string v0, "pref_key_traffic_advanced_settings1"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_TRAFFIC_ADVANCED_SETTINGS1:Ljava/lang/String;

    const-string v0, "pref_key_limited_traffic_per_day1"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_LIMITED_TRAFFIC_PER_DAY1:Ljava/lang/String;

    const-string v0, "pref_key_operator_settings2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_OPERATOR_SETTINGS2:Ljava/lang/String;

    const-string v0, "pref_key_traffic_advanced_settings2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_TRAFFIC_ADVANCED_SETTINGS2:Ljava/lang/String;

    const-string v0, "pref_key_limited_traffic_per_day2"

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->PREF_KEY_LIMITED_TRAFFIC_PER_DAY2:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    new-array v1, v0, [Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    new-array v1, v0, [Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    new-array v1, v0, [Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    new-array v1, v0, [Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mOperatorSettings:[Lmiuix/preference/TextPreference;

    new-array v1, v0, [Lmiuix/preference/TextPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficAdvanced:[Lmiuix/preference/TextPreference;

    new-array v0, v0, [Landroidx/preference/Preference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->isSetPhone:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->hasOperator:Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->hasAutoCorrection:Z

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$4;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/SettingFragment$UiHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPermanentNotificationEnableObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$5;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/SettingFragment$UiHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initSimLocation(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->initCardStuff()V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/ui/fragment/SettingFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getProvinceMap(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/networkassistant/ui/fragment/SettingFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getOperatorMap(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initTrafficNotificationCheckboxPref()V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initNetworkSpeedCheckboxPref()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$2100(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initData()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->hasOperator:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$902(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->hasAutoCorrection:Z

    return p1
.end method

.method public static synthetic b0(Lcom/miui/networkassistant/ui/fragment/SettingFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->lambda$onPreferenceChange$0(IZ)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->lambda$onPreferenceChange$2(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private checkOperator(IIZ)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    if-nez p2, :cond_3

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperator(I)I

    move-result v2

    if-eq v2, v1, :cond_1

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I

    if-le v2, v1, :cond_1

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    if-gt v2, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-virtual {p0, p2, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->showSetOperatorTips(II)V

    iput-boolean p3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->hasOperator:Z

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object p2, p2, p1

    invoke-virtual {p2, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object p2, p2, p1

    invoke-virtual {p2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object p2, p2, p1

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p2, p1

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBillReminderSwitch(Z)V

    goto :goto_0

    :cond_3
    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->hasOperatorAndCity()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperator(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I

    if-le v2, v1, :cond_4

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    if-gt v2, v1, :cond_5

    :cond_4
    iput-boolean p3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->hasOperator:Z

    invoke-virtual {p0, p2, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->showSetOperatorTips(II)V

    goto :goto_1

    :cond_5
    :goto_0
    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->hasOperator:Z

    :goto_1
    return-void
.end method

.method public static synthetic d0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->lambda$onPreferenceChange$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/networkassistant/ui/fragment/SettingFragment;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->lambda$onPreferenceChange$1(IZZ)V

    return-void
.end method

.method private initData()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->isAttatched()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentOptSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getProvinceMap()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getOperatorMap()V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updatePackagePreferenceBySlot(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateEnabled(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateReminderPreferenceBySlot(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateTrafficReminderBySlot(I)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->isTotalDataUsageSetted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/miui/networkassistant/ui/fragment/SettingFragment$GetPhoneNumListener;

    invoke-direct {v3, p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment$GetPhoneNumListener;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;ILandroid/os/Handler;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/miui/networkassistant/ui/fragment/SettingFragment$GetPhoneNumListener;

    invoke-direct {v3, p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment$GetPhoneNumListener;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;ILandroid/os/Handler;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedBySlotListener;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private initLocation(I)V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;

    invoke-direct {v0, p0, p0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Landroidx/fragment/app/Fragment;I)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method private initNetworkSpeedCheckboxPref()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_network_speed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeedBar:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private initSimLocation(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "NASettingFragment"

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lbh/c;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    aget-object v3, v3, p2

    invoke-interface {v3, v1}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getProvinceCodeByCityCode(I)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "get area location failed"

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "parse city code exception"

    :goto_0
    invoke-static {v0, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I

    if-lez v0, :cond_3

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    :cond_3
    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    if-gez v0, :cond_4

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    if-lez v0, :cond_4

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    :cond_4
    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getCityMapByProvinceId(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p2, v0, p2

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperatorStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->initOperator(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_2
    iput v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    iput v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I

    return-void
.end method

.method private initTrafficNotificationCheckboxPref()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_network_assistant"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDisplayTrafficInBar:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private isTotalDataUsageSetted(I)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$onPreferenceChange$0(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->checkOperator(IIZ)V

    invoke-virtual {p0, p2, v0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->checkAutoCorrectionSwitch(ZII)V

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$1(IZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->checkOperator(IIZ)V

    invoke-virtual {p0, p3, v0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->checkAutoCorrectionSwitch(ZII)V

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$2(Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p4}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickGrantSendSms(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Lcom/miui/networkassistant/config/CommonConfig;->setEnableToSendMsgToCorrect(Z)Z

    instance-of p1, p2, Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    move-object p1, p2

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onPreferenceChange$3(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    const-string p0, "scence_complete_package_setting"

    invoke-static {p0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickCancelSendSms(Ljava/lang/String;)V

    return-void
.end method

.method private registerNetworkSpeedObserver()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_network_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerPermanentNotificationEnableObserver()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_network_assistant"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPermanentNotificationEnableObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private setBrand(ILjava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private unRegisterNetworkSpeedObserver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterPermanentNotificationEnableObserver()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPermanentNotificationEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateEnabled(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->getSimInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121ab9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->getSimInfo(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120ddb

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    aget-object v1, v1, p1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v1, p1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, p1

    if-eqz v0, :cond_2

    const v2, 0x7f080d74

    goto :goto_2

    :cond_2
    const v2, 0x7f080d75

    :goto_2
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setIcon(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object p1, v1, p1

    if-eqz v0, :cond_3

    const v0, 0x7f080d86

    goto :goto_3

    :cond_3
    const v0, 0x7f080d87

    :goto_3
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIcon(I)V

    return-void
.end method

.method private updatePadSimSettings()V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private updateSimSettings()V
    .locals 3

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSimSettings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NASettingFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private updateTrafficReminderBySlot(I)V
    .locals 14

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mType:[Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderType:[Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    const-string v1, "NASettingFragment"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-eq v0, v6, :cond_3

    const-string v0, "%s(%s)"

    iget-object v6, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v6

    const v7, 0x7f121abb

    if-eqz v6, :cond_2

    if-eq v6, v4, :cond_1

    if-eq v6, v5, :cond_0

    const-string v0, "updateTrafficReminderBySlot: "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0

    :cond_0
    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mType:[Ljava/lang/String;

    aget-object v7, v7, v4

    aput-object v7, v6, v4

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mType:[Ljava/lang/String;

    aget-object v7, v7, v5

    aput-object v7, v6, v4

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mType:[Ljava/lang/String;

    aget-object v7, v7, v3

    aput-object v7, v6, v4

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->setBrand(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getReminderCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->getCountByIndex(I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v6, v6, p1

    invoke-virtual {v6, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v6, 0x7f121613

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v6, 0x7f120ed2

    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f120c4e

    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-interface {v10, p1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v10
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v10

    const-string v11, "query data usage "

    invoke-static {v1, v11, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v10, v8

    :goto_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isInfiniteTrafficReminderSwitch()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficReminderSwitch()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyTrafficReminderSwitch()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, p1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficReminderSwitch()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v1

    new-instance v7, Ljava/text/DecimalFormat;

    const-string v12, "#0%"

    invoke-direct {v7, v12}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v12, v1

    invoke-virtual {v7, v12, v13}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    cmp-long v7, v10, v8

    if-gtz v7, :cond_5

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, p1

    :goto_2
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_5
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v10, v11, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthOverReminderType()I

    move-result v2

    aget-object v1, v1, v2

    aput-object v1, v0, v5

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isInfiniteTrafficReminderSwitch()Z

    move-result v0

    if-eqz v0, :cond_7

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getNotLimitedWarning()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v1, v8, v9, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInfiniteReminderType()I

    move-result v2

    aget-object v1, v1, v2

    aput-object v1, v0, v4

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyTrafficReminderSwitch()Z

    move-result v0

    if-eqz v0, :cond_8

    new-array v0, v5, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v8

    invoke-static {v1, v8, v9, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyReminderType()I

    move-result v2

    aget-object v1, v1, v2

    aput-object v1, v0, v4

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object p1, v0, p1

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public checkAutoCorrectionSwitch(ZII)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, p3

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBillReminderSwitch(Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object p1, p1, p3

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, p3

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBillReminderSwitch(Z)V

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->hasOperator:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class p2, Lcom/miui/networkassistant/ui/fragment/BillReminderSettingFragment;

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, p3

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBillReminderSwitch(Z)V

    goto :goto_2

    :cond_2
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, p3

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDailyTrafficReminderSwitch(Z)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, p3

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficReminderSwitch(Z)V

    goto :goto_0

    :cond_4
    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, p3

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveInfiniteTrafficReminderSwitch(Z)V

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object p1, p1, p3

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object p1, p1, p3

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    invoke-virtual {p0, p3, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->showTipsForAutoCorrection(II)V

    goto :goto_2

    :cond_7
    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->hasOperator:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class p2, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public getCountByIndex(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    const/16 p1, 0x64

    const v2, 0x7f120c8c

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p1, 0x50

    const v2, 0x7f120c8a

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/16 p1, 0x32

    const v2, 0x7f120c8b

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/16 p1, 0x1e

    const v2, 0x7f120c91

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/16 p1, 0xa

    const v2, 0x7f120c90

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const p1, 0x7f120c95

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const v2, 0x7f12040d

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

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

    const v0, 0x7f150063

    return v0
.end method

.method protected initPreferenceView()V
    .locals 27

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    const-string v2, "pref_key_sim_info_tab"

    const-string v3, "category_key_other"

    const-string v4, "pref_key_declaration"

    const-string v5, "pref_show_traffic_speed_state"

    const-string v6, "pref_show_traffic_notification"

    const-string v7, "pref_key_limited_traffic_per_day2"

    const-string v8, "pref_key_limited_traffic_per_day1"

    const-string v9, "pref_key_traffic_advanced_settings2"

    const-string v10, "pref_key_traffic_advanced_settings1"

    const-string v11, "pref_key_operator_settings2"

    const-string v12, "pref_key_operator_settings1"

    const-string v13, "pref_traffic_reminder_switch2"

    const-string v14, "pref_traffic_reminder_switch1"

    const-string v15, "pref_bill_reminder_switch2"

    move-object/from16 v16, v2

    const-string v2, "pref_bill_reminder_switch1"

    move-object/from16 v17, v3

    const-string v3, "pref_key_category_key_traffic_settings2"

    move-object/from16 v18, v4

    const-string v4, "pref_key_category_key_traffic_settings1"

    move-object/from16 v19, v5

    const-string v5, "pref_key_category_reminder_sim2"

    move-object/from16 v20, v6

    const-string v6, "pref_key_category_reminder_sim1"

    move-object/from16 v21, v7

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    aput-object v6, v1, v7

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    const/4 v6, 0x1

    aput-object v5, v1, v6

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    aget-object v1, v1, v7

    new-instance v5, Lcom/miui/networkassistant/ui/fragment/b0;

    invoke-direct {v5, v0}, Lcom/miui/networkassistant/ui/fragment/b0;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;->setSelectListener(Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory$TipsClickCallBack;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    aget-object v1, v1, v6

    new-instance v5, Lcom/miui/networkassistant/ui/fragment/b0;

    invoke-direct {v5, v0}, Lcom/miui/networkassistant/ui/fragment/b0;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    invoke-virtual {v1, v5}, Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;->setSelectListener(Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory$TipsClickCallBack;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    aput-object v4, v1, v7

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    aput-object v3, v1, v6

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    aput-object v2, v1, v7

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v15}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    aput-object v2, v1, v6

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, v7

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, v6

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v14}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    aput-object v2, v1, v7

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v13}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    aput-object v2, v1, v6

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, v7

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, v6

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mOperatorSettings:[Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v12}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/TextPreference;

    aput-object v2, v1, v7

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mOperatorSettings:[Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v11}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/TextPreference;

    aput-object v2, v1, v6

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficAdvanced:[Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v10}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/TextPreference;

    aput-object v2, v1, v7

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficAdvanced:[Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v9}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/TextPreference;

    aput-object v2, v1, v6

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    move-object/from16 v2, v21

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mOperatorSettings:[Lmiuix/preference/TextPreference;

    aget-object v1, v1, v7

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mOperatorSettings:[Lmiuix/preference/TextPreference;

    aget-object v1, v1, v6

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficAdvanced:[Lmiuix/preference/TextPreference;

    aget-object v1, v1, v7

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficAdvanced:[Lmiuix/preference/TextPreference;

    aget-object v1, v1, v6

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    aget-object v1, v1, v7

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    aget-object v1, v1, v6

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDeclarationPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DeviceUtil;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initTrafficNotificationCheckboxPref()V

    :goto_0
    new-instance v1, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    iget-object v2, v0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$PhoneNumInputDialogListener;)V

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->inputDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateSimSettings()V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/c0;

    invoke-direct {v2, v0}, Lcom/miui/networkassistant/ui/fragment/c0;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    goto/16 :goto_2

    :cond_1
    move-object/from16 v22, v16

    move-object/from16 v23, v17

    move-object/from16 v24, v18

    move-object/from16 v25, v19

    move-object/from16 v1, v20

    move-object/from16 v26, v21

    iget-object v7, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    const/16 v16, 0x0

    aput-object v6, v7, v16

    iget-object v6, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    invoke-virtual {v0, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    const/4 v7, 0x1

    aput-object v5, v6, v7

    iget-object v5, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    aget-object v5, v5, v16

    new-instance v6, Lcom/miui/networkassistant/ui/fragment/b0;

    invoke-direct {v6, v0}, Lcom/miui/networkassistant/ui/fragment/b0;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    invoke-virtual {v5, v6}, Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;->setSelectListener(Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory$TipsClickCallBack;)V

    iget-object v5, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    aput-object v4, v5, v16

    iget-object v4, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    iget-object v3, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    aput-object v2, v3, v16

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v15}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    aput-object v3, v2, v5

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v2, v2, v16

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v14}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    aput-object v3, v2, v16

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v13}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    aput-object v3, v2, v5

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v2, v2, v16

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mOperatorSettings:[Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v12}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiuix/preference/TextPreference;

    aput-object v3, v2, v16

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mOperatorSettings:[Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v11}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiuix/preference/TextPreference;

    aput-object v3, v2, v5

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficAdvanced:[Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v10}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiuix/preference/TextPreference;

    aput-object v3, v2, v16

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficAdvanced:[Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v9}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lmiuix/preference/TextPreference;

    aput-object v3, v2, v5

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    aput-object v3, v2, v16

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    move-object/from16 v3, v26

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mOperatorSettings:[Lmiuix/preference/TextPreference;

    aget-object v2, v2, v16

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficAdvanced:[Lmiuix/preference/TextPreference;

    aget-object v2, v2, v16

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    aget-object v2, v2, v16

    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDeclarationPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/networkassistant/utils/DeviceUtil;->isUseControlPanel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iget-object v2, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_2
    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initTrafficNotificationCheckboxPref()V

    :goto_1
    new-instance v1, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    iget-object v2, v0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$PhoneNumInputDialogListener;)V

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->inputDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    iput-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updatePadSimSettings()V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/c0;

    invoke-direct {v2, v0}, Lcom/miui/networkassistant/ui/fragment/c0;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    :goto_2
    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->setSelectListener(Lcom/miui/networkassistant/ui/view/MultiSimPreference$ClickCallBack;)V

    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initNetworkSpeedCheckboxPref()V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    iget v2, v0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->setActiveSlot(I)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->setDisplayName(I)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->setDisplayName(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "sim_slot_num_tag"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    :cond_0
    new-instance p1, Lcom/miui/networkassistant/ui/fragment/SettingFragment$UiHandler;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment$UiHandler;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/SettingFragment$UiHandler;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->registerNetworkSpeedObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->registerPermanentNotificationEnableObserver()V

    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/SettingFragment$UiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->unRegisterNetworkSpeedObserver()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->unRegisterPermanentNotificationEnableObserver()V

    return-void
.end method

.method public onNumUpdated(Ljava/lang/String;I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    aget-object p2, p2, v1

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->savePhoneNumber(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updatePackagePreferenceBySlot(I)V

    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateEnabled(I)V

    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateReminderPreferenceBySlot(I)V

    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateTrafficReminderBySlot(I)V

    iget-object p2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    invoke-static {p2, v1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result p2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->isTotalDataUsageSetted(I)Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    aget-object p2, p2, v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    aget-object v1, v2, v1

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    aget-object p2, p2, v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    aget-object v1, v2, v1

    invoke-virtual {p2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    invoke-virtual {p2, p1, v1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->setSimInfo(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->reFresh()V

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->isSetPhone:Z

    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onPause()V

    return-void
.end method

.method public onPhoneNumberBySlotLoaded(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Lcom/miui/networkassistant/utils/PhoneNumberUtils;->localizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->savePhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updatePackagePreferenceBySlot(I)V

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateEnabled(I)V

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateReminderPreferenceBySlot(I)V

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateTrafficReminderBySlot(I)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->isTotalDataUsageSetted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->setSimInfo(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->reFresh()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->isSetPhone:Z

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowTrafficNotification:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    iget p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDisplayTrafficInBar:I

    if-eq p1, v0, :cond_8

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDisplayTrafficInBar:I

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDisplayTrafficInBar:I

    const-string v0, "status_bar_show_network_assistant"

    :goto_0
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_4

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeed:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    iget p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeedBar:I

    if-eq p1, v0, :cond_8

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeedBar:I

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mShowNetworkSpeedBar:I

    const-string v0, "status_bar_show_network_speed"

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot2()V

    move v2, v1

    goto :goto_2

    :cond_5
    :goto_1
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot1()V

    move v2, v3

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/d0;

    invoke-direct {v0, p0, v2, p2}, Lcom/miui/networkassistant/ui/fragment/d0;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;IZ)V

    const-string v4, "scence_open_bill_reminder"

    goto :goto_3

    :cond_6
    new-instance v4, Lcom/miui/networkassistant/ui/fragment/e0;

    invoke-direct {v4, p0, v2, p2, v0}, Lcom/miui/networkassistant/ui/fragment/e0;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;IZZ)V

    const-string v0, "scence_open_traffic_reminder"

    move-object v5, v4

    move-object v4, v0

    move-object v0, v5

    :goto_3
    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/CommonConfig;->isEnableToSendMsgToCorrect()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-static {v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isMiMobileOperator(I)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->makeDialog(Landroid/content/Context;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const v1, 0x7f120e82

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/f0;

    invoke-direct {v2, p0, v4, p1, v0}, Lcom/miui/networkassistant/ui/fragment/f0;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;Ljava/lang/String;Landroidx/preference/Preference;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f121917

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/g0;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/fragment/g0;-><init>()V

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->setDialogParams(Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const-string p1, "scence_complete_package_setting"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackShowGrantSendSmsDialog(Ljava/lang/String;)V

    return v3

    :cond_7
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_8
    :goto_4
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mDeclarationPreference:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_1

    const p1, 0x7f1213cc

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f120631

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, p1, v0}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mOperatorSettings:[Lmiuix/preference/TextPreference;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-ne p1, v3, :cond_2

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot1()V

    :goto_0
    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    :goto_1
    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto/16 :goto_4

    :cond_2
    aget-object v0, v0, v1

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot2()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficAdvanced:[Lmiuix/preference/TextPreference;

    aget-object v3, v0, v2

    const/4 v4, -0x1

    if-ne p1, v3, :cond_5

    invoke-direct {p0, v2, v1, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->checkOperator(IIZ)V

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->hasOperator:Z

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "daily: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyTrafficReminderSwitch()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "normal: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficReminderSwitch()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "infinite: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isInfiniteTrafficReminderSwitch()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NASettingFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot1()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result p1

    if-ne p1, v4, :cond_4

    :goto_2
    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    goto :goto_1

    :cond_5
    aget-object v0, v0, v1

    if-ne p1, v0, :cond_6

    invoke-direct {p0, v1, v1, v1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->checkOperator(IIZ)V

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->hasOperator:Z

    if-eqz p1, :cond_8

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot2()V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result p1

    if-ne p1, v4, :cond_4

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    aget-object v2, v0, v2

    if-ne p1, v2, :cond_7

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot1()V

    :goto_3
    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    goto/16 :goto_1

    :cond_7
    aget-object v0, v0, v1

    if-ne p1, v0, :cond_8

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->operateOnSlot2()V

    goto :goto_3

    :cond_8
    :goto_4
    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initData()V

    return-void
.end method

.method protected onSetTitle()I
    .locals 3

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "extra_settings_title_res"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->setTitle(I)V

    return v2

    :cond_0
    const v0, 0x7f121628

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 2

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initLocation(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/SettingFragment$UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method refreshPage(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->initLocation(I)V

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mCurrentSlotNum:I

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mReminderPreCategory:[Lcom/miui/networkassistant/ui/view/ReminderPreferenceCategory;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->getSimInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121ab9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->showSimTips()V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->getSimInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120b53

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->showWriteNum()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateEnabled(I)V

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updatePackagePreferenceBySlot(I)V

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateReminderPreferenceBySlot(I)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->updateTrafficReminderBySlot(I)V

    return-void
.end method

.method protected resetTitle()V
    .locals 0

    return-void
.end method

.method public showSetOperatorTips(II)V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;II)V

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object p2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2, v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120f7f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120f80

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/common/base/ui/a;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f120450

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/common/base/ui/a;->setPostiveText(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f121632

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/common/base/ui/a;->setNagetiveText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    return-void
.end method

.method public showSimTips()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f121ab9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120ecc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showTips()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12040e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12040f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showTipsForAutoCorrection(II)V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/SettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/SettingFragment;II)V

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object p2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2, v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    const p2, 0x7f12156b

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    const p2, 0x7f1219f0

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/common/base/ui/a;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    return-void
.end method

.method public showWriteNum()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->inputDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1206eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c60

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->inputDialog:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->clearInputText()V

    return-void
.end method

.method public updatePackagePreferenceBySlot(I)V
    .locals 3

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mOperatorSettings:[Lmiuix/preference/TextPreference;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    const v1, 0x7f120543

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    const v0, 0x7f120608

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const v0, 0x7f12139c

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const v0, 0x7f121af9

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficAdvanced:[Lmiuix/preference/TextPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/utils/MiSimUtil;->isMiSimEnable(Landroid/content/Context;I)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isNotLimitCardEnable()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->hasImsi()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->isTotalDataUsageSetted(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mSimInfoPre:Lcom/miui/networkassistant/ui/view/MultiSimPreference;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/ui/view/MultiSimPreference;->getSimInfo(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f120ddb

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mPackageSettingsCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficLimitedSettings:[Landroidx/preference/Preference;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    return-void
.end method

.method public updateReminderPreferenceBySlot(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getNotLimitedWarning()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveInfiniteTrafficReminderSwitch(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v0, v0, p1

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyTrafficReminderSwitch()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, p1

    :goto_1
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isMiMobileOperator(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficReminderSwitch()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, p1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isInfiniteTrafficReminderSwitch()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mTrafficReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, p1

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isBillReminderSwitch()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/SettingFragment;->mBillReminder:[Landroidx/preference/CheckBoxPreference;

    aget-object p1, v1, p1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
