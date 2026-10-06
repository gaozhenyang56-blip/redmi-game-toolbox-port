.class public Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$UIHandler;
    }
.end annotation


# static fields
.field private static final CATEGORY_KEY_LIMIT_TRAFFIC_PER_DAY:Ljava/lang/String; = "category_key_limit_traffic_per_day"

.field private static final CATEGORY_KEY_LOCK_SCREEN:Ljava/lang/String; = "category_key_lock_screen"

.field private static final CUSTOMIZE:I = 0x0

.field private static final FIVE:I = 0x5

.field private static final LOCK_SCREEN_WARNING_TYPE_COUNT:I = 0x5

.field private static final LOCK_SCREEN_WARNING_VALUE:I = 0x3

.field private static final MIN_TRAFFIC_PKG:J = 0x2200000L

.field private static final MSG_SERVICE_CONNECTED:I = 0x6

.field private static final OVER_TRAFFIC_DAILY_LIMIT:I = 0x2

.field private static final PREF_KEY_LIMIT_TRAFFIC_PER_DAY:Ljava/lang/String; = "pref_key_limit_traffic_per_day"

.field private static final PREF_KEY_LOCK_SCREEN_SWITCH:Ljava/lang/String; = "pref_key_lock_screen_switch"

.field private static final PREF_KEY_LOCK_SCREEN_WARNING_VALUE:Ljava/lang/String; = "pref_key_lock_screen_warning_value"

.field private static final PREF_KEY_LOCK_SCREEN_WARNING_VALUE_OLD:Ljava/lang/String; = "pref_key_lock_screen_warning_value_old"

.field private static final PREF_KEY_OVER_TRAFFIC_LIMIT_WARNING:Ljava/lang/String; = "pref_key_over_traffic_limit_warning"

.field private static final PREF_KEY_OVER_TRAFFIC_LIMIT_WARNING_OLD:Ljava/lang/String; = "pref_key_over_traffic_limit_warning_old"

.field private static final PREF_KEY_TRAFFIC_LIMIT_NUMBER_OLD:Ljava/lang/String; = "pref_key_traffic_limit_number_old"

.field private static final TAG:Ljava/lang/String; = "TrafficLimit"

.field private static final TEN:I = 0xa

.field private static final THREE:I = 0x3

.field private static final TITLE_FILED:I = 0x7f12060a

.field private static final TRAFFIC_DAILY_LIMIT_VALUE:I = 0x1

.field private static final TRAFFIC_LIMIT_TYPE_COUNT:I = 0x4


# instance fields
.field private mDailyLimitChanged:Z

