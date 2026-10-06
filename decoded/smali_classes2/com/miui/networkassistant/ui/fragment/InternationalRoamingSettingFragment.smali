.class public Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;
.super Lcom/miui/common/base/ui/BasePreferenceFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;
.implements Landroidx/preference/Preference$d;


# static fields
.field private static final CATEGORY_DOMESTIC_ROAMING_SETTING:Ljava/lang/String; = "category_domestic_roaming_setting"

.field private static final CATEGORY_ROAMING_LIMIT_SETTING:Ljava/lang/String; = "category_roaming_limit_setting"

.field private static final CATEGORY_ROAMING_SETTING:Ljava/lang/String; = "category_roaming_setting"

.field private static final PREF_ALLOW_CONNECT_NETWORK_SWITCH:Ljava/lang/String; = "pref_allow_connect_network_switch"

.field private static final PREF_ALLOW_CONNECT_NETWORK_SWITCH_DEFAULT:Ljava/lang/String; = "pref_allow_connect_network_switch_default"

.field private static final PREF_ALLOW_CONNECT_NETWORK_SWITCH_OLD:Ljava/lang/String; = "pref_allow_connect_network_switch_old"

.field private static final PREF_KEY_DOMESTIC_ROAMING:Ljava/lang/String; = "pref_key_domestic_roaming"

.field private static final PREF_KEY_OVER_LIMIT_OPT:Ljava/lang/String; = "pref_key_over_limit_opt"

.field private static final PREF_KEY_OVER_LIMIT_OPT_OLD:Ljava/lang/String; = "pref_key_over_limit_opt_old"

.field private static final PREF_KEY_ROAMING_DAILY_LIMIT:Ljava/lang/String; = "pref_key_roaming_daily_limit"

.field private static final PREF_KEY_ROAMING_DAILY_LIMIT_VALUE:Ljava/lang/String; = "pref_key_roaming_daily_limit_value"

.field private static final PREF_WHITE_LIST_SETTING:Ljava/lang/String; = "pref_whitelist_setting"

.field private static final ROAMING_TYPE_ALWAYS:I = 0x0

.field private static final ROAMING_TYPE_EXCEPTIONS:I = 0x1

.field private static final ROAMING_TYPE_NEVER:I = 0x2

.field private static final SINGLE_CHOICE_OPT_TYPE_FLAG:I = 0x1

.field private static final SINGLE_CHOICE_ROAMING_TYPE_FLAG:I = 0x2

.field private static final TITLE_FILED:I = 0x7f120c72

.field private static sDefaultEnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowNetworkDefaultPreference:Landroidx/preference/CheckBoxPreference;

.field private mAllowNetworkPreference:Lmiuix/preference/DropDownPreference;

.field private mAllowNetworkPreferenceOld:Lmiuix/preference/TextPreference;

.field private mAllowNetworkType:I

