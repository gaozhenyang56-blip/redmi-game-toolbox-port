.class public Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;
.implements Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$TrafficOptionDialogListener;
    }
.end annotation


# static fields
.field private static final ACTION_DAILY_PACKAGE:I = 0x4

.field private static final ACTION_FLAG_DAILY_BRAND:I = 0x7

.field private static final ACTION_FLAG_MANUAL_LEISURE_TRAFFIC:I = 0x6

.field private static final ACTION_FLAG_NORMAL_MONTH_TOTAL:I = 0x1

.field private static final ACTION_FLAG_NOT_LIMIT_TOTAL:I = 0x8

.field private static final ACTION_USAGE_PACKAGE:I = 0x5

.field private static final CATEGORY_KEY_BRAND:Ljava/lang/String; = "category_key_brand"

.field private static final MSG_TRAFFIC_MANAGE_SERVICE_CONNECTED:I = 0x1

.field private static final OVER_NORMAL_TRAFFIC_LIMIT:I = 0x2

.field private static final PACKAGE_DAILY_TYPE:I = 0x2

.field private static final PACKAGE_MONTH_TYPE:I = 0x0

.field private static final PACKAGE_NO_LIMIT_TYPE:I = 0x1

.field private static final PREF_KEY_CARD_BANNER:Ljava/lang/String; = "pref_key_card_banner"

.field private static final PREF_KEY_DAILY_RENT:Ljava/lang/String; = "preference_dependence_key_day_plan"

.field private static final PREF_KEY_INFINITE_LIMIT_DEPENDENCE:Ljava/lang/String; = "preference_dependence_key_month_infinite"

.field private static final PREF_KEY_MONTH_PLAN:Ljava/lang/String; = "pref_key_month_plan"

.field private static final PREF_KEY_MONTH_PLAN_DEPENDENCE:Ljava/lang/String; = "preference_dependence_key_month_plan"

.field private static final PREF_KEY_PACKAGE_LOCATION:Ljava/lang/String; = "pref_key_location"

.field private static final PREF_KEY_PACKAGE_OPERATOR:Ljava/lang/String; = "pref_key_selected_operator"

.field private static final PREF_KEY_PACKAGE_OPERATOR_SHOW:Ljava/lang/String; = "pref_key_operator"

.field private static final PREF_KEY_PACKAGE_TYPE_CATEGORY:Ljava/lang/String; = "pref_key_package_type_category"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_FILED:I = 0x7f1210d8


# instance fields
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

.field private cardBanner:Lcom/miui/networkassistant/ui/view/CardBannerPreference;

.field dailyBrand:Lcom/miui/networkassistant/model/DailyCardBrandInfo;

.field private dailyRent:Lmiuix/preference/RadioButtonPreference;

.field private infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

.field private initSimLocationSuccess:Z

.field private initSimOperatorSuccess:Z

.field private mActionBarTipButton:Landroid/widget/ImageView;

.field private mAllNetworkAccessedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChanged:Z

.field private mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

.field private mHandler:Landroid/os/Handler;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mIsAppListInited:Z

.field private mLocationPreference:Lmiuix/preference/TextPreference;

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mOperatorPreference:Lcom/miui/networkassistant/ui/view/TextIconPreference;

.field private mTrafficLimitChanged:Z

.field private mTrafficPackageTypeSelected:I

.field private monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

.field private monthPlanPreference:Lmiuix/preference/TextPreference;

.field private operatorSelectPreference:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;

