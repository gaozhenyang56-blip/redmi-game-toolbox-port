.class public Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;
.implements Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;
.implements Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$TrafficOptionDialogListener;
    }
.end annotation


# static fields
.field private static final ACTION_DAILY_PACKAGE:I = 0x4

.field private static final ACTION_DAILY_WARNING:I = 0x10

.field private static final ACTION_FLAG_DAILY_BRAND:I = 0x7

.field private static final ACTION_FLAG_MANUAL_LEISURE_TRAFFIC:I = 0x6

.field private static final ACTION_FLAG_NORMAL_MONTH_TOTAL:I = 0x1

.field private static final ACTION_FLAG_NOT_LIMIT_TOTAL:I = 0x8

.field private static final ACTION_INFINITE_WARNING:I = 0x11

.field private static final ACTION_SELECT_BRAND:I = 0x3

.field private static final ACTION_USAGE_PACKAGE:I = 0x5

.field private static final MSG_TRAFFIC_MANAGE_SERVICE_CONNECTED:I = 0x1

.field private static final OVER_NORMAL_TRAFFIC_LIMIT:I = 0x2

.field private static final PER_KEY_NORMAL_PACKAGE_SETTING:Ljava/lang/String; = "pref_normal_package_setting"

.field private static final PREF_ADVANCE_DAILY_DATA_USAGE_WARNING:Ljava/lang/String; = "advance_daily_data_usage_warning"

.field private static final PREF_ADVANCE_DAILY_TRAFFIC_REMINDER_TYPE:Ljava/lang/String; = "advance_daily_traffic_reminder_type"

.field private static final PREF_ADVANCE_INFINITE_DATA_USAGE_WARNING:Ljava/lang/String; = "advance_infinite_data_usage_warning"

.field private static final PREF_ADVANCE_INFINITE_TRAFFIC_REMINDER_TYPE:Ljava/lang/String; = "advance_infinite_traffic_reminder_type"

.field private static final PREF_ADVANCE_MONTH_DATA_USAGE_WARNING:Ljava/lang/String; = "advance_month_data_usage_warning"

.field private static final PREF_ADVANCE_MONTH_PLAN_OVER_PACKAGE_TRAFFIC_REMINDER_TYPE:Ljava/lang/String; = "advance_month_plan_over_package_traffic_reminder_type"

.field private static final PREF_ADVANCE_MONTH_PLAN_TRAFFIC_REMINDER_TYPE:Ljava/lang/String; = "advance_month_plan_traffic_reminder_type"

.field private static final PREF_ADVANCE_TRAFFIC_DAILY_REMINDER_SWITCH:Ljava/lang/String; = "advance_traffic_daily_reminder_switch"

.field private static final PREF_ADVANCE_TRAFFIC_INFINITE_REMINDER_SWITCH:Ljava/lang/String; = "advance_traffic_infinite_reminder_switch"

.field private static final PREF_ADVANCE_TRAFFIC_REMINDER_CATEGORY:Ljava/lang/String; = "pref_advance_traffic_reminder_category"

.field private static final PREF_ADVANCE_TRAFFIC_REMINDER_SWITCH:Ljava/lang/String; = "advance_traffic_reminder_switch"

.field private static final PREF_KEY_ADJUST_USAGE:Ljava/lang/String; = "pref_daily_adjust_traffic"

.field private static final PREF_KEY_AUTO_MODIFY_PACKAGE:Ljava/lang/String; = "pref_key_auto_modify_package"

.field private static final PREF_KEY_DAILY_CARD_BRAND:Ljava/lang/String; = "pref_daily_card_brand"

.field private static final PREF_KEY_DAILY_CARD_BRAND_OLD:Ljava/lang/String; = "pref_daily_card_brand_old"

.field private static final PREF_KEY_DAILY_CARD_PACKAGE:Ljava/lang/String; = "pref_daily_card_package"

.field private static final PREF_KEY_LEISURE_ADJUST_USAGE:Ljava/lang/String; = "pref_leisure_adjust_traffic"

.field private static final PREF_KEY_MONTHLY_PACKAGE:Ljava/lang/String; = "pref_key_monthly_package"

.field private static final PREF_KEY_PACKAGE_TYPE:Ljava/lang/String; = "pref_key_package_type"

.field private static final PREF_KEY_PACKAGE_TYPE_CATEGORY:Ljava/lang/String; = "pref_key_package_type_category"