.field private mDailyLimitValue:[Ljava/lang/String;

.field private mDailyLimitValueSelected:I

.field private mDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mHandler:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$UIHandler;

.field private mLockScreenChanged:Z

.field private mLockScreenCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

.field private mLockScreenSwitchEnable:Z

.field private mLockScreenWarningArray:[Ljava/lang/String;

.field private mLockScreenWarningSelected:I

.field private mLockScreenWarningTextPreference:Lmiuix/preference/DropDownPreference;

.field private mLockScreenWarningTextPreferenceOld:Lmiuix/preference/TextPreference;

.field private mOverDailyLimitOperate:Lmiuix/preference/DropDownPreference;

.field private mOverDailyLimitOperateOld:Lmiuix/preference/TextPreference;

.field private mOverDailyLimitOperatorSelected:I

.field private mOverLimitOperatorType:[Ljava/lang/String;

.field private mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mTrafficDailyLimitSwitch:Landroidx/preference/CheckBoxPreference;

.field private mTrafficDailyLimitType:[Ljava/lang/String;

.field private mTrafficDailyLimitValueOld:Lmiuix/preference/TextPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$UIHandler;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$UIHandler;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$UIHandler;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->initData()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitChanged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->onSelectTrafficDailyLimitValue(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->onSelectOverDailyLimit(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->onSelectLockScreen(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->updateCustomizeDailyLimit(J)V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValueSelected:I

    return p1
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValueOld:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getValue(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method private getSelected(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x3

    return p1
.end method

.method private getValue(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/16 p1, 0xa

    return p1

    :cond_2
    const/4 p1, 0x5

    return p1
.end method

.method private initData()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->isAttatched()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v2, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getCurrentMonthTotalPackage(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "TrafficLimit"

    const-string v4, "getCurrentMonthTotalPackage"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getTrafficLimitValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getSelected(I)I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValueSelected:I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyLimitWarningType()I

    move-result v2

    iput v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperatorSelected:I

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->updateDailyLimitValue(J)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->initTrafficLimitDailyCategory()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->initLockScreenWarningArray()V

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->initLockScreenWarningValue(J)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->initLockScreenMonitor()V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private initLockScreenMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isLockScreenTrafficEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenSwitchEnable:Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreference:Lmiuix/preference/DropDownPreference;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreferenceOld:Lmiuix/preference/TextPreference;

    :goto_0
    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenSwitchEnable:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningSelected:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->setLockScreenWarningText(Ljava/lang/String;)V

    return-void
.end method

.method private initLockScreenWarningArray()V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getKBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->getMBString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const-string v9, "%d%s"

    invoke-static {v4, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    const/16 v10, 0x1f4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v8

    aput-object v1, v6, v7

    invoke-static {v4, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    aput-object v2, v4, v7

    invoke-static {v3, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    aput-object v2, v4, v7

    invoke-static {v3, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v8

    aput-object v2, v4, v7

    invoke-static {v3, v9, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreference:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->y([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreference:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->B([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initLockScreenWarningValue(J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getLockScreenWarningLevel()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningSelected:I

    if-gez v0, :cond_0

    invoke-static {p1, p2}, Lcom/miui/networkassistant/traffic/lockscreen/LockScreenTrafficHelper;->getLockScreenLevel(J)I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningSelected:I

    :cond_0
    return-void
.end method

.method private initTrafficLimitDailyCategory()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyLimitEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValueOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiuix/preference/DropDownPreference;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperateOld:Lmiuix/preference/TextPreference;

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperatorSelected:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperateOld:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperatorSelected:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValueOld:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValueSelected:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private onSelectLockScreen(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->setLockScreenWarningText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setLockScreenWarningLevel(I)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenChanged:Z

    return-void
.end method

.method private onSelectOverDailyLimit(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperatorSelected:I

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiuix/preference/DropDownPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperateOld:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyLimitWarningType(I)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitChanged:Z

    return-void
.end method

.method private onSelectTrafficDailyLimitValue(I)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;I)V

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f1213d0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120c1f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValueSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValueOld:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->getValue(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficLimitValue(I)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitChanged:Z

    :goto_0
    return-void
.end method

.method private setLockScreenWarningText(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateCustomizeDailyLimit(J)V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    const/4 v0, 0x1

    const v1, 0x7f120601

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v0, p2

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v0, p2

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    :goto_0
    return-void
.end method

.method private updateDailyLimitValue(J)V
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    const-wide/32 v2, 0x2200000

    cmp-long v2, p1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gtz v2, :cond_0

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const-wide/32 v6, 0x100000

    invoke-static {p1, v6, v7}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const-wide/32 v0, 0x200000

    invoke-static {p2, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const-wide/32 v0, 0x300000

    invoke-static {p2, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesByMB(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const-wide/16 v6, 0x3

    mul-long/2addr v6, p1

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    invoke-static {v1, v6, v7}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesWithUintLong(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const v2, 0x7f1219e4

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    aget-object v7, v7, v5

    aput-object v7, v6, v5

    invoke-static {v1, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const-wide/16 v6, 0x5

    mul-long/2addr v6, p1

    div-long/2addr v6, v8

    invoke-static {v1, v6, v7}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesWithUintLong(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const v2, 0x7f1208bf

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    aget-object v7, v7, v4

    aput-object v7, v6, v5

    invoke-static {v1, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const-wide/16 v6, 0xa

    mul-long/2addr p1, v6

    div-long/2addr p1, v8

    invoke-static {v1, p1, p2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytesWithUintLong(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const v0, 0x7f12198d    # 1.9419995E38f

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v1, v5

    invoke-static {p2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValue:[Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizeDailyLimitWarning()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->updateCustomizeDailyLimit(J)V

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

    const v0, 0x7f15006d

    return v0
.end method

.method protected initPreferenceView()V
    .locals 5

    const-string v0, "category_key_limit_traffic_per_day"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v1, "category_key_lock_screen"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    const-string v2, "pref_key_limit_traffic_per_day"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitSwitch:Landroidx/preference/CheckBoxPreference;

    const-string v2, "pref_key_traffic_limit_number_old"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/TextPreference;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValueOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v2, "pref_key_over_traffic_limit_warning_old"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/TextPreference;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperateOld:Lmiuix/preference/TextPreference;

    const-string v2, "pref_key_over_traffic_limit_warning"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/DropDownPreference;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    invoke-direct {v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const-string v2, "pref_key_lock_screen_switch"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v2, "pref_key_lock_screen_warning_value_old"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/TextPreference;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreferenceOld:Lmiuix/preference/TextPreference;

    const-string v2, "pref_key_lock_screen_warning_value"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/DropDownPreference;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreference:Lmiuix/preference/DropDownPreference;

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperateOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperateOld:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiuix/preference/DropDownPreference;

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreferenceOld:Lmiuix/preference/TextPreference;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreference:Lmiuix/preference/DropDownPreference;

    :goto_2
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onPause()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitChanged:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->forceCheckDailyLimitStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenChanged:Z

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->forceCheckLockScreenStatus(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitChanged:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenChanged:Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitSwitch:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValueOld:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    sget-boolean p2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiuix/preference/DropDownPreference;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperateOld:Lmiuix/preference/TextPreference;

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyLimitEnabled(Z)Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitChanged:Z

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "slot_num"

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "click_daily_data_limit_status"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "click_daily_data_limit"

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenCheckBoxPreference:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setLockScreenTrafficEnable(Z)Z

    sget-boolean p2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreference:Lmiuix/preference/DropDownPreference;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreferenceOld:Lmiuix/preference/TextPreference;

    :goto_1
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenChanged:Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperate:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_4

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->q()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->onSelectOverDailyLimit(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreference:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_5

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->q()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->onSelectLockScreen(I)V

    :cond_5
    :goto_2
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitValueOld:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v0, 0x7f1213d0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mTrafficDailyLimitType:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mDailyLimitValueSelected:I

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperateOld:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v0, 0x7f1213cf

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverLimitOperatorType:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mOverDailyLimitOperatorSelected:I

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningTextPreferenceOld:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v0, 0x7f120cbf

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningArray:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mLockScreenWarningSelected:I

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return v1
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f12060a

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;->mHandler:Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment$UIHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
