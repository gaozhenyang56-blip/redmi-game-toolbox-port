.class public Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# static fields
.field private static final CATEGORY_KEY_ADJUST_TRAFFIC:Ljava/lang/String; = "category_key_adjust_traffic"

.field private static final CATEGORY_KEY_OPERATOR_SETTING:Ljava/lang/String; = "category_key_operator_setting"

.field private static final CATEGORY_KEY_PACKAGE_TYPE:Ljava/lang/String; = "category_key_package_type"

.field private static final PREF_ADJUST_DATA_USAGE:Ljava/lang/String; = "pref_adjust_data_usage"

.field private static final PREF_AUTO_ADJUST_TRAFFIC:Ljava/lang/String; = "pref_auto_adjust_traffic"

.field private static final PREF_DAILY_CARD:Ljava/lang/String; = "pref_daily_card"

.field private static final PREF_KEY_CITY:Ljava/lang/String; = "pref_key_city"

.field private static final PREF_KEY_CITY_OLD:Ljava/lang/String; = "pref_key_city_old"

.field private static final PREF_KEY_OPERATOR:Ljava/lang/String; = "pref_key_operator"

.field private static final PREF_KEY_OPERATOR_OLD:Ljava/lang/String; = "pref_key_operator_old"

.field private static final PREF_KEY_PROVINCE:Ljava/lang/String; = "pref_key_province"

.field private static final PREF_KEY_PROVINCE_OLD:Ljava/lang/String; = "pref_key_province_old"

.field private static final PREF_NORMAL_CARD:Ljava/lang/String; = "pref_normal_card"

.field private static final PREF_NO_LIMIT_CARD:Ljava/lang/String; = "pref_no_limit_card"

.field private static final PREF_TC_SMS_REPORT:Ljava/lang/String; = "pref_tc_sms_report"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdjustDataPreference:Lmiuix/preference/TextPreference;

.field private mAdjustTrafficCategory:Landroidx/preference/PreferenceCategory;

.field private mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

.field private mAutoCorrectionEnable:Z

.field private mCityPreference:Lmiuix/preference/DropDownPreference;

.field private mCityPreferenceOld:Lmiuix/preference/TextPreference;

.field private mDailyCardPreference:Lmiuix/preference/RadioButtonPreference;

.field private mIsTrafficGuide:Z

.field private mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mNextButton:Landroid/widget/Button;

.field private mNormalPreference:Lmiuix/preference/RadioButtonPreference;

.field private mNotLimitPreference:Lmiuix/preference/RadioButtonPreference;

.field private mOperatorPreference:Lmiuix/preference/DropDownPreference;

.field private mOperatorPreferenceOld:Lmiuix/preference/TextPreference;

.field private mPackageTypeCategory:Landroidx/preference/PreferenceCategory;

.field private mPackageTypePreference:Landroidx/preference/Preference;

.field private mProvincePreference:Lmiuix/preference/DropDownPreference;

.field private mProvincePreferenceOld:Lmiuix/preference/TextPreference;

