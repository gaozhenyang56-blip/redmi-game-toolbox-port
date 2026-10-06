.class public Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;
.implements Landroidx/preference/Preference$d;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;
.implements Landroidx/preference/Preference$c;


# static fields
.field private static final ACTION_FLAG_DAILY_BRAND:I = 0x1

.field private static final ACTION_FLAG_DAILY_PACKAGE:I = 0x3

.field private static final ACTION_FLAG_MONTH_PACKAGE:I = 0x2

.field private static final CATEGORY_KEY_BRAND:Ljava/lang/String; = "category_key_brand"

.field private static final PREF_KEY_BRAND:Ljava/lang/String; = "pref_key_brand"

.field private static final PREF_KEY_BRAND_OLD:Ljava/lang/String; = "pref_key_brand_old"

.field private static final PREF_KEY_DAILY_PACKAGE:Ljava/lang/String; = "pref_key_daily_package"

.field private static final PREF_KEY_IGNORE_APPS:Ljava/lang/String; = "pref_key_ignore_apps"

.field private static final PREF_KEY_MONTH_PACKAGE:Ljava/lang/String; = "pref_key_month_package"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllNetworkAccessedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDailyBrand:Ljava/lang/String;

.field private mDailyBrandPreference:Lmiuix/preference/DropDownPreference;

.field private mDailyBrandPreferenceOld:Lmiuix/preference/TextPreference;

.field private mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

.field private mDailyPackage:J

.field private mDailyPackagePreference:Lmiuix/preference/TextPreference;

.field private mIgnoreApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoreAppsPreference:Lmiuix/preference/TextPreference;

.field private mIsAppListInited:Z

.field private mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

.field private mMonthPackage:J

.field private mMonthPackagePreference:Lmiuix/preference/TextPreference;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackage:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIsAppListInited:Z

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIsAppListInited:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->finish()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreApps:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreApps:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    return p0
.end method

.method private addSaveButton()V
    .locals 6

    :try_start_0
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

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mNextButton:Landroid/widget/Button;

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mNextButton:Landroid/widget/Button;

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    const-string v1, "addSaveButton Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private onSelectDailyCardBrand(I)V
    .locals 5

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameListI18N()[Ljava/lang/String;

    move-result-object v1

    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrand:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->setDailyBrandText(Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->monthPackage:J

    iput-wide v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackage:J

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackagePreference:Lmiuix/preference/TextPreference;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v1, v2, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-wide v1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->dailyPackage:J

    iput-wide v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackagePreference:Lmiuix/preference/TextPreference;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v1, v2, v4}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, v0, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->ignoreApps:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->setIgnoreApps(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mNextButton:Landroid/widget/Button;

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private registerMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->registerLisener(Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;)V

    return-void
.end method

.method private setDailyBrandText(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
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

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIsAppListInited:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

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

    sget-object v3, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

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

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_2
    sget-object p1, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIgnoreApps fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIsAppListInited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startCorrection()V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isDailyUsedCardEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    :goto_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/SimUserInfo;->isDataUsageAutoCorrectionEffective()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    iget v5, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v2, v0, v5}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->toggleDataUsageAutoCorrection(ZI)V

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v0, v4, v2, v3, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->startCorrection(ZIZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    const-string v2, "stat Correction exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return-void
.end method

.method private unRegisterMonitorCenter()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonitorCenterListener:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper$AppMonitorListener;

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

    const v0, 0x7f150021

    return v0
.end method

.method protected initPreferenceView()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v1, 0x7f121ac5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    const-string v1, "category_key_brand"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    const-string v2, "pref_key_brand_old"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/TextPreference;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreferenceOld:Lmiuix/preference/TextPreference;

    const-string v2, "pref_key_brand"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/DropDownPreference;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreference:Lmiuix/preference/DropDownPreference;

    const-string v2, "pref_key_daily_package"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/TextPreference;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackagePreference:Lmiuix/preference/TextPreference;

    const-string v2, "pref_key_month_package"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/TextPreference;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackagePreference:Lmiuix/preference/TextPreference;

    const-string v2, "pref_key_ignore_apps"

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lmiuix/preference/TextPreference;

    iput-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreAppsPreference:Lmiuix/preference/TextPreference;

    sget-boolean v2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreferenceOld:Lmiuix/preference/TextPreference;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreference:Lmiuix/preference/DropDownPreference;

    :goto_0
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->addSaveButton()V

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :goto_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreAppsPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameListI18N()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->setDailyBrandText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackagePreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->registerMonitorCenter()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b0138

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->finish()V

    :goto_0
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

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->startCorrection()V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isNATipsEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TrafficUpdateUtil;->broadCastTrafficUpdated(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->unRegisterMonitorCenter()V

    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandInfo(Ljava/lang/String;)Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandNameIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardBrandIndex(I)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-wide v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackage:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->saveDataUsageTotal(J)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    iget-wide v1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->setDailyUsedCardPackage(J)Z

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreference:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_0

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->q()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->onSelectDailyCardBrand(I)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrandPreferenceOld:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v0, 0x7f120603

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandNameListI18N()[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyCardBrandConfig:Lcom/miui/networkassistant/config/DailyCardBrandConfig;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyBrand:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/networkassistant/config/DailyCardBrandConfig;->getBrandInfo(Ljava/lang/String;)Lcom/miui/networkassistant/model/DailyCardBrandInfo;

    move-result-object v2

    iget v2, v2, Lcom/miui/networkassistant/model/DailyCardBrandInfo;->brandNameIndex:I

    iget-object v3, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    invoke-virtual {v3, p1, v0, v2, v1}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackagePreference:Lmiuix/preference/TextPreference;

    const v2, 0x7f120c5b

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120607

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    :goto_0
    invoke-virtual {p1, v0, v2, v3}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackagePreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_2

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0, p0}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120608

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreAppsPreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/DataUsageIgnoreAppListFragment;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    :cond_3
    :goto_1
    return v1
.end method

.method public onSelectItemUpdate(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->onSelectDailyCardBrand(I)V

    :goto_0
    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f121ad4

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 4

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    const-string v1, "onTrafficManageServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIsAppListInited:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mAllNetworkAccessedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v3, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    invoke-interface {v2, v1, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->isDataUsageIgnore(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mIgnoreApps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->TAG:Ljava/lang/String;

    const-string v3, "isDataUsageIgnore"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTrafficUpdated(JI)V
    .locals 2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v1, 0x3

    if-eq p3, v1, :cond_0

    goto :goto_1

    :cond_0
    iput-wide p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackagePreference:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mNextButton:Landroid/widget/Button;

    if-eqz p1, :cond_3

    iget-wide p2, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mDailyPackage:J

    const-wide/16 v0, -0x1

    cmp-long p2, p2, v0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iput-wide p1, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackage:J

    iget-object p3, p0, Lcom/miui/networkassistant/ui/fragment/DailyCardSettingFragment;->mMonthPackagePreference:Lmiuix/preference/TextPreference;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1, p2, v0}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