.field private mAllowNetworkTypeArray:[Ljava/lang/String;

.field private mChoiceIndex:I

.field private mChoiceItemsDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mDomesticRoamingCategory:Landroidx/preference/PreferenceCategory;

.field private mDomesticRoamingSwitch:Landroidx/preference/CheckBoxPreference;

.field private mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mFirewallConn:Landroid/content/ServiceConnection;

.field private mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

.field private mOverLimitOptType:Lmiuix/preference/DropDownPreference;

.field private mOverLimitOptTypeOld:Lmiuix/preference/TextPreference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mRoamingDailyLimitCheckBox:Landroidx/preference/CheckBoxPreference;

.field private mRoamingDailyLimitTextPreference:Lmiuix/preference/TextPreference;

.field private mRoamingLimitCategory:Landroidx/preference/PreferenceCategory;

.field private mRoamingSettingCategory:Landroidx/preference/PreferenceCategory;

.field protected mServiceConnected:Z

.field private mSettedChanged:Z

.field private mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

.field private mSingleChoiceItemsArray:[Ljava/lang/String;

.field private mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

.field private mSlotNum:I

.field private mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

.field protected mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

.field private mTrafficManageConn:Landroid/content/ServiceConnection;

.field private mWhiteListSettingPreference:Lmiuix/preference/TextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->sDefaultEnableList:Ljava/util/List;

    const-string v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->sDefaultEnableList:Ljava/util/List;

    const-string v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->sDefaultEnableList:Ljava/util/List;

    const-string v1, "com.miui.virtualsim"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->sDefaultEnableList:Ljava/util/List;

    const-string v1, "com.mipay.wallet"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->sDefaultEnableList:Ljava/util/List;

    const-string v1, "com.xiaomi.account"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSlotNum:I

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mChoiceItemsDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallConn:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static synthetic a0(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->lambda$stopRecentApp$0()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lmiuix/preference/TextPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitTextPreference:Lmiuix/preference/TextPreference;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->initData()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Lcom/miui/common/base/asyn/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BasePreferenceFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->isCustomizedVersion()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkDefaultPreference:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkTypeArray:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->setAllowNetworkPreferenceText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSettedChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->onSelectOverLimitOpt(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkType:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->checkShowWarningDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateRoamingType(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;Lcom/miui/networkassistant/service/IFirewallBinder;)Lcom/miui/networkassistant/service/IFirewallBinder;
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->initRoamingButtonState()V

    return-void
.end method

.method private bindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private checkShowWarningDialog(I)V
    .locals 9

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isNoMoreAskRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateRoamingType(I)V

    return-void

    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12087d

    const v2, 0x7f120684

    const v3, 0x7f120685

    const/high16 v4, 0x1040000

    const-string v5, "ro.miui.customized.region"

    const-string v6, ""

    invoke-static {v5, v6}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "kr_skt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const v1, 0x7f120689

    const v2, 0x7f120687

    const v3, 0x7f120688

    const v4, 0x7f120686

    :cond_1
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$6;

    invoke-direct {v2, p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$6;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;I)V

    invoke-virtual {v1, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment$5;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V

    invoke-virtual {p1, v4, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-static {v5, v6}, Lx4/v1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f120683

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method private getRecentApp(Ljava/util/List;)Ljava/util/Set;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->ignoreKill(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, v1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->ignoreKill(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isPreFirewallWhiteListPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private ignoreKill(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private initData()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSlotNum:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingDailyLimitEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitCheckBox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitTextPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiuix/preference/DropDownPreference;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptTypeOld:Lmiuix/preference/TextPreference;

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingDailyLimitTraffic()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitTextPreference:Lmiuix/preference/TextPreference;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getRoamingOverLimitOptType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mChoiceIndex:I

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->setOverLimitPreferenceText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private initRoamingButtonState()V
    .locals 6

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getDataRoamingEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/networkassistant/config/CommonConfig;->getDataRoamingWhiteListEnable()Z

    move-result v1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->isCustomizedVersion()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-direct {p0, v3}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateRoamingType(I)V

    return-void

    :cond_0
    const/4 v2, 0x1

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkTypeArray:[Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_1

    aget-object v4, v4, v2

    invoke-direct {p0, v4}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->setAllowNetworkPreferenceText(Ljava/lang/String;)V

    iput v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkType:I

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateDefaultEnabledList()V

    goto :goto_0

    :cond_1
    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->setAllowNetworkPreferenceText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->isCustomizedVersion()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkDefaultPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    iput v3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkType:I

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->setAllowNetworkPreferenceText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->isCustomizedVersion()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkDefaultPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    iput v5, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkType:I

    invoke-direct {p0, v3}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingAppExceptionVisible(Z)V

    :goto_0
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    move v3, v2

    :cond_5
    invoke-direct {p0, v3}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingAppExceptionVisible(Z)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingLimitVisible(Z)V

    return-void
.end method

.method private isCustomizedVersion()Z
    .locals 3

    sget-boolean v0, Lx4/w;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "config_support_international_roaming_strategy"

    invoke-static {v0, v1}, Lx4/w;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_CUSTOMIZED_VERSION:Z

    if-nez v0, :cond_1

    invoke-static {}, Lx4/y;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private synthetic lambda$stopRecentApp$0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->getRecentApp(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lx4/z1;->y()I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/miui/appmanager/AppManageUtils;->m(Landroid/app/ActivityManager;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onSelectAllowNetwork(I)V
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkType:I

    if-eq v0, p1, :cond_3

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateRoamingType(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->checkShowWarningDialog(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private onSelectOverLimitOpt(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mChoiceIndex:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->setOverLimitPreferenceText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setRoamingOverLimitOptType(I)Z

    return-void
.end method

.method private setAllowNetworkPreferenceText(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setOverLimitPreferenceText(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference;->D(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptTypeOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showRoamingAppExceptionVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingSettingCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_whitelist_setting"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mWhiteListSettingPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mWhiteListSettingPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private showRoamingLimitVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "category_roaming_limit_setting"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingLimitCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingLimitCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private stopRecentApp()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/a;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/a;-><init>(Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unbindTrafficManageService()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->unbindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private updateAllowRoamingAppCount()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-interface {v1, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->getRoamingAppCountByRule(Lcom/miui/networkassistant/model/FirewallRule;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    move v1, v0

    :goto_0
    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
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

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mWhiteListSettingPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v0}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private updateDefaultEnabledList()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->isRoamingAppWhiteListDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setRoamingAppWhiteListDefault(Z)Z

    sget-object v0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->sDefaultEnableList:Ljava/util/List;

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

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/miui/networkassistant/utils/PackageUtil;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    sget-object v3, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-interface {v2, v1, v3}, Lcom/miui/networkassistant/service/IFirewallBinder;->setRoamingRule(Ljava/lang/String;Lcom/miui/networkassistant/model/FirewallRule;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateAllowRoamingAppCount()V

    return-void
.end method

.method private updateRoamingType(I)V
    .locals 2

    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkType:I

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkTypeArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->setAllowNetworkPreferenceText(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_4

    :cond_0
    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setDataRoamingEnabled(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->isCustomizedVersion()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkDefaultPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->setRoamingWhiteListEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->stopRecentApp()V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingLimitVisible(Z)V

    :goto_1
    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingAppExceptionVisible(Z)V

    goto :goto_4

    :cond_2
    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setDataRoamingEnabled(Landroid/content/Context;Z)V

    :try_start_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {p1, v1}, Lcom/miui/networkassistant/service/IFirewallBinder;->setRoamingWhiteListEnable(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->stopRecentApp()V

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingLimitVisible(Z)V

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingAppExceptionVisible(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateAllowRoamingAppCount()V

    goto :goto_4

    :cond_3
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->isCustomizedVersion()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkDefaultPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setDataRoamingEnabled(Landroid/content/Context;Z)V

    :try_start_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/service/IFirewallBinder;->setRoamingWhiteListEnable(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p1, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setRoamingWhiteListNotifyEnable(Z)Z

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->showRoamingLimitVisible(Z)V

    goto :goto_1

    :goto_4
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

    const v0, 0x7f150036

    return v0
.end method

.method protected initPreferenceView()V
    .locals 5

    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSlotNum:I

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/miui/networkassistant/service/FirewallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallConn:Landroid/content/ServiceConnection;

    invoke-static {}, Lx4/z1;->A()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4, v3}, Lx4/v;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "category_roaming_setting"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingSettingCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "category_roaming_limit_setting"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingLimitCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_allow_connect_network_switch_old"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreferenceOld:Lmiuix/preference/TextPreference;

    const-string v0, "pref_allow_connect_network_switch"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreference:Lmiuix/preference/DropDownPreference;

    const-string v0, "pref_allow_connect_network_switch_default"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkDefaultPreference:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_whitelist_setting"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mWhiteListSettingPreference:Lmiuix/preference/TextPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkDefaultPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mWhiteListSettingPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_key_roaming_daily_limit"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitCheckBox:Landroidx/preference/CheckBoxPreference;

    const-string v0, "pref_key_roaming_daily_limit_value"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitTextPreference:Lmiuix/preference/TextPreference;

    const-string v0, "pref_key_over_limit_opt_old"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/TextPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptTypeOld:Lmiuix/preference/TextPreference;

    const-string v0, "pref_key_over_limit_opt"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/DropDownPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiuix/preference/DropDownPreference;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitCheckBox:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitTextPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mChoiceItemsDialogListener:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog$SingleChoiceItemsDialogListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkTypeArray:[Ljava/lang/String;

    const-string v0, "category_domestic_roaming_setting"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mDomesticRoamingCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "pref_key_domestic_roaming"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mDomesticRoamingSwitch:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    invoke-static {}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isSupportDomesticRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mDomesticRoamingSwitch:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isDomesticRoamingEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mDomesticRoamingCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreference:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiuix/preference/DropDownPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptTypeOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :goto_1
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->isCustomizedVersion()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreferenceOld:Lmiuix/preference/TextPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingSettingCategory:Landroidx/preference/PreferenceCategory;

    :cond_2
    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreference:Lmiuix/preference/DropDownPreference;

    :goto_2
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingSettingCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkDefaultPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingSettingCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreferenceOld:Lmiuix/preference/TextPreference;

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingLimitCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptTypeOld:Lmiuix/preference/TextPreference;

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiuix/preference/DropDownPreference;

    :goto_4
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelOpenDataRoamingNotify(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->cancelRoamingDailyLimitWarning(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->bindTrafficManageService()V

    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mFirewallConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->unbindTrafficManageService()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitCheckBox:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSimUserInfo:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {p2, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->setRoamingDailyLimitEnabled(Z)Z

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitTextPreference:Lmiuix/preference/TextPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    sget-boolean p2, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_MIUI12:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiuix/preference/DropDownPreference;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptTypeOld:Lmiuix/preference/TextPreference;

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iput-boolean v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSettedChanged:Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mDomesticRoamingSwitch:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->setDomesticRoamingEnable(Landroid/content/Context;Z)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkDefaultPreference:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->checkShowWarningDialog(I)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateRoamingType(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreference:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_5

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->q()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->onSelectAllowNetwork(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptType:Lmiuix/preference/DropDownPreference;

    if-ne p1, v0, :cond_6

    invoke-virtual {v0}, Lmiuix/preference/DropDownPreference;->q()[Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/utils/CollectionUtils;->getArrayIndex([Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->onSelectOverLimitOpt(I)V

    :cond_6
    :goto_1
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mWhiteListSettingPreference:Lmiuix/preference/TextPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/RoamingWhiteListFragment;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalFragmentActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mRoamingDailyLimitTextPreference:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    if-nez p1, :cond_1

    new-instance p1, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficInputDialogListener:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;

    invoke-direct {p1, v0, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;-><init>(Landroid/app/Activity;Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog$TrafficInputDialogListener;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->clearInputText()V

    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mInputDialog:Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;

    const v0, 0x7f1213d0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f120c1f

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/miui/networkassistant/ui/dialog/TrafficInputDialog;->buildInputDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mOverLimitOptTypeOld:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v0, 0x7f1213cf

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsArray:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mChoiceIndex:I

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkPreferenceOld:Lmiuix/preference/TextPreference;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSingleChoiceItemsDialog:Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;

    const v0, 0x7f1215ac

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkTypeArray:[Ljava/lang/String;

    iget v3, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mAllowNetworkType:I

    const/4 v4, 0x2

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/miui/networkassistant/ui/dialog/SingleChoiceItemsDialog;->buildDialog(Ljava/lang/String;[Ljava/lang/String;II)V

    :cond_4
    :goto_1
    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->updateAllowRoamingAppCount()V

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f120c72

    return v0
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lmiuix/preference/PreferenceFragment;->onStop()V

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mServiceConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSettedChanged:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget v1, p0, Lcom/miui/networkassistant/ui/fragment/InternationalRoamingSettingFragment;->mSlotNum:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->forceCheckRoamingDailyLimitStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
