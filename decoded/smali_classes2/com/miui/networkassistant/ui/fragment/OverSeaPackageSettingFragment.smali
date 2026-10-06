.class public Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;
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
        Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$TrafficOptionDialogListener;
    }
.end annotation


# static fields
.field private static final ACTION_DAILY_PACKAGE:I = 0x4

.field private static final ACTION_FLAG_DAILY_BRAND:I = 0x7

.field private static final ACTION_FLAG_MANUAL_LEISURE_TRAFFIC:I = 0x6

.field private static final ACTION_FLAG_NORMAL_MONTH_TOTAL:I = 0x1

.field private static final ACTION_FLAG_NOT_LIMIT_TOTAL:I = 0x8

.field private static final ACTION_SELECT_BRAND:I = 0x3

.field private static final ACTION_USAGE_PACKAGE:I = 0x5

.field private static final MSG_TRAFFIC_MANAGE_SERVICE_CONNECTED:I = 0x1

.field private static final OVER_NORMAL_TRAFFIC_LIMIT:I = 0x2

.field private static final PER_KEY_NORMAL_PACKAGE_SETTING:Ljava/lang/String; = "pref_normal_package_setting"

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

.field private static final PREF_MONTH_WARNING:Ljava/lang/String; = "pref_month_warning"

.field private static final PREF_MORE_SETTINGS:Ljava/lang/String; = "pref_more_settings"

.field private static final PREF_NORMAL_TRAFFIC_LIMIT:Ljava/lang/String; = "pref_normal_traffic_limit"

.field private static final PREF_NORMAL_TRAFFIC_LIMIT_OLD:Ljava/lang/String; = "pref_normal_traffic_limit_old"

.field private static final PREF_NOT_LIMIT_TRAFFIC_LIMIT:Ljava/lang/String; = "pref_not_limit_traffic_limit"

.field private static final PREF_PACKAGE_BEGIN_DATE:Ljava/lang/String; = "pref_package_begin_date"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_FILED:I = 0x7f1210d8


# instance fields
.field private mActionBarTipButton:Landroid/widget/ImageView;

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

.field private mBrandChange:Z

.field private mChanged:Z

.field private mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

.field private mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

.field private mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

.field private mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

.field private mHandler:Landroid/os/Handler;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mIsAppListInited:Z

.field private mLeisureAdjustUsagePreference:Lmiuix/preference/TextPreference;

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mMonthCycleDate:Lmiuix/preference/TextPreference;

.field private mMonthWarningPreference:Lmiuix/preference/TextPreference;

.field private mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

.field private mMorePreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mNormalTrafficLimit:Lmiuix/preference/DropDownPreference;

.field private mNormalTrafficLimitOld:Lmiuix/preference/TextPreference;

.field private mNotLimitedTrafficLimit:Lmiuix/preference/TextPreference;

