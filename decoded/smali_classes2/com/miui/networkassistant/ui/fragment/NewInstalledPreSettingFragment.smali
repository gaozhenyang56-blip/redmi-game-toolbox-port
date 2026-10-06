.class public Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;
.super Lcom/miui/common/base/ui/BasePreferenceFragment;
.source "SourceFile"


# static fields
.field private static final PREF_KEY_NEW_INSTALLED_APP_FIREWALL_MOBILE1:Ljava/lang/String; = "pref_key_new_installed_app_firewall_mobile1"

.field private static final PREF_KEY_NEW_INSTALLED_APP_FIREWALL_MOBILE2:Ljava/lang/String; = "pref_key_new_installed_app_firewall_mobile2"

.field private static final PREF_KEY_NEW_INSTALLED_APP_FIREWALL_WIFI:Ljava/lang/String; = "pref_key_new_installed_app_firewall_wifi"

.field private static final TITLE_FILED:I = 0x7f1213be


# instance fields
.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mIsDualSimInserted:Z

.field private mMobileClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMobileClickListener2:Landroid/content/DialogInterface$OnClickListener;

.field private mMobilePreConfig:[Landroidx/preference/CheckBoxPreference;

.field private mOnPreferenceChangeListener:Landroidx/preference/Preference$c;

.field private mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

.field private mWifiClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mWifiPreConfig:Landroidx/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/base/ui/BasePreferenceFragment;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Landroidx/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroidx/preference/CheckBoxPreference;

    new-array v0, v0, [Lcom/miui/networkassistant/config/SimUserInfo;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mOnPreferenceChangeListener:Landroidx/preference/Preference$c;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobileClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$3;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$3;-><init>(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobileClickListener2:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$4;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment$4;-><init>(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mWifiClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)[Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->showMobileCloseDialog(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mWifiPreConfig:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->showWifiCloseDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->handleMobileDialogClick(II)V

    return-void
.end method

.method private handleMobileDialogClick(II)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p1, p2

    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setFirewallMobilePreConfig(I)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroidx/preference/CheckBoxPreference;

    aget-object p1, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private initMobilePreference(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;I)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroidx/preference/CheckBoxPreference;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mOnPreferenceChangeListener:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroidx/preference/CheckBoxPreference;

    aget-object v0, v0, p1

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, v2, p1

    invoke-virtual {p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getFirewallMobilePreConfig()I

    move-result p1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private setDualCardMobileConfig()V
    .locals 4

    sget-boolean v0, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_DUAL_CARD:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mIsDualSimInserted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->setMobilePreference(I)V

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->setMobilePreference(I)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/dual/Sim;->getCurrentActiveSlotNum()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->initMobilePreference(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroidx/preference/CheckBoxPreference;

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    return-void
.end method

.method private setMobilePreference(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/miui/networkassistant/utils/TextPrepareUtil;->getDualCardTitle(Landroid/content/Context;Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->initMobilePreference(I)V

    return-void
.end method

.method private showMobileCloseDialog(IZ)V
    .locals 1

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobileClickListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobileClickListener2:Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    new-instance p2, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, v0, p1}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v0, 0x7f12068a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v0, 0x7f120876

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/common/base/ui/a;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mSimUserInfo:[Lcom/miui/networkassistant/config/SimUserInfo;

    aget-object p1, p2, p1

    sget-object p2, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/networkassistant/config/SimUserInfo;->setFirewallMobilePreConfig(I)Z

    :goto_1
    return-void
.end method

.method private showWifiCloseDialog()V
    .locals 3

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/CommonDialog;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mWifiClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f12068a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/base/ui/a;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120889

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/common/base/ui/a;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/dialog/CommonDialog;->show()V

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

    const v0, 0x7f15003d

    return v0
.end method

.method protected initPreferenceView()V
    .locals 5

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isDualSimInserted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mIsDualSimInserted:Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroidx/preference/CheckBoxPreference;

    const-string v1, "pref_key_new_installed_app_firewall_mobile1"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroidx/preference/CheckBoxPreference;

    const-string v1, "pref_key_new_installed_app_firewall_mobile2"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/CheckBoxPreference;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->setDualCardMobileConfig()V

    invoke-static {}, Lx4/k0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mMobilePreConfig:[Landroidx/preference/CheckBoxPreference;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    const-string v0, "pref_key_new_installed_app_firewall_wifi"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mWifiPreConfig:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v4, 0x7f120888

    invoke-static {v1, v4}, Lx4/y1;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mWifiPreConfig:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mOnPreferenceChangeListener:Landroidx/preference/Preference$c;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mWifiPreConfig:Landroidx/preference/CheckBoxPreference;

    sget-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/FirewallRule;->value()I

    move-result v1

    iget-object v4, p0, Lcom/miui/networkassistant/ui/fragment/NewInstalledPreSettingFragment;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/CommonConfig;->getFirewallWifiPreConfig()I

    move-result v4

    if-ne v1, v4, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f1213be

    return v0
.end method
