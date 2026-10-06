.class public Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;
.implements Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$TrafficOptionDialogListener;
    }
.end annotation


# static fields
.field private static final ACTION_FLAG_DAILY_WARNING:I = 0x6

.field private static final ACTION_FLAG_INFINITE_MONTH_WARNING:I = 0x5

.field private static final ACTION_FLAG_NORMAL_MONTH_TOTAL:I = 0x1

.field private static final ACTION_FLAG_NORMAL_MONTH_WARNING:I = 0x3

.field private static final MSG_TRAFFIC_MANAGE_SERVICE_CONNECTED:I = 0x1

.field private static final PREF_KEY_DAILY_DATA_USAGE_WARNING:Ljava/lang/String; = "daily_data_usage_warning"

.field private static final PREF_KEY_DAILY_RENT:Ljava/lang/String; = "preference_dependence_key_day_plan"

.field private static final PREF_KEY_DAILY_TRAFFIC_REMINDER_TYPE:Ljava/lang/String; = "daily_traffic_reminder_type"

.field private static final PREF_KEY_INFINITE_LIMIT_DEPENDENCE:Ljava/lang/String; = "preference_dependence_key_month_infinite"

.field private static final PREF_KEY_MONTH_DATA_USAGE_WARNING:Ljava/lang/String; = "month_data_usage_warning"

.field private static final PREF_KEY_MONTH_INFINITE_DATA_USAGE_WARNING:Ljava/lang/String; = "month_infinite_data_usage_warning"

.field private static final PREF_KEY_MONTH_INFINITE_TRAFFIC_REMINDER_TYPE:Ljava/lang/String; = "month_infinite_traffic_reminder_type"

.field private static final PREF_KEY_MONTH_PLAN:Ljava/lang/String; = "pref_key_month_plan"

.field private static final PREF_KEY_MONTH_PLAN_DEPENDENCE:Ljava/lang/String; = "preference_dependence_key_month_plan"

.field private static final PREF_KEY_MONTH_PLAN_OVER_PACKAGE_TRAFFIC_REMINDER_TYPE:Ljava/lang/String; = "month_plan_over_package_traffic_reminder_type"

.field private static final PREF_KEY_PACKAGE_TYPE_CATEGORY:Ljava/lang/String; = "pref_key_package_type_category"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_FILED:I = 0x7f121abd

.field private static final TRAFFIC_REMINDER_FROM:Ljava/lang/String; = "traffic_reminder_page"


# instance fields
.field private InfiniteReminder:Lmiuix/preference/TextPreference;

.field private InfiniteWarning:Lmiuix/preference/TextPreference;

.field private MonthFixOverReminder:Lmiuix/preference/DropDownPreference;

.field private MonthFixReminder:Lmiuix/preference/DropDownPreference;

.field actionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private dailyReminder:Lmiuix/preference/DropDownPreference;

.field private dailyRent:Lmiuix/preference/RadioButtonPreference;

.field private dailyWarning:Lmiuix/preference/TextPreference;

.field private infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

.field private isSetDailyWarning:Z

.field private isSetInfiniteWarning:Z

.field private mActionBarTipButton:Landroid/widget/ImageView;

.field private mChanged:Z

