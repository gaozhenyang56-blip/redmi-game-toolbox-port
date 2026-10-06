.class public Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;
.super Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# static fields
.field private static final PREF_KEY_DAILY_RENT:Ljava/lang/String; = "preference_dependence_key_day_plan"

.field private static final PREF_KEY_FRONT_PACKAGE_TYPE_CATEGORY:Ljava/lang/String; = "pref_key_front_package_type_category"

.field private static final PREF_KEY_INFINITE_LIMIT_DEPENDENCE:Ljava/lang/String; = "preference_dependence_key_month_infinite"

.field private static final PREF_KEY_MONTH_PLAN_DEPENDENCE:Ljava/lang/String; = "preference_dependence_key_month_plan"

.field private static final TITLE_FILED:I = 0x7f121a9d


# instance fields
.field private dailyRent:Lmiuix/preference/RadioButtonPreference;

.field private infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

.field private mActionBarTipButton:Landroid/widget/ImageView;

.field private mBrand:I

.field private mTrafficFrontCategory:Landroidx/preference/PreferenceCategory;

.field private monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

.field private recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->mBrand:I

    return-void
.end method

.method static synthetic access$000(Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;)[Lcom/miui/networkassistant/config/SimUserInfo;
    .locals 0

    iget-object p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    return p0
.end method

.method static synthetic access$700(Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->initData()V

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

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->getOperatorName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->getOperatorNumber(Landroid/content/Context;I)Ljava/lang/String;

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
    .locals 3

    iget-boolean v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mServiceConnected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSimUserInfos:[Lcom/miui/networkassistant/config/SimUserInfo;

    iget v1, p0, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->mSlotNum:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
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
    :goto_0
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

    const v0, 0x7f150030

    return v0
.end method

.method protected initCardStuff()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->initCardStuff()V

    return-void
.end method

.method protected initPreferenceView()V
    .locals 2

    const-string v0, "preference_dependence_key_day_plan"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->dailyRent:Lmiuix/preference/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->dailyRent:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "preference_dependence_key_month_infinite"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "preference_dependence_key_month_plan"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    const-string v0, "pref_key_front_package_type_category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->mTrafficFrontCategory:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lmiuix/preference/PreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p1
.end method

.method protected onCustomizeActionBar(Landroidx/appcompat/app/ActionBar;)I
    .locals 3

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mAppContext:Landroid/content/Context;

    const v2, 0x7f1219f2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    const v1, 0x7f08037f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment$1;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment$1;-><init>(Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    instance-of v0, p1, Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/appcompat/app/ActionBar;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->mActionBarTipButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onPause()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->dailyRent:Lmiuix/preference/RadioButtonPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iput v1, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->mBrand:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->infiniteLimitPanel:Lmiuix/preference/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->mBrand:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->monthPlanPanel:Lmiuix/preference/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    const-class v0, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    iget v0, p0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->mBrand:I

    const-string v2, "brand"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/networkassistant/ui/base/TrafficRelatedPreFragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->initData()V

    return-void
.end method

.method protected onSetTitle()I
    .locals 1

    const v0, 0x7f121a9d

    return v0
.end method

.method protected onTrafficManageServiceConnected()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment$2;

    invoke-direct {v0, p0, p0}, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment$2;-><init>(Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/miui/common/base/ui/BasePreferenceFragment;->postOnUiThread(Lcom/miui/common/base/asyn/b;)V

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

    invoke-static {v2, v3, v1}, Lcom/miui/networkassistant/ui/fragment/FrontPageFragment;->getOperatorTips(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/dialog/MessageDialog;

    iget-object v3, p0, Lcom/miui/common/base/ui/BasePreferenceFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/ui/dialog/MessageDialog;->buildShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
