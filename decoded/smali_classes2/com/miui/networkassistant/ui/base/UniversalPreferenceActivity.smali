.class public Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;
.super Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;
.source "SourceFile"


# static fields
.field private static sActionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sActionSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity$1;

    invoke-direct {v1}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->sActionSet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->sActionMap:Ljava/util/HashMap;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui.intent.action.NETWORKASSISTANT_MONTH_PACKAGE_SETTING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->sActionMap:Ljava/util/HashMap;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui.intent.action.NETWORKASSISTANT_AUTO_TRAFFIC_CORRECTION_SETTING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->sActionMap:Ljava/util/HashMap;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui.intent.action.NETWORKASSISTANT_STATUS_BAR_SETTING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->sActionMap:Ljava/util/HashMap;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/SettingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui.intent.action.NETWORKASSISTANT_SETTINGS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->sActionMap:Ljava/util/HashMap;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/InternationalSettingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui.intent.action.oversea.NETWORKASSISTANT_SETTINGS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->sActionMap:Ljava/util/HashMap;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/OperatorSettingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui.intent.action.NETWORKASSISTANT_OPERATOR_SETTING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->sActionMap:Ljava/util/HashMap;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/TrafficLimitSettingFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui.intent.action.NETWORKASSISTANT_LIMIT_SETTING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->sActionMap:Ljava/util/HashMap;

    const-class v1, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "miui.intent.action.NETWORKASSISTANT_SET_PACKAGE_GUIDE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;-><init>()V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->lambda$onCreate$0()Z

    move-result p0

    return p0
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.NETWORKASSISTANT_UNIVERSAL_PREFERENCE_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fragment_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fragment_arg"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p2, -0x1

    :try_start_0
    const-string v1, "TITLE_FILED"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move p2, p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    if-lez p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    const-string p0, ""

    :goto_2
    const-string p1, ":miui:starting_window_label"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private interceptPkgGuide()Z
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "TO_BUSINESS_HALL"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->getCurrentPreferenceFragment()Lmiuix/preference/PreferenceFragment;

    move-result-object v3

    if-eqz v3, :cond_1

    instance-of v4, v3, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;

    invoke-virtual {v3, v0}, Lcom/miui/networkassistant/ui/fragment/PackageSettingGuideFragment;->interceptBack(Z)Z

    return v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "sim_slot_num_tag"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->getBusinessHall(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f010089

    const v2, 0x7f01008c

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return v1

    :cond_2
    return v2
.end method

.method private synthetic lambda$onCreate$0()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackActiveNetworkAssistant(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static startWithFragment(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method public static startWithFragment(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startWithFragmentForResult(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startWithFragmentForResult(Landroidx/fragment/app/Fragment;Ljava/lang/Class;Landroid/os/Bundle;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->getIntent(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected checkAction(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->sActionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "miui.intent.action.NETWORKASSISTANT_UNIVERSAL_PREFERENCE_ACTIVITY"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected getCurrentPreferenceFragment()Lmiuix/preference/PreferenceFragment;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->g0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lmiuix/preference/PreferenceFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/preference/PreferenceFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRatioUiBaseWidthDp()I
    .locals 1

    invoke-static {p0}, Lmiuix/autodensity/i;->a(Lmiuix/autodensity/j;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onActivityCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/common/base/b;->a(Lcom/miui/common/base/c;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onActivityDestroy()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->b(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityPause()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->c(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityResume()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->d(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStart()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->e(Lcom/miui/common/base/c;)V

    return-void
.end method

.method public bridge synthetic onActivityStop()V
    .locals 0

    invoke-static {p0}, Lcom/miui/common/base/b;->f(Lcom/miui/common/base/c;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Lcom/miui/networkassistant/ui/base/c;

    invoke-direct {p1, p0}, Lcom/miui/networkassistant/ui/base/c;-><init>(Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;)V

    invoke-virtual {p0, p1}, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->postOnIdleUiThread(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->interceptPkgGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->interceptPkgGuide()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected resolveAction(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->sActionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string v0, "fragment_arg"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p1, :cond_2

    sget-object v0, Lcom/miui/networkassistant/ui/base/UniversalPreferenceActivity;->sActionSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/miui/common/base/ui/BaseUniversalFragmentActivity;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