.field private mHandler:Landroid/os/Handler;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mOverLimitReminderType:[Ljava/lang/String;

.field private mSelectType:I

.field private mTrafficLimitChanged:Z

.field private mTrafficPackageTypeSelected:I

.field private mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

.field private mTrafficReminderTypeSelected:I

.field public mTrafficSwitch:Z

.field private monthFixWarning:Lmiuix/preference/TextPreference;

.field private monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

.field private monthPlanPreference:Lmiuix/preference/TextPreference;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private reminderType:[I

.field private saveBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->reminderType:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mSelectType:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->actionMap:Ljava/util/HashMap;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mHandler:Landroid/os/Handler;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->initData()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getProvinceMap()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getOperatorMap()V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1700(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->saveBtn:Landroid/widget/Button;

    return-object p0
.end method

.method private addBtn()V
    .locals 3

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

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->saveBtn:Landroid/widget/Button;

    const v2, 0x7f121618

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->updateSaveBtn()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->saveBtn:Landroid/widget/Button;

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/i0;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/fragment/i0;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->lambda$addBtn$0(Landroid/view/View;)V

    return-void
.end method

.method public static getOperatorName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperator(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p0, ""

    goto :goto_1

    :cond_0
    const p1, 0x7f120f81

    goto :goto_0

    :cond_1
    const p1, 0x7f120f83

    goto :goto_0

    :cond_2
    const p1, 0x7f120f84

    goto :goto_0

    :cond_3
    const p1, 0x7f120f85

    goto :goto_0

    :cond_4
    const p1, 0x7f120f82

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getOperatorNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperator(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, ""

    goto :goto_1

    :cond_0
    const-string p0, "400-922-3838"

    goto :goto_1

    :cond_1
    const p1, 0x7f120f88

    goto :goto_0

    :cond_2
    const p1, 0x7f120f89

    goto :goto_0

    :cond_3
    const p1, 0x7f120f87

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getOperatorTips(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->getOperatorName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->getOperatorNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object p0, p1, v0

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initData()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->updateTrafficReminderPreference(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthPlanPreference:Lmiuix/preference/TextPreference;

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v0, v1, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mTrafficPackageTypeSelected:I

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mTrafficPackageTypeSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mTrafficPackageTypeSelected:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->updateSelectBrand(I)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_4

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->acquirePhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->updateSelectReminderType()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->updatePreferenceValue()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->updateSaveBtn()V

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$addBtn$0(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->actionMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->actionMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->actionMap:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthTotal(J)V

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->actionMap:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float p1, v2

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageWarning(F)Z

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/config/SimUserInfo;->saveNotLimitedWarning(Ljava/lang/Long;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v2, v4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardPackage(J)Z

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->saveTrafficCorrectionInfo()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private monthTotal(J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

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

    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p1, p1, p2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficCorrectionAutoModify(Z)Z

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelDataUsageOverLimit(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelNormalTotalPackageNotSetted(Landroid/content/Context;)V

    return-void
.end method

.method private reportTrafficReminder()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mTrafficSwitch:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "traffic_reminder_switch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "traffic_reminder_from"

    const-string v2, "traffic_reminder_page"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mSelectType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "traffic_reminder_package_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mTrafficReminderTypeSelected:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "traffic_reminder_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "traffic_reminder"

    invoke-static {v1, v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private saveTrafficCorrectionInfo()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setMiMobileOperatorModify(Z)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    const-wide/16 v2, -0x2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageOverLimitStopNetworkTime(J)Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mTrafficLimitChanged:Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mChanged:Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mSelectType:I

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBrand(I)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveTrafficCorrectionInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mSelectType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mSelectType:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficReminderSwitch(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDailyTrafficReminderSwitch(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveInfiniteTrafficReminderSwitch(Z)V

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDailyTrafficReminderSwitch(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficReminderSwitch(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveInfiniteTrafficReminderSwitch(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDailyTrafficReminderSwitch(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficReminderSwitch(Z)V

    :cond_3
    :goto_1
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
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mChanged:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateTrafficStatusMonitor(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v1, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->toggleDataUsageAutoCorrection(ZI)V

    :cond_4
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

    :cond_5
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mTrafficLimitChanged:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateTrafficStatusMonitor(I)V

    :cond_6
    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mChanged:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "update failed onDestroy "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->startCorrection()V

    return-void
.end method

.method private setDailyWarningPreferenceValue(Ljava/lang/Long;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyWarning:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x2

    invoke-static {v1, v2, v3, p1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private setInfiniteWarningPreferenceValue(Ljava/lang/Long;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->InfiniteWarning:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p1, 0x2

    invoke-static {v1, v2, v3, p1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private setMonthWarningPreferenceValue(F)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthFixWarning:Lmiuix/preference/TextPreference;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    float-to-double v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

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

    new-instance v3, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$TrafficOptionDialogListener;

    invoke-direct {v3, v2}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$TrafficOptionDialogListener;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v2, v3}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/OptionTipDialog$OptionDialogListener;)V

    invoke-virtual {v1, v0, p1}, Lcom/miui/networkassistant/ui/dialog/OptionTipDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startCorrection()V
    .locals 4

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "stat Correction exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private updatePreferenceValue()V
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyWarning()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->isSetDailyWarning:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyWarning()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->setDailyWarningPreferenceValue(Ljava/lang/Long;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getNotLimitedWarning()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-ltz v0, :cond_1

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->isSetInfiniteWarning:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getNotLimitedWarning()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->setInfiniteWarningPreferenceValue(Ljava/lang/Long;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageWarning()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->setMonthWarningPreferenceValue(F)V

    return-void
.end method

.method private updateSaveBtn()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mSelectType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_1

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->isSetDailyWarning:Z

    if-nez v2, :cond_3

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->isSetInfiniteWarning:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->saveBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->saveBtn:Landroid/widget/Button;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateSelectBrand(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mSelectType:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyRent:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mSelectType:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mSelectType:I

    :goto_0
    return-void
.end method

.method private updateSelectReminderType()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->reminderType:[I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getReminderType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->reminderType:[I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInfiniteReminderType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->reminderType:[I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getDailyReminderType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->reminderType:[I

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthOverReminderType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyReminder:Lmiuix/preference/DropDownPreference;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mOverLimitReminderType:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->MonthFixOverReminder:Lmiuix/preference/DropDownPreference;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mOverLimitReminderType:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    return-void
.end method

.method private updateTrafficReminderPreference(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyRent:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyRent:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public checkAutoCorrectionSwitch(Z)V
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

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->showTipsForAutoCorrection()V

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

    const v0, 0x7f15006e

    return v0
.end method

.method protected initCardStuff()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->initCardStuff()V

    return-void
.end method

.method protected initPreferenceView()V
    .locals 4

    const-string v0, "preference_dependence_key_day_plan"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyRent:Lmiuix/preference/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyRent:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "preference_dependence_key_month_infinite"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "preference_dependence_key_month_plan"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "pref_key_month_plan"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthPlanPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_key_package_type_category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mTrafficReminderCategory:Landroidx/preference/PreferenceCategory;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const-string v0, "month_infinite_traffic_reminder_type"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->InfiniteReminder:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    const-string v0, "daily_traffic_reminder_type"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyReminder:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "month_data_usage_warning"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthFixWarning:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "daily_data_usage_warning"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyWarning:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "month_infinite_data_usage_warning"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->InfiniteWarning:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "month_plan_over_package_traffic_reminder_type"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->MonthFixOverReminder:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mOverLimitReminderType:[Ljava/lang/String;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->addBtn()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mChanged:Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->actionMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->actionMap:Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->actionMap:Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->actionMap:Ljava/util/HashMap;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmiuix/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1219f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    const v1, 0x7f08037f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v0, p1, Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/appcompat/app/ActionBar;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->reportTrafficReminder()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyRent:Lmiuix/preference/RadioButtonPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iput v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mSelectType:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mSelectType:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyReminder:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_3

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->q()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyReminder:Lmiuix/preference/DropDownPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->reminderType:[I

    aget v0, v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->onSelectReminderType(Lmiuix/preference/DropDownPreference;I)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->reminderType:[I

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDailyReminderType(I)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->InfiniteReminder:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->MonthFixOverReminder:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_5

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->q()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->MonthFixOverReminder:Lmiuix/preference/DropDownPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->reminderType:[I

    aget v0, v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->onSelectReminderType(Lmiuix/preference/DropDownPreference;I)V

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object p2, p2, v0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->reminderType:[I

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveMonthOverReminderType(I)Z

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->updateSaveBtn()V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mChanged:Z

    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthPlanPreference:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1208c0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c5c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthFixWarning:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_2

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

    if-gez v6, :cond_1

    move-wide v2, v4

    :cond_1
    invoke-virtual {p1, v2, v3, v0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->setData(JF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "get current package"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyWarning:Lmiuix/preference/TextPreference;

    const v2, 0x7f120c61

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const v0, 0x7f120610

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v5, 0x7f12060d

    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->InfiniteWarning:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const v0, 0x7f120e4e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v5, 0x7f120e4d

    goto :goto_1

    :cond_4
    :goto_2
    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->initData()V

    return-void
.end method

.method public onSeekBarChanged(F)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->setMonthWarningPreferenceValue(F)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageWarning(F)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mChanged:Z

    return-void
.end method

.method public onSelectReminderType(Lmiuix/preference/DropDownPreference;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getMonthOverReminderType()I

    move-result v0

    if-eq v0, p2, :cond_1

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
    iput p2, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mTrafficReminderTypeSelected:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->reminderType:[I

    invoke-static {v0, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getIntArrayIndex([II)I

    move-result p2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mOverLimitReminderType:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f121abd

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    :cond_0
    return-void
.end method

.method public onTrafficUpdated(JI)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->actionMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    const/4 v2, 0x3

    if-eq p3, v2, :cond_2

    const/4 v2, 0x5

    if-eq p3, v2, :cond_1

    const/4 v2, 0x6

    if-eq p3, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->dailyWarning:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->isSetDailyWarning:Z

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->InfiniteWarning:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->isSetInfiniteWarning:Z

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->updateSaveBtn()V

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthFixWarning:Lmiuix/preference/TextPreference;

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->showPermanentNotificationStatusBar(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->monthPlanPreference:Lmiuix/preference/TextPreference;

    :goto_1
    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_2
    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->mChanged:Z

    return-void
.end method

.method public showTips()V
    .locals 4

    const v0, 0x7f12156b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f121af6

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-static {v2, v3, v1}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;->getOperatorTips(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showTipsForAutoCorrection()V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/TrafficReminderSettingFragment;)V

    new-instance v1, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f12156b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f1219f0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/common/base/ui/a;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    return-void
.end method