.field private static final PREF_KEY_PACKAGE_TYPE_OLD:Ljava/lang/String; = "pref_key_package_type_old"

.field private static final PREF_KEY_SPECIAL_PACKAGE_SETTING:Ljava/lang/String; = "pref_key_special_package_setting"

.field private static final PREF_MORE_SETTINGS:Ljava/lang/String; = "pref_more_settings"

.field private static final PREF_NORMAL_TRAFFIC_LIMIT:Ljava/lang/String; = "pref_normal_traffic_limit"

.field private static final PREF_NORMAL_TRAFFIC_LIMIT_OLD:Ljava/lang/String; = "pref_normal_traffic_limit_old"

.field private static final PREF_NOT_LIMIT_TRAFFIC_LIMIT:Ljava/lang/String; = "pref_not_limit_traffic_limit"

.field private static final PREF_PACKAGE_BEGIN_DATE:Ljava/lang/String; = "pref_package_begin_date"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_FILED:I = 0x7f121a9d


# instance fields
.field private dailyBrandIndex:I

.field private dailyTotal:J

.field private isDailyOn:Z

.field private isInfiniteOn:Z

.field private isInfiniteWarning:Z

.field private isNormalOn:Z

.field private mActionBarTipButton:Landroid/widget/Button;

.field private mAdjustUsagePreference:Lmiuix/preference/TextPreference;

.field private mAllNetworkAccessedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoModifyBoxPreference:Landroidx/preference/CheckBoxPreference;

.field private mBrandChanged:Z

.field private mCancel:Landroid/widget/ImageView;

.field private mChanged:Z

.field private mCurrentDate:I

.field private mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

.field private mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

.field private mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

.field private mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

.field private mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

.field private mDailyReminderType:Lmiuix/preference/DropDownPreference;

.field private mDailyType:I

.field private mEndView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

.field private mInfiniteReminderType:Lmiuix/preference/TextPreference;

.field private mInfiniteType:I

.field private mInfiniteWarning:Lmiuix/preference/TextPreference;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mIsAppListInited:Z

.field private mIsAutoRevise:Z

.field private mLeisureAdjustUsagePreference:Lmiuix/preference/TextPreference;

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mMonthCycleDate:Lmiuix/preference/TextPreference;

.field private mMonthFixOverReminderType:Lmiuix/preference/DropDownPreference;

.field private mMonthFixReminderType:Lmiuix/preference/TextPreference;

.field private mMonthFixWarning:Lmiuix/preference/TextPreference;

.field private mMonthOverType:I

.field private mMonthType:I

.field private mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