.field operators:[Ljava/lang/String;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private regionDialog:Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;

.field private saveBtn:Landroid/widget/Button;

.field smsContent:Ljava/lang/String;

.field smsNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mIsAppListInited:Z

    const-string v1, "CMCC"

    const-string v2, "UNICOM"

    const-string v3, "TELECOM"

    const-string v4, "CBN"

    const-string v5, "400"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->operators:[Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->smsNum:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->smsContent:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->initSimOperatorSuccess:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->initSimLocationSuccess:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->actionMap:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->dailyBrand:Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->initData()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->initSimLocation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getProvinceMap()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getOperatorMap()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1900(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$202(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mLocationPreference:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)Lmiuix/preference/RadioButtonPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->setBtnEnable(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->onSelectNormalTrafficLimit(I)V

    return-void
.end method

.method static synthetic access$2502(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    return p1
.end method

.method static synthetic access$2602(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    return p1
.end method

.method static synthetic access$2702(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;I)I
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    return p1
.end method

.method static synthetic access$302(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mIsAppListInited:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
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

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->saveBtn:Landroid/widget/Button;

    const v2, 0x7f121618

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->setBtnEnable(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->saveBtn:Landroid/widget/Button;

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/z;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/fragment/z;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->lambda$addBtn$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->lambda$addBtn$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->lambda$initPreferenceView$7(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method private dailyPackage(J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardPackage(J)Z

    return-void
.end method

.method public static synthetic e0(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;I)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->lambda$initPreferenceView$5(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f0(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->lambda$initPreferenceView$8()V

    return-void
.end method

.method public static synthetic g0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->lambda$interceptBack$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private getPreDirectionAndNumber()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getInstructions(I)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsNum()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->smsNum:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getCustomizedSmsContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->smsContent:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->smsNum:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->smsNum:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->smsContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->smsContent:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static synthetic h0(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->lambda$initPreferenceView$4(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i0(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->lambda$interceptBack$11(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method private initData()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isOversea()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getDataUsageTotal()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->monthPlanPreference:Lmiuix/preference/TextPreference;

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

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mTrafficPackageTypeSelected:I

    if-gez v0, :cond_3

    const/4 v0, 0x0

    :cond_3
    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mTrafficPackageTypeSelected:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->getPreDirectionAndNumber()V

    :cond_4
    :goto_1
    return-void
.end method

.method private initSimLocation(Ljava/lang/String;)V
    .locals 6

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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lbh/c;->b(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficCornBinders:[Lcom/miui/networkassistant/service/ITrafficCornBinder;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v3, v3, v4

    invoke-interface {v3, v0}, Lcom/miui/networkassistant/service/ITrafficCornBinder;->getProvinceCodeByCityCode(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->initSimLocationSuccess:Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v3, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->TAG:Ljava/lang/String;

    const-string v4, "get area location failed"

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v3, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->TAG:Ljava/lang/String;

    const-string v4, "parse city code exception"

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getCityMapByProvinceId(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    iget v4, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mLocationPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-static {p1, v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperatorStr(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->initOperator(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->setBtnEnable(Z)V

    iget p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceCode:I

    if-le p1, v1, :cond_6

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityCode:I

    if-le v0, v1, :cond_6

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    if-eq p1, v1, :cond_6

    iget p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    if-eq v0, p1, :cond_6

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->showSimLocationErrorDialog()V

    :cond_6
    return-void
.end method

.method public static synthetic j0(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->lambda$initOperator$9()V

    return-void
.end method

.method public static synthetic k0(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->lambda$initPreferenceView$6(II)V

    return-void
.end method

.method public static synthetic l0(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->lambda$initPreferenceView$3(I)V

    return-void
.end method

.method private synthetic lambda$addBtn$0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string p1, "scence_complete_package_setting"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickGrantSendSms(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/CommonConfig;->setEnableToSendMsgToCorrect(Z)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->saveInfoAndFinish()V

    return-void
.end method

.method private static synthetic lambda$addBtn$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    const-string p0, "scence_complete_package_setting"

    invoke-static {p0}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackClickCancelSendSms(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$addBtn$2(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/CommonConfig;->isEnableToSendMsgToCorrect()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->makeDialog(Landroid/content/Context;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120e82

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/p;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/p;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121917

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/q;

    invoke-direct {v1}, Lcom/miui/networkassistant/ui/fragment/q;-><init>()V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/GrantSendMessageDialogUtil;->setDialogParams(Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const-string p1, "scence_complete_package_setting"

    invoke-static {p1}, Lcom/miui/networkassistant/utils/AnalyticsHelperNew;->trackShowGrantSendSmsDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->saveInfoAndFinish()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initOperator$9()V
    .locals 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imsi"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lx4/t;->d(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&appKey=RdS47349AMMIGe6Z4zQ7sWVY7A5lDEcH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/earthquakewarning/utils/MD5Util;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lp4/i;

    const-string v2, "query_micard_info"

    invoke-direct {v1, v2}, Lp4/i;-><init>(Ljava/lang/String;)V

    const-string v2, "https://mihall.10046.xiaomimobile.com/mimobile/consumption"

    invoke-static {v2, v0, v1}, Leg/j;->f(Ljava/lang/String;Ljava/util/Map;Lp4/i;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "rtnCode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "province"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    const-string v0, "city"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    const-string v0, "traffic_package_type"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProvince = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  mCity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    move v7, v1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getCityMapByProvinceId(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "province = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;

    iget-object v4, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method private synthetic lambda$initPreferenceView$3(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->operators:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->operators:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperatorMap:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mOperatorPreference:Lcom/miui/networkassistant/ui/view/TextIconPreference;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mOperatorPreference:Lcom/miui/networkassistant/ui/view/TextIconPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->operatorSelectPreference:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;

    invoke-virtual {v1, p1}, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;->getOperator(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mOperatorPreference:Lcom/miui/networkassistant/ui/view/TextIconPreference;

    const v0, 0x7f08082a

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/view/TextIconPreference;->setRightIcon(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->operatorSelectPreference:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->setBtnEnable(Z)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$initPreferenceView$4(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mOperatorPreference:Lcom/miui/networkassistant/ui/view/TextIconPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->operatorSelectPreference:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08082a

    goto :goto_0

    :cond_0
    const v0, 0x7f0808d8

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/ui/view/TextIconPreference;->setRightIcon(I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->operatorSelectPreference:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return v1
.end method

.method private synthetic lambda$initPreferenceView$5(I)[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getCityMapByProvinceId(I)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    sub-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, -0x1

    aget-object v3, p1, v2

    aput-object v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$initPreferenceView$6(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->initSimLocationSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    const-string v1, "MIMOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getCityMapByProvinceId(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getCityMapByProvinceId(I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    add-int/2addr p2, v2

    aget-object p2, v0, p2

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    iget p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mLocationPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mChanged:Z

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->setBtnEnable(Z)V

    return-void
.end method

.method private synthetic lambda$initPreferenceView$7(Landroidx/preference/Preference;)Z
    .locals 9

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v5, v1, [Ljava/lang/String;

    move v1, v2

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, -0x1

    aget-object v4, p1, v1

    aput-object v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Integer;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->getCityMapByProvinceId(I)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    array-length v0, p1

    sub-int/2addr v0, v2

    new-array v6, v0, [Ljava/lang/String;

    move v0, v2

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    aget-object v3, p1, v0

    aput-object v3, v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;

    iget-object v4, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v7, Lcom/miui/networkassistant/ui/fragment/o;

    invoke-direct {v7, p0}, Lcom/miui/networkassistant/ui/fragment/o;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V

    new-instance v8, Lcom/miui/networkassistant/ui/fragment/r;

    invoke-direct {v8, p0}, Lcom/miui/networkassistant/ui/fragment/r;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;-><init>(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$ChangeListener;Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog$SelectListener;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->regionDialog:Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;

    const v0, 0x7f12161a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->regionDialog:Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->show()V

    iget p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->regionDialog:Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvinceMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCityMap:Ljava/util/Map;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/miui/networkassistant/ui/dialog/RegionPickerDialog;->setPosition(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2
.end method

.method private synthetic lambda$initPreferenceView$8()V
    .locals 3

    const-string v0, "package_type_by_msg"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackMainButtonClickCountEvent(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->smsNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->smsContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->smsNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->smsContent:Ljava/lang/String;

    const-string v2, "sms_body"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "view_from"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/miui/networkassistant/ui/fragment/TcSmsReportFragment;

    invoke-static {v1, v2, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-static {}, Ld2/c;->b()Ld2/c;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120914

    invoke-virtual {v0, v1, v2}, Ld2/c;->e(Landroid/content/Context;I)Ld2/c;

    return-void
.end method

.method private static synthetic lambda$interceptBack$10(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private synthetic lambda$interceptBack$11(ZLandroid/content/DialogInterface;I)V
    .locals 0

    iget-boolean p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget p3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {p2, p3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->clearDataUsageIgnore(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "sim_slot_num_tag"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f010089

    const p3, 0x7f01008c

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic m0(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->lambda$addBtn$2(Landroid/view/View;)V

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

.method private navigateToMainActivity()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "key_back"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->actionMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    const-string v3, "sim_slot_num_tag"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v0, :cond_1

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

.method private noLimit(J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setNotLimitedCardPackage(J)Z

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

    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mTrafficLimitChanged:Z

    return-void
.end method

.method private registerMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    return-void
.end method

.method private saveInfoAndFinish()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->dailyBrand:Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->selectBrand(Lcom/miui/networkassistant/model/DailyCardBrandInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->actionMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->monthTotal(J)V

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->actionMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->dailyPackage(J)V

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->actionMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->noLimit(J)V

    :cond_3
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->saveTrafficCorrectionInfo()V

    const-string v0, "package_setting"

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->recordCountEvent(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackPackageSelect(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private saveTrafficCorrectionInfo()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
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

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isTotalDataUsageSetted()Z

    move-result v0

    if-nez v0, :cond_2

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

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mTrafficLimitChanged:Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mChanged:Z

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveBrand(I)Z

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveTrafficReminderSwitch(Z)V

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v2

    const/4 v2, 0x0

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
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mChanged:Z

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
    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mTrafficLimitChanged:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->updateTrafficStatusMonitor(I)V

    :cond_6
    iput-boolean v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mChanged:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->TAG:Ljava/lang/String;

    const-string v2, "update failed onDestroy "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->startCorrection()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->navigateToMainActivity()V

    :cond_7
    :goto_1
    return-void
.end method

.method private selectBrand(Lcom/miui/networkassistant/model/DailyCardBrandInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandNameIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardBrandIndex(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-wide v1, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-wide v1, p1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->dailyPackage:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardPackage(J)Z

    return-void
.end method

.method private setBtnEnable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->saveBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    if-le p1, v3, :cond_0

    iget p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    if-le p1, v3, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->cardBanner:Lcom/miui/networkassistant/ui/view/CardBannerPreference;

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    if-le v0, v3, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->setBtnEnable(Z)V

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

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mIsAppListInited:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mAllNetworkAccessedApps:Ljava/util/List;

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

    sget-object v3, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->TAG:Ljava/lang/String;

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

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    sget-object p1, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIgnoreApps fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mIsAppListInited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v3, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$TrafficOptionDialogListener;

    invoke-direct {v3, v2}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$TrafficOptionDialogListener;-><init>(Landroid/app/Activity;)V

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

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->TAG:Ljava/lang/String;

    const-string v2, "stat Correction exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private unRegisterMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->unRegisterLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

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

    const v0, 0x7f15006f

    return v0
.end method

.method protected initCardStuff()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->initCardStuff()V

    return-void
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
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mOperatorPreference:Lcom/miui/networkassistant/ui/view/TextIconPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperatorMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->operatorSelectPreference:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mOperator:Ljava/lang/String;

    const-string v0, "MIMOBILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mOperatorPreference:Lcom/miui/networkassistant/ui/view/TextIconPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/miui/networkassistant/ui/fragment/s;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/fragment/s;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V

    invoke-static {p1}, Lx4/f;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected initPreferenceView()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    const-string v0, "preference_dependence_key_day_plan"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->dailyRent:Lmiuix/preference/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->dailyRent:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "preference_dependence_key_month_plan"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "preference_dependence_key_month_infinite"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    const-string v0, "pref_key_month_plan"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->monthPlanPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_key_operator"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->operatorSelectPreference:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/v;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/fragment/v;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;->setListener(Lcom/miui/networkassistant/ui/view/SelectOperatorPreference$ClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->operatorSelectPreference:Lcom/miui/networkassistant/ui/view/SelectOperatorPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "pref_key_selected_operator"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/TextIconPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mOperatorPreference:Lcom/miui/networkassistant/ui/view/TextIconPreference;

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/w;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/fragment/w;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_key_location"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mLocationPreference:Lmiuix/preference/TextPreference;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mLocationPreference:Lmiuix/preference/TextPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v3, 0x7f121612

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->registerMonitorCenter()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mLocationPreference:Lmiuix/preference/TextPreference;

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/x;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/fragment/x;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_key_card_banner"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/view/CardBannerPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->cardBanner:Lcom/miui/networkassistant/ui/view/CardBannerPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->cardBanner:Lcom/miui/networkassistant/ui/view/CardBannerPreference;

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/y;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/fragment/y;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->setListener(Lcom/miui/networkassistant/ui/view/CardBannerPreference$ClickListener;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->cardBanner:Lcom/miui/networkassistant/ui/view/CardBannerPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f121af7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->setBannerTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->cardBanner:Lcom/miui/networkassistant/ui/view/CardBannerPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f121615

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->setBannerSummary(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->cardBanner:Lcom/miui/networkassistant/ui/view/CardBannerPreference;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120b66

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->setBtnText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->cardBanner:Lcom/miui/networkassistant/ui/view/CardBannerPreference;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/ui/view/CardBannerPreference;->setBtnEnable(Z)V

    return-void
.end method

.method public interceptBack(Z)Z
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1212ef

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121621

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/t;

    invoke-direct {v1}, Lcom/miui/networkassistant/ui/fragment/t;-><init>()V

    const v2, 0x7f120591

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/u;

    invoke-direct {v1, p0, p1}, Lcom/miui/networkassistant/ui/fragment/u;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;Z)V

    const p1, 0x7f1207f8

    invoke-virtual {v0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->addBtn()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mChanged:Z

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->setBtnEnable(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->actionMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->actionMap:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->actionMap:Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmiuix/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1219f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    const v1, 0x7f08037f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$2;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v0, p1, Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/appcompat/app/ActionBar;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->unRegisterMonitorCenter()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    iput v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->dailyRent:Lmiuix/preference/RadioButtonPreference;

    if-ne p1, v2, :cond_1

    iput v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

    if-ne p1, v2, :cond_2

    const/4 v2, 0x2

    iput v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mBrand:I

    :cond_2
    :goto_0
    if-ne p1, p2, :cond_3

    move v0, v1

    :cond_3
    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->onSelectNormalTrafficLimit(I)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mChanged:Z

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->setBtnEnable(Z)V

    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->monthPlanPreference:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1208c0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c5c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->cardBanner:Lcom/miui/networkassistant/ui/view/CardBannerPreference;

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mProvince:I

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mCity:I

    if-gez p1, :cond_2

    :cond_1
    invoke-static {}, Ld2/c;->b()Ld2/c;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120915

    invoke-virtual {p1, v0, v2}, Ld2/c;->e(Landroid/content/Context;I)Ld2/c;

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->setBtnEnable(Z)V

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->initData()V

    return-void
.end method

.method public onSeekBarChanged(F)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageWarning(F)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mChanged:Z

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->setBtnEnable(Z)V

    return-void
.end method

.method public onSelectItemUpdate(II)V
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->onSelectNormalTrafficLimit(I)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mChanged:Z

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->setBtnEnable(Z)V

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

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$4;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    :cond_0
    return-void
.end method

.method public onTrafficUpdated(JI)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->actionMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, p3}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->showPermanentNotificationStatusBar(Landroid/content/Context;)V

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->monthPlanPreference:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, p1, p2, v2}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->mChanged:Z

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->setBtnEnable(Z)V

    return-void
.end method