.field private mOverLimitOperatorType:[Ljava/lang/String;

.field private mOverNormalLimitSelected:I

.field private mPackageTypeCategory:Landroidx/preference/PreferenceCategory;

.field private mPackageTypePreference:Lmiuix/preference/DropDownPreference;

.field private mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

.field private mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

.field private mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mSpecialPackageSetting:Lmiuix/preference/TextPreference;

.field private mTrafficLimitChanged:Z

.field private mTrafficPackageType:[Ljava/lang/String;

.field private mTrafficPackageTypeSelected:I

.field private packageTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mIsAppListInited:Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->packageTypes:[I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x1
    .end array-data
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)[I
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->packageTypes:[I

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficPackageTypeSelected:I

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->initData()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$302(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mIsAppListInited:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method private initData()V
    .locals 9

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->updatePreference()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isSupportCorrection()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMorePreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAutoModifyBoxPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAutoModifyBoxPreference:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficCorrectionAutoModify()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMorePreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAutoModifyBoxPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->setMonthWarningPreferenceValue(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->setMonthCycleDate(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageOverLimitStopNetwork()Z

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mOverNormalLimitSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardBrandIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandIndexInList(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameListI18N()[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimit:Lmiuix/preference/DropDownPreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mOverNormalLimitSelected:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v2, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimitOld:Lmiuix/preference/TextPreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    iget v4, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mOverNormalLimitSelected:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardPackage()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const v6, 0x7f120ed6

    const/4 v7, 0x2

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    iget-object v8, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v8, v2, v3, v7}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v6}, Lmiuix/preference/TextPreference;->setText(I)V

    :goto_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getNotLimitedCardPackage()J

    move-result-wide v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNotLimitedTrafficLimit:Lmiuix/preference/TextPreference;

    iget-object v8, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v8, v2, v3, v7}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    :cond_5
    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficPackageTypeSelected:I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->packageTypes:[I

    invoke-static {v2, v0}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    move-result v0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_7

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v0, v1, v7}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-nez v1, :cond_8

    const v6, 0x7f1204ca

    :cond_8
    invoke-virtual {v0, v6}, Lmiuix/preference/TextPreference;->setText(I)V

    :goto_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_a
    :goto_5
    return-void
.end method

.method private onSelectDailyBrand(Lcom/miui/networkassistant/model/DailyCardBrandInfo;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    iget v1, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandNameIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandIndexInList(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameListI18N()[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    iget v2, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandNameIndex:I

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardBrandIndex(I)Z

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    iget-wide v2, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    iget-wide v2, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->dailyPackage:J

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardPackage(J)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->dailyPackage:J

    invoke-static {v2, v3, v4, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->ignoreApps:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->setIgnoreApps(Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackDailyBrandSelect(Ljava/lang/String;)V

    return-void
.end method

.method private onSelectNormalTrafficLimit(I)V
    .locals 4

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mOverNormalLimitSelected:I

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimit:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimitOld:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageOverLimitStopNetwork(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardStopNetworkOn(Z)Z

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficLimitChanged:Z

    return-void
.end method

.method private onSelectPackageType(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    if-eq v0, p1, :cond_4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficPackageTypeSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->packageTypes:[I

    invoke-static {v0, p1}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    move-result v0

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBrand(I)Z

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackPackageSelect(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->updatePreference()V

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
    sget-object v0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->TAG:Ljava/lang/String;

    const-string v1, "isDataUsageIgnore RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->onSelectNormalTrafficLimit(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardBrandIndex()I

    move-result p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    iget-object p1, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->ignoreApps:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->setIgnoreApps(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->onSelectNormalTrafficLimit(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private registerMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

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

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mIsAppListInited:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

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

    sget-object v3, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->TAG:Ljava/lang/String;

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

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    sget-object p1, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIgnoreApps fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mIsAppListInited:Z

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthCycleDate:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private setMonthWarningPreferenceValue(F)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthWarningPreference:Lmiuix/preference/TextPreference;

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

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$3;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)V

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

    new-instance v3, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$TrafficOptionDialogListener;

    invoke-direct {v3, v2}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$TrafficOptionDialogListener;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v1, v0, p1}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startCorrection()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mBrandChange:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isCorrectionEffective()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isNormalCardEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v3, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "update failed onDestroy "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private unRegisterMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    :cond_0
    return-void
.end method

.method private updatePreference()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypeCategory:Landroidx/preference/PreferenceCategory;

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypeCategory:Landroidx/preference/PreferenceCategory;

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    iget-object v4, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v2, v3, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-nez v2, :cond_3

    const v2, 0x7f1204ca

    goto :goto_2

    :cond_3
    const v2, 0x7f120ed6

    :goto_2
    invoke-virtual {v0, v2}, Lmiuix/preference/TextPreference;->setText(I)V

    :goto_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    const v2, 0x7f120608

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNotLimitedTrafficLimit:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimit:Lmiuix/preference/DropDownPreference;

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimitOld:Lmiuix/preference/TextPreference;

    :goto_4
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimit:Lmiuix/preference/DropDownPreference;

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimitOld:Lmiuix/preference/TextPreference;

    :goto_5
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    const v1, 0x7f1208c0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mSpecialPackageSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMorePreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthWarningPreference:Lmiuix/preference/TextPreference;

    :goto_6
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_a

    :cond_6
    const/4 v3, 0x1

    if-ne v0, v3, :cond_b

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    const v3, 0x7f12139c

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimit:Lmiuix/preference/DropDownPreference;

    goto :goto_7

    :cond_7
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimitOld:Lmiuix/preference/TextPreference;

    :goto_7
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    if-nez v1, :cond_8

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimit:Lmiuix/preference/DropDownPreference;

    goto :goto_8

    :cond_8
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimitOld:Lmiuix/preference/TextPreference;

    :goto_8
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mSpecialPackageSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNotLimitedTrafficLimit:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMorePreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthWarningPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    goto :goto_9

    :cond_9
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    :goto_9
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    const v1, 0x7f121af9

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimitOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimit:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mSpecialPackageSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNotLimitedTrafficLimit:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMorePreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthWarningPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_a
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypeCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mSpecialPackageSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_c
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

    const v0, 0x7f150043

    return v0
.end method

.method protected initPreferenceView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    const-string v0, "pref_key_monthly_package"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthlyPackageCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_key_package_type_category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypeCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_key_package_type"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    const-string v0, "pref_key_package_type_old"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficPackageType:[Ljava/lang/String;

    const-string v0, "pref_normal_package_setting"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_key_special_package_setting"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mSpecialPackageSetting:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_month_warning"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthWarningPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_package_begin_date"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthCycleDate:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_daily_card_package"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_daily_card_brand"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    const-string v0, "pref_daily_card_brand_old"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    const-string v0, "pref_daily_adjust_traffic"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_leisure_adjust_traffic"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_key_auto_modify_package"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAutoModifyBoxPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "pref_more_settings"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMorePreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_normal_traffic_limit_old"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimitOld:Lmiuix/preference/TextPreference;

    const-string v0, "pref_normal_traffic_limit"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimit:Lmiuix/preference/DropDownPreference;

    const-string v0, "pref_not_limit_traffic_limit"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNotLimitedTrafficLimit:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimit:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimitOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->registerMonitorCenter()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mChanged:Z

    :cond_0
    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1219f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    const v1, 0x7f08037f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v0, p1, Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/appcompat/app/ActionBar;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDateUpdated(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->setMonthCycleDate(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveMonthStart(I)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mChanged:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->startCorrection()V

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->unRegisterMonitorCenter()V

    return-void
.end method

.method public onPause()V
    .locals 5

    const-string v0, ""

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onPause()V

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mChanged:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v1, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateTrafficStatusMonitor(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 v3, 0x1

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v1, v3, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->toggleDataUsageAutoCorrection(ZI)V

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficTcResultCode(I)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillTcResultCode(I)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSmsDetail(Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v3

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillSmsDetail(Ljava/lang/String;)Z

    :cond_1
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficLimitChanged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateTrafficStatusMonitor(I)V

    :cond_2
    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mChanged:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "update failed onDestroy "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAutoModifyBoxPreference:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficCorrectionAutoModify(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreference:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandInfo(Ljava/lang/String;)Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->onSelectDailyBrand(Lcom/miui/networkassistant/model/DailyCardBrandInfo;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreference:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_2

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->q()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->packageTypes:[I

    aget p1, p2, p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->onSelectPackageType(I)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mBrandChange:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimit:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_3

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->q()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->onSelectNormalTrafficLimit(I)V

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mChanged:Z

    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mTrafficPackageTypeSelected:I

    if-ne p1, v1, :cond_0

    const p1, 0x7f120608

    goto :goto_0

    :cond_0
    const p1, 0x7f1208c0

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c5c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2, v1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mSpecialPackageSetting:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/SpecialTrafficSettingsFragment;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthWarningPreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_4

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

    if-gez v6, :cond_3

    move-wide v2, v4

    :cond_3
    invoke-virtual {p1, v2, v3, v0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->setData(JF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "get current package"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mMonthCycleDate:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_5

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

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPackageTypePreferenceOld:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->showChangePackageTypeDialog()V

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNormalTrafficLimitOld:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v0, 0x7f1213cf

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mOverNormalLimitSelected:I

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto/16 :goto_4

    :cond_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandPreferenceOld:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v0, 0x7f1213d6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameListI18N()[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyUsedCardBrandIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandIndexInList(I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const/4 v4, 0x7

    invoke-virtual {v3, p1, v0, v2, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

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

    :cond_9
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mAdjustUsagePreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

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

    :cond_a
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mLeisureAdjustUsagePreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_c

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/networkassistant/utils/DeviceUtil;->isLargeScaleMode()Z

    move-result p1

    if-nez p1, :cond_b

    const p1, 0x7f120c64

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_b
    const-string p1, ""

    :goto_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

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

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {p1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->setMaxValue(J)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNotLimitedTrafficLimit:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_d

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f121ada

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c5d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    goto :goto_2

    :cond_d
    :goto_4
    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->initData()V

    return-void
.end method

.method public onSeekBarChanged(F)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->setMonthWarningPreferenceValue(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageWarning(F)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mChanged:Z

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
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {p2}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->onSelectDailyBrand(Lcom/miui/networkassistant/model/DailyCardBrandInfo;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->packageTypes:[I

    aget p1, p2, p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->onSelectPackageType(I)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mBrandChange:Z

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mOverNormalLimitSelected:I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->onSelectNormalTrafficLimit(I)V

    :goto_0
    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mChanged:Z

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f1210d8

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onTrafficUpdated(JI)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p3, v0, :cond_4

    const/16 v2, 0x8

    if-eq p3, v2, :cond_3

    const/4 v2, 0x4

    if-eq p3, v2, :cond_2

    const/4 v1, 0x5

    if-eq p3, v1, :cond_1

    const/4 v1, 0x6

    if-eq p3, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean p3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz p3, :cond_5

    :try_start_0
    iget-object p3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {p3, p1, p2, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->manualCorrectLeisureDataUsage(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    sget-object p2, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->TAG:Ljava/lang/String;

    const-string p3, "manual leisure traffic"

    goto :goto_0

    :cond_1
    iget-boolean p3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz p3, :cond_5

    :try_start_1
    iget-object p3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {p3, p1, p2, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->manualCorrectNormalDataUsage(JI)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {p1, p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateGlobleDataUsage(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    sget-object p2, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->TAG:Ljava/lang/String;

    const-string p3, "manual normal traffic"

    :goto_0
    invoke-static {p2, p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_2
    iget-object p3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p3, p3, v2

    invoke-virtual {p3, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardPackage(J)Z

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mDailyCardPackagePreference:Lmiuix/preference/TextPreference;

    :goto_1
    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object p3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p3, p3, v2

    invoke-virtual {p3, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setNotLimitedCardPackage(J)Z

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mNotLimitedTrafficLimit:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_4
    iget-object p3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->showPermanentNotificationStatusBar(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mPreNormalMonthPackage:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p3, p3, v1

    invoke-virtual {p3, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    :try_start_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {p1, p2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateGlobleDataUsage(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthStart()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveMonthStart(I)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficCorrectionAutoModify(Z)Z

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageOverLimit(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    :cond_5
    :goto_3
    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OverSeaPackageSettingFragment;->mChanged:Z

    return-void
.end method