.field private mMorePreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mOverReminderType:[Ljava/lang/String;

.field private mPackageTypeCategory:Landroidx/preference/PreferenceCategory;

.field private mPackageTypePreference:Lmiuix/preference/DropDownPreference;

.field private mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

.field private mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

.field private mReminderSwitch:Landroidx/preference/CheckBoxPreference;

.field private mReminderType:[I

.field private mReminderTypeSelected:I

.field private mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mSpecialPackageSetting:Lmiuix/preference/TextPreference;

.field private mTrafficLimitChanged:Z

.field private mTrafficPackageType:[Ljava/lang/String;

.field private mTrafficPackageTypeSelected:I

.field private mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

.field private packageTypes:[I

.field private trafficSave:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mIsAppListInited:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteOn:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isNormalOn:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isDailyOn:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteWarning:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->trafficSave:Ljava/util/HashMap;

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->dailyBrandIndex:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->dailyTotal:J

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderType:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->packageTypes:[I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$6;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$6;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mHandler:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x1
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1402(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isNormalOn:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isDailyOn:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteOn:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;ZLandroidx/preference/CheckBoxPreference;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->initData()V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$302(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mIsAppListInited:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->saveInfoAndFinish()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->cancelInfo()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)[I
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->packageTypes:[I

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    return p0
.end method

.method private cancelInfo()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private initData()V
    .locals 11

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyReminderType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyType:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getReminderType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthType:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getInfiniteReminderType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteType:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthOverReminderType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthOverType:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mCurrentDate:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficCorrectionAutoModify()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mIsAutoRevise:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardBrandIndex()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->dailyBrandIndex:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->dailyTotal:J

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isInfiniteTrafficReminderSwitch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteOn:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyTrafficReminderSwitch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isDailyOn:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficReminderSwitch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isNormalOn:Z

    const/high16 v0, -0x80000000

    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "brand"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    :cond_1
    sget-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5957\u9910\u8bbe\u7f6e\u83b7\u53d6brand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    const/4 v1, 0x0

    if-gez v0, :cond_2

    move v0, v1

    :cond_2
    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updatePreference()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSupportCorrection()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMorePreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAutoModifyBoxPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAutoModifyBoxPreference:Landroidx/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficCorrectionAutoModify()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMorePreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAutoModifyBoxPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->setMonthWarningValue(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->setMonthCycleDate(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardBrandIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandIndexInList(I)I

    move-result v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameListI18N()[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v0

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v3, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v3, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    const v7, 0x7f120ed6

    const/4 v8, 0x2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    iget-object v9, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v9, v3, v4, v8}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v7}, Lmiuix/preference/TextPreference;->setText(I)V

    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v3, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v3, :cond_6

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->packageTypes:[I

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    invoke-static {v0, v3}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    move-result v0

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getNotLimitedWarning()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v0, v2, v5

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    iget-object v4, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v4, v2, v3, v8}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-nez v2, :cond_9

    const v7, 0x7f1204ca

    :cond_9
    invoke-virtual {v0, v7}, Lmiuix/preference/TextPreference;->setText(I)V

    :goto_4
    cmp-long v0, v9, v5

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteWarning:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v9, v10, v8}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteWarning:Lmiuix/preference/TextPreference;

    const v2, 0x7f120ed5

    invoke-virtual {v0, v2}, Lmiuix/preference/TextPreference;->setText(I)V

    :goto_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_6
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateSelectReminder()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficReminderSwitch()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v1, v0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v2, v0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    :goto_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyTrafficReminderSwitch()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    goto :goto_8

    :cond_d
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v2, v0, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    :goto_8
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isInfiniteTrafficReminderSwitch()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v1, v0, v8}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    goto :goto_9

    :cond_e
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v2, v0, v8}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    :cond_f
    :goto_9
    return-void
.end method

.method private isDarkModeEnable()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onSelectDailyBrand(Lcom/miui/networkassistant/model/DailyCardBrandInfo;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    iget v1, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandNameIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandIndexInList(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameListI18N()[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    iget v1, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandNameIndex:I

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->dailyBrandIndex:I

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    iget-wide v2, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->dailyPackage:J

    iput-wide v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->dailyTotal:J

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    iget-object v4, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v4, v1, v2, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->ignoreApps:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->setIgnoreApps(Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackDailyBrandSelect(Ljava/lang/String;)V

    return-void
.end method

.method private onSelectNormalTrafficLimit(I)V
    .locals 4

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageOverLimitStopNetwork(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkOn(Z)Z

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficLimitChanged:Z

    return-void
.end method

.method private onSelectPackageType(I)V
    .locals 4

    const-string v0, "mute"

    const-string v1, "onSelectPackageType: \u5957\u9910\u53d8\u5316"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-eq v0, p1, :cond_8

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->packageTypes:[I

    invoke-static {v0, p1}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    move-result v0

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackPackageSelect(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updatePreference()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->clearDataUsageIgnore(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string v1, "isDataUsageIgnore RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyTrafficReminderSwitch()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v1, p1, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    :goto_2
    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->onSelectNormalTrafficLimit(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardBrandIndex()I

    move-result p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    iget-object p1, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->ignoreApps:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->setIgnoreApps(Ljava/util/List;)V

    goto :goto_4

    :cond_4
    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficReminderSwitch()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v1, p1, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v0, p1, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    :goto_3
    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->onSelectNormalTrafficLimit(I)V

    goto :goto_4

    :cond_6
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, v3

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isInfiniteTrafficReminderSwitch()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v1, p1, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v0, p1, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    :cond_8
    :goto_4
    return-void
.end method

.method private registerMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    return-void
.end method

.method private saveInfoAndFinish()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isDailyOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateDailyReminderWindow()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteOn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteWarning:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateInfiniteReminderWindow()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->saveTrafficInfo()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->saveTrafficCount()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mBrandChanged:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIMOBILE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->startCorrection()V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private saveTrafficCount()V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->trafficSave:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->trafficSave:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-eq v1, v2, :cond_7

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveNotLimitedWarning(Ljava/lang/Long;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDailyWarning(Ljava/lang/Long;)Z

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v1, v2, v3, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->manualCorrectLeisureDataUsage(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string v3, "manual leisure traffic"

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v1, v2, v3, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->manualCorrectNormalDataUsage(JI)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateGlobleDataUsage(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string v3, "manual normal traffic"

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardPackage(J)Z

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setNotLimitedCardPackage(J)Z

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->showPermanentNotificationStatusBar(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    :try_start_2
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateGlobleDataUsage(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mCurrentDate:I

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveMonthStart(I)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mIsAutoRevise:Z

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficCorrectionAutoModify(Z)Z

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageOverLimit(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    const/4 v1, 0x0

    if-gtz v0, :cond_9

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isDailyOn:Z

    :cond_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v5, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getNotLimitedWarning()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gtz v0, :cond_a

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteOn:Z

    :cond_a
    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    return-void
.end method

.method private saveTrafficInfo()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteOn:Z

    :goto_0
    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isDailyOn:Z

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_1

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isNormalOn:Z

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteOn:Z

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isNormalOn:Z

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    iget-boolean v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteOn:Z

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveInfiniteTrafficReminderSwitch(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    iget-boolean v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isNormalOn:Z

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficReminderSwitch(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    iget-boolean v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isDailyOn:Z

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDailyTrafficReminderSwitch(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBrand(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderType:[I

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteType:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveInfiniteReminderType(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderType:[I

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyType:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDailyReminderType(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mCurrentDate:I

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveMonthStart(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    iget-boolean v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mIsAutoRevise:Z

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficCorrectionAutoModify(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->dailyBrandIndex:I

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardBrandIndex(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderType:[I

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthOverType:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveMonthOverReminderType(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    iget-wide v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->dailyTotal:J

    invoke-virtual {v0, v3, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardPackage(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderType:[I

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthType:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveReminderType(I)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string v3, "onPause: saveSwitch"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setMiMobileOperatorModify(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    const-wide/16 v3, -0x2

    invoke-virtual {v0, v3, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkTime(J)Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficLimitChanged:Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBrand(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficTcResultCode(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillTcResultCode(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    const-string v3, ""

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSmsDetail(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v4

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillSmsDetail(Ljava/lang/String;)Z

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateTrafficStatusMonitor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v1, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->toggleDataUsageAutoCorrection(ZI)V

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficTcResultCode(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillTcResultCode(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSmsDetail(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillSmsDetail(Ljava/lang/String;)Z

    :cond_6
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficLimitChanged:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateTrafficStatusMonitor(I)V

    :cond_7
    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "update failed onDestroy "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->startCorrection()V

    return-void
.end method

.method private setIgnoreApps(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mIsAppListInited:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v2, "isDataUsageIgnore"

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 v4, 0x0

    iget v5, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v3, v0, v4, v5}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->setDataUsageIgnore(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 v3, 0x1

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v1, v0, v3, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->setDataUsageIgnore(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    sget-object p1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIgnoreApps fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mIsAppListInited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setMonthCycleDate(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v1, v4

    const-string p1, "%d"

    invoke-static {v3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const p1, 0x7f1219b1

    invoke-virtual {v0, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthCycleDate:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private setMonthWarningValue(F)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixWarning:Lmiuix/preference/TextPreference;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private showChangePackageTypeDialog()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120669

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120668

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$4;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private showPermanentNotificationStatusBar(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_network_assistant"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121647

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f121646

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v3, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$TrafficOptionDialogListener;

    invoke-direct {v3, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$TrafficOptionDialogListener;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v1, v0, p1}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startCorrection()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNormalCardEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "stat Correction exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private unRegisterMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    :cond_0
    return-void
.end method

.method private updateDailyReminderWindow()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->saveTrafficInfo()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->saveTrafficCount()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mBrandChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIMOBILE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->startCorrection()V

    :cond_1
    return-void
.end method

.method private updateInfiniteReminderWindow()V
    .locals 6

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getNotLimitedWarning()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const v1, 0x7f120e4e

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120c61

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v5, 0x7f120e4d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->saveTrafficInfo()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->saveTrafficCount()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mBrandChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIMOBILE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->startCorrection()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updatePreference()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypeCategory:Landroidx/preference/PreferenceCategory;

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypeCategory:Landroidx/preference/PreferenceCategory;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    iget-object v4, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v2, v3, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-nez v2, :cond_3

    const v2, 0x7f1204ca

    goto :goto_2

    :cond_3
    const v2, 0x7f120ed6

    :goto_2
    invoke-virtual {v0, v2}, Lmiuix/preference/TextPreference;->setText(I)V

    :goto_3
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    const v2, 0x7f120608

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    const v1, 0x7f1208c0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSpecialPackageSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteWarning:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderType:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderType:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixWarning:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixReminderType:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixOverReminderType:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_7

    :cond_4
    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    const v3, 0x7f12139c

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSpecialPackageSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    :goto_4
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    :goto_5
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteWarning:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixWarning:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderType:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixReminderType:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderType:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    const v1, 0x7f121af9

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSpecialPackageSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixWarning:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderType:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixReminderType:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderType:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteWarning:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    :goto_6
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixOverReminderType:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_7
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypeCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSpecialPackageSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_8
    return-void
.end method

.method private updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-nez p3, :cond_1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixWarning:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixReminderType:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixOverReminderType:Lmiuix/preference/DropDownPreference;

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-ne p3, p2, :cond_2

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderType:Lmiuix/preference/DropDownPreference;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteWarning:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderType:Lmiuix/preference/TextPreference;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private updateSelectReminder()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderType:[I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getReminderType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderType:[I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInfiniteReminderType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderType:[I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyReminderType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderType:[I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthOverReminderType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderType:Lmiuix/preference/DropDownPreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mOverReminderType:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixOverReminderType:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mOverReminderType:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkAutoCorrectionSwitch(ZLandroidx/preference/CheckBoxPreference;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2, p3}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->showTipsForAutoCorrection(Landroidx/preference/CheckBoxPreference;I)V

    :cond_1
    return-void
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

    const v0, 0x7f150053

    return v0
.end method

.method protected initPreferenceView()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    const-string v0, "pref_key_monthly_package"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_key_package_type_category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypeCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_key_package_type"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    const-string v0, "pref_key_package_type_old"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mOverReminderType:[Ljava/lang/String;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f03000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    const-string v0, "pref_normal_package_setting"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_key_special_package_setting"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSpecialPackageSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_daily_card_package"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_daily_card_brand"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    const-string v0, "pref_daily_card_brand_old"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    const-string v0, "pref_daily_adjust_traffic"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_leisure_adjust_traffic"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_key_auto_modify_package"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAutoModifyBoxPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "pref_more_settings"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMorePreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_advance_traffic_reminder_category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "advance_month_plan_traffic_reminder_type"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixReminderType:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixReminderType:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "advance_infinite_traffic_reminder_type"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderType:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "advance_daily_traffic_reminder_type"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderType:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "advance_traffic_reminder_switch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    const-string v0, "advance_traffic_infinite_reminder_switch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    const-string v0, "advance_traffic_daily_reminder_switch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "advance_month_data_usage_warning"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixWarning:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "advance_infinite_data_usage_warning"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteWarning:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_package_begin_date"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthCycleDate:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "advance_month_plan_over_package_traffic_reminder_type"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixOverReminderType:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->registerMonitorCenter()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mEndView:Landroid/widget/ImageView;

    const v2, 0x7f120f48

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mEndView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mEndView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isDarkModeEnable()Z

    move-result v4

    const v5, 0x7f080a48

    invoke-static {v3, v5, v4}, Lme/a;->b(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mEndView:Landroid/widget/ImageView;

    new-instance v3, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;

    invoke-direct {v3, p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mCancel:Landroid/widget/ImageView;

    const v3, 0x7f120499

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mCancel:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isDarkModeEnable()Z

    move-result v3

    const v4, 0x7f080a42

    invoke-static {v2, v4, v3}, Lme/a;->b(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mCancel:Landroid/widget/ImageView;

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$3;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v1, p1, Lmiuix/appcompat/app/ActionBar;

    if-eqz v1, :cond_0

    check-cast p1, Lmiuix/appcompat/app/ActionBar;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mEndView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    :cond_0
    return v0
.end method

.method public onDateUpdated(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->setMonthCycleDate(I)V

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mCurrentDate:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->unRegisterMonitorCenter()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onPause()V

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause: process on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAutoModifyBoxPreference:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mIsAutoRevise:Z

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandInfo(Ljava/lang/String;)Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->onSelectDailyBrand(Lcom/miui/networkassistant/model/DailyCardBrandInfo;)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_2

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->q()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->packageTypes:[I

    aget p1, p2, p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->onSelectPackageType(I)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mBrandChanged:Z

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1, p1, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->checkAutoCorrectionSwitch(ZLandroidx/preference/CheckBoxPreference;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v1, p1, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isNormalOn:Z

    goto/16 :goto_1

    :cond_3
    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isNormalOn:Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2, p1, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->checkAutoCorrectionSwitch(ZLandroidx/preference/CheckBoxPreference;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v2, p1, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1, p1, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->checkAutoCorrectionSwitch(ZLandroidx/preference/CheckBoxPreference;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v1, p1, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isDailyOn:Z

    goto/16 :goto_1

    :cond_5
    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isDailyOn:Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2, p1, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->checkAutoCorrectionSwitch(ZLandroidx/preference/CheckBoxPreference;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v2, p1, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1, p1, p2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->checkAutoCorrectionSwitch(ZLandroidx/preference/CheckBoxPreference;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v1, p1, p2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteOn:Z

    goto :goto_1

    :cond_7
    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteOn:Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2, p1, p2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->checkAutoCorrectionSwitch(ZLandroidx/preference/CheckBoxPreference;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-direct {p0, v2, p1, p2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->updateReminderPreference(ZLandroidx/preference/CheckBoxPreference;I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderType:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_9

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->q()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyType:I

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyReminderType:Lmiuix/preference/DropDownPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderType:[I

    aget p1, v0, p1

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->onSelectReminder(Lmiuix/preference/DropDownPreference;I)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderType:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_a

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixOverReminderType:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_b

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->q()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthOverType:I

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixOverReminderType:Lmiuix/preference/DropDownPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderType:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_b
    :goto_1
    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-ne p1, v1, :cond_0

    const p1, 0x7f120608

    goto :goto_0

    :cond_0
    const p1, 0x7f1208c0

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c5c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthCycleDate:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0, p0}, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/DateShowDialog$DateDialogListener;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1203c8

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/miui/networkassistant/ui/dialog/DateShowDialog;->buildDateDialog(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSpecialPackageSetting:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto/16 :goto_4

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->showChangePackageTypeDialog()V

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v0, 0x7f1213d6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameListI18N()[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardBrandIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandIndexInList(I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const/4 v4, 0x7

    invoke-virtual {v3, p1, v0, v2, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto/16 :goto_4

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120607

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c5a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    :goto_2
    invoke-virtual {p1, v0, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mAdjustUsagePreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120d48

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c63

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isLargeScaleMode()Z

    move-result p1

    if-nez p1, :cond_8

    const p1, 0x7f120c64

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_8
    const-string p1, ""

    :goto_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const v4, 0x7f120d47

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v2, v3, v7}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x6

    invoke-virtual {v0, v4, p1, v5}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {p1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->setMaxValue(J)V

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mMonthFixWarning:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_b

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0, p0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1213db

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->buildDateDialog(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_a

    move-wide v2, v4

    :cond_a
    invoke-virtual {p1, v2, v3, v0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->setData(JF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "get current package"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteWarning:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const v0, 0x7f120e4e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f120c61

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x11

    goto/16 :goto_2

    :cond_c
    :goto_4
    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->initData()V

    return-void
.end method

.method public onSeekBarChanged(F)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->setMonthWarningValue(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageWarning(F)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    return-void
.end method

.method public onSelectItemUpdate(II)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->onSelectDailyBrand(Lcom/miui/networkassistant/model/DailyCardBrandInfo;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->packageTypes:[I

    aget p1, p2, p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->onSelectPackageType(I)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mBrandChanged:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->onSelectNormalTrafficLimit(I)V

    :goto_0
    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    return-void
.end method

.method public onSelectReminder(Lmiuix/preference/DropDownPreference;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getReminderType()I

    move-result v0

    if-eq v0, p2, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderTypeSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderType:[I

    invoke-static {v0, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    move-result p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mOverReminderType:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f121a9d

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onTrafficUpdated(JI)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteReminderSwitch:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mReminderSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->trafficSave:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p3, v1, :cond_4

    const/4 v2, 0x4

    if-eq p3, v2, :cond_3

    const/16 v2, 0x10

    if-eq p3, v2, :cond_2

    const/16 v2, 0x11

    if-eq p3, v2, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteOn:Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isInfiniteWarning:Z

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mInfiniteWarning:Lmiuix/preference/TextPreference;

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->isDailyOn:Z

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    goto :goto_0

    :cond_4
    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    :goto_0
    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_1
    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;->mChanged:Z

    return-void
.end method

.method public showTipsForAutoCorrection(Landroidx/preference/CheckBoxPreference;I)V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;Landroidx/preference/CheckBoxPreference;I)V

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