.field private mReportPreference:Lmiuix/preference/TextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->initData()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1600(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1800(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->initSimLocation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method private addSaveButton()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0390

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNextButton:Landroid/widget/Button;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNextButton:Landroid/widget/Button;

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/l;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/fragment/l;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->TAG:Ljava/lang/String;

    const-string v1, "addSaveButton Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic b0(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->lambda$addSaveButton$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->lambda$addSaveButton$0()V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Landroidx/preference/Preference;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->lambda$onPreferenceChange$5(Landroidx/preference/Preference;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->lambda$initData$7()V

    return-void
.end method

.method public static synthetic f0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->lambda$addSaveButton$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g0(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->lambda$addSaveButton$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->lambda$onPreferenceChange$4()V

    return-void
.end method

.method public static synthetic i0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->lambda$onPreferenceChange$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private initData()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoCorrectionEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->initCardStuff()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_1

    const v2, 0x7f120370

    goto :goto_0

    :cond_1
    const v2, 0x7f120371

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/h;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/h;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getProvinceMap()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getOperatorMap()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$3;

    invoke-direct {v4, p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V

    invoke-static {v0, v2, v3, v4}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;ILandroid/os/Handler;Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->initSimLocation(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyCardSettingGuideEnable(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    rsub-int/lit8 v2, v2, 0x1

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyCardSettingGuideEnable(Z)Z

    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAdjustTrafficCategory:Landroidx/preference/PreferenceCategory;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mPackageTypeCategory:Landroidx/preference/PreferenceCategory;

    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_6

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method private initSimLocation(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->refreshCorrectionView()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lbh/c;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-interface {v2, v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getProvinceCodeByCityCode(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->TAG:Ljava/lang/String;

    const-string v3, "get area location failed"

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->TAG:Ljava/lang/String;

    const-string v3, "parse city code exception"

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I

    if-lez v0, :cond_2

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    :cond_2
    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    if-lez v0, :cond_3

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    :cond_3
    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->selectProvince(I)V

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->selectPackageType(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->refreshButtonView()V

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->initOperator(Ljava/lang/String;)V

    iget p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I

    if-le p1, v1, :cond_4

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    if-le v0, v1, :cond_4

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    if-eq p1, v1, :cond_4

    iget p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    if-eq v0, p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->showSimLocationErrorDialog()V

    :cond_4
    return-void
.end method

.method private synthetic lambda$addSaveButton$0()V
    .locals 7

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    const-string v1, "sim_slot_num_tag"

    const/4 v2, 0x1

    const-string v3, "TO_BUSINESS_HALL"

    const/4 v4, 0x0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v0, v5, v6}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iget-object v5, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    instance-of v6, v5, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;

    if-eqz v6, :cond_0

    const-class v0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    iget-object v5, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f010089

    const v2, 0x7f01008c

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->finish()V

    return-void
.end method

.method private synthetic lambda$addSaveButton$1(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    const-string p2, "scence_complete_package_setting"

    invoke-static {p2}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickGrantSendSms(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/miui/networkassistant/config/CommonConfig;->setEnableToSendMsgToCorrect(Z)Z

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private static synthetic lambda$addSaveButton$2(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    const-string p0, "scence_complete_package_setting"

    invoke-static {p0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickCancelSendSms(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$addSaveButton$3(Landroid/view/View;)V
    .locals 3

    new-instance p1, Lcom/miui/networkassistant/ui/fragment/e;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/fragment/e;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIMOBILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isEnableToSendMsgToCorrect()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->makeDialog(Landroid/content/Context;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120e82

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/f;

    invoke-direct {v2, p0, p1}, Lcom/miui/networkassistant/ui/fragment/f;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121917

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/g;

    invoke-direct {v1}, Lcom/miui/networkassistant/ui/fragment/g;-><init>()V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->setDialogParams(Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const-string p1, "scence_complete_package_setting"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackShowGrantSendSmsDialog(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$initData$7()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->finish()V

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$4()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    return-void
.end method

.method private synthetic lambda$onPreferenceChange$5(Landroidx/preference/Preference;Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    const-string p3, "scence_complete_package_setting"

    invoke-static {p3}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickGrantSendSms(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/miui/networkassistant/config/CommonConfig;->setEnableToSendMsgToCorrect(Z)Z

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    move-object p3, p1

    check-cast p3, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p3, p4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onPreferenceChange$6(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    const-string p0, "scence_complete_package_setting"

    invoke-static {p0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickCancelSendSms(Ljava/lang/String;)V

    return-void
.end method

.method private navigateToMainActivity()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_back"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    const-string v3, "sim_slot_num_tag"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "bundle_key_from_other_task"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x10008000

    goto :goto_0

    :cond_1
    const/high16 v0, 0x4000000

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNATipsEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TrafficUpdateUtil;->broadCastTrafficUpdated(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method private onOperatorSelected(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperatorMap:Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->setOperatorText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->refreshCorrectionView()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->refreshButtonView()V

    return-void
.end method

.method private onSelectCity(I)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    if-ltz p1, :cond_1

    array-length v1, v0

    if-ge p1, v1, :cond_1

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->setCityText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->refreshButtonView()V

    :cond_1
    return-void
.end method

.method private onSelectOperator(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperatorMap:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->onOperatorSelected(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onSelectProvince(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->selectProvince(I)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->refreshButtonView()V

    :cond_2
    return-void
.end method

.method private refreshButtonView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private refreshCorrectionView()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isSupportCorrection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoCorrectionEnable:Z

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private saveTrafficCorrectionInfo()V
    .locals 3

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->setSimLocationAlertIgnore()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveProvince(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveCity(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveOperator(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setMiMobileOperatorModify(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const-wide/16 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkTime(J)Z

    :cond_3
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBrand(I)Z

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficTcResultCode(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillTcResultCode(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setTrafficSmsDetail(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setBillSmsDetail(Ljava/lang/String;)Z

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionOn()Z

    move-result v1

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v1, v2}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->toggleDataUsageAutoCorrection(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "toggleDataUsageAutoCorrection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->startCorrection()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->navigateToMainActivity()V

    :cond_6
    :goto_1
    return-void
.end method

.method private setButtonText(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method private setCityText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private setOperatorText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private setProvinceText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvincePreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

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

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "stat Correction exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
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

    const v0, 0x7f150042

    return v0
.end method

.method protected initOperator(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->initOperator(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperatorStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->onOperatorSelected(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected initPreferenceView()V
    .locals 2

    const-string v0, "pref_key_province_old"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvincePreferenceOld:Lmiuix/preference/TextPreference;

    const-string v0, "pref_key_city_old"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityPreferenceOld:Lmiuix/preference/TextPreference;

    const-string v0, "pref_key_operator_old"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorPreferenceOld:Lmiuix/preference/TextPreference;

    const-string v0, "pref_key_province"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvincePreference:Lmiuix/preference/DropDownPreference;

    const-string v0, "pref_key_city"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityPreference:Lmiuix/preference/DropDownPreference;

    const-string v0, "pref_key_operator"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorPreference:Lmiuix/preference/DropDownPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvincePreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "category_key_package_type"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mPackageTypeCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_normal_card"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNormalPreference:Lmiuix/preference/RadioButtonPreference;

    const-string v0, "pref_daily_card"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mDailyCardPreference:Lmiuix/preference/RadioButtonPreference;

    const-string v0, "pref_no_limit_card"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNotLimitPreference:Lmiuix/preference/RadioButtonPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNormalPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mDailyCardPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNotLimitPreference:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "category_key_adjust_traffic"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAdjustTrafficCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_auto_adjust_traffic"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_adjust_data_usage"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAdjustDataPreference:Lmiuix/preference/TextPreference;

    const-string v0, "pref_tc_sms_report"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mReportPreference:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAdjustDataPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mReportPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f121ac5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->setProvinceText(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->setCityText(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->setOperatorText(Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "traffic_guide"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bundle_key_from_other_task"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->addSaveButton()V

    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    if-ltz v1, :cond_2

    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mIsTrafficGuide:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIMOBILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isEnableToSendMsgToCorrect()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->saveTrafficCorrectionInfo()V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimUserInfos["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->TAG:Ljava/lang/String;

    const-string v1, "mSimUserInfos or SlotNum is invalid"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoCorrectionEnable:Z

    if-eqz p2, :cond_2

    new-instance p2, Lcom/miui/networkassistant/ui/fragment/i;

    invoke-direct {p2, p0}, Lcom/miui/networkassistant/ui/fragment/i;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isEnableToSendMsgToCorrect()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isMiMobileOperator(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->makeDialog(Landroid/content/Context;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120e82

    new-instance v3, Lcom/miui/networkassistant/ui/fragment/j;

    invoke-direct {v3, p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/j;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Landroidx/preference/Preference;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f121917

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/k;

    invoke-direct {v0}, Lcom/miui/networkassistant/ui/fragment/k;-><init>()V

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->setDialogParams(Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const-string p1, "scence_complete_package_setting"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackShowGrantSendSmsDialog(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return v1

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isBillReminderSwitch()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isTrafficReminderSwitch()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyTrafficReminderSwitch()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->isInfiniteTrafficReminderSwitch()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    invoke-virtual {p1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->toggleDataUsageAutoCorrection(Z)Z

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAutoAdjustPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->showTipsForReminder()V

    :cond_5
    :goto_1
    return v2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperatorMap:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mProvincePreferenceOld:Lmiuix/preference/TextPreference;

    const/4 v5, 0x0

    if-ne p1, v4, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v2, 0x7f121acf

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    invoke-virtual {p0, v3, v4}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getPosByTag(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v3

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(I[Ljava/lang/String;II)V

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mCityPreferenceOld:Lmiuix/preference/TextPreference;

    const/4 v4, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v0, 0x7f121ac2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    invoke-virtual {p0, v3, v5}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getPosByTag(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(I[Ljava/lang/String;II)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mOperatorPreferenceOld:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v0, 0x7f121acc

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperatorMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v3, v4}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getPosByTag(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(I[Ljava/lang/String;II)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mAdjustDataPreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/TemplateSettingFragment;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mReportPreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_5

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-class v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "view_from"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v0, v2, p1}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNormalPreference:Lmiuix/preference/RadioButtonPreference;

    const v2, 0x7f121ac1

    if-ne p1, v0, :cond_6

    iput v5, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->setButtonText(I)V

    :goto_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->refreshButtonView()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mDailyCardPreference:Lmiuix/preference/RadioButtonPreference;

    if-ne p1, v0, :cond_7

    iput v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    const p1, 0x7f121ac9

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->setButtonText(I)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNotLimitPreference:Lmiuix/preference/RadioButtonPreference;

    if-ne p1, v0, :cond_8

    iput v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    goto :goto_0

    :cond_8
    :goto_2
    return v1
.end method

.method public onSelectItemUpdate(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->onSelectOperator(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->onSelectCity(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->onSelectProvince(I)V

    :goto_0
    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f121ad4

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method protected selectPackageType(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNotLimitPreference:Lmiuix/preference/RadioButtonPreference;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mDailyCardPreference:Lmiuix/preference/RadioButtonPreference;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->mNormalPreference:Lmiuix/preference/RadioButtonPreference;

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method protected selectProvince(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->selectProvince(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->setProvinceText(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getCityMapByProvinceId(I)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;->setCityText(Ljava/lang/String;)V

    return-void
.end method

.method public showTipsForReminder()V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;)V

    new-instance v1, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f120ed3

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/common/base/ui/a;->setPostiveText(Ljava/lang/String;)V

    const v0, 0x7f12055e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/common/base/ui/a;->setNagetiveText(Ljava/lang/String;)V

    const v0, 0x7f121ae1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f1219f1

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/common/base/ui/a;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    return-void
.end method
