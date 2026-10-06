.class public final Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEarthquakeWarningMainFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EarthquakeWarningMainFragment.kt\ncom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,241:1\n84#2,6:242\n1#3:248\n*S KotlinDebug\n*F\n+ 1 EarthquakeWarningMainFragment.kt\ncom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment\n*L\n48#1:242,6\n*E\n"
    }
.end annotation


# instance fields
.field private final infoLauncher:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private join:Lmiuix/preference/TextPreference;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private switch:Landroidx/preference/SwitchPreference;

.field private final switchLauncher:Landroidx/activity/result/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/b<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final vm$delegate:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const-class v0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;

    invoke-static {v0}, Lbk/z;->b(Ljava/lang/Class;)Lhk/b;

    move-result-object v0

    new-instance v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v2, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/x;->a(Landroidx/fragment/app/Fragment;Lhk/b;Lak/a;Lak/a;)Loj/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->vm$delegate:Loj/f;

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    new-instance v1, Lcom/miui/earthquakewarning/ui/m0;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/m0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026hButton()\n        }\n    }"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->infoLauncher:Landroidx/activity/result/b;

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    new-instance v2, Lcom/miui/earthquakewarning/ui/n0;

    invoke-direct {v2, p0}, Lcom/miui/earthquakewarning/ui/n0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Ld/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    move-result-object v0

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->switchLauncher:Landroidx/activity/result/b;

    return-void
.end method

.method public static synthetic a0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->onViewCreated$lambda$5(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getInfoLauncher$p(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)Landroidx/activity/result/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->infoLauncher:Landroidx/activity/result/b;

    return-object p0
.end method

.method public static final synthetic access$isDistrictSupport(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->isDistrictSupport(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->infoLauncher$lambda$2(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic c0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->showCloseWarningDialog$lambda$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->switchLauncher$lambda$3(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->showCloseWarningDialog$lambda$6(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->onCreatePreferences$lambda$0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->registerLiveDataObserve$lambda$1(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Ljava/lang/String;)V

    return-void
.end method

.method private final getLocation()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v0

    const-string v1, "viewLifecycleOwner"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/w;->a(Landroidx/lifecycle/v;)Landroidx/lifecycle/o;

    move-result-object v2

    new-instance v5, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Ltj/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Llk/g;->b(Llk/i0;Ltj/g;Llk/k0;Lak/p;ILjava/lang/Object;)Llk/s1;

    return-void
.end method

.method private final getSubscribeCites()V
    .locals 1

    sget-boolean v0, Lsl/a;->a:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->getVm()Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->getSubscribeCities()V

    :cond_0
    return-void
.end method

.method private final getVm()Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->vm$delegate:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;

    return-object v0
.end method

.method private static final infoLauncher$lambda$2(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->refreshSwitchButton()V

    :cond_0
    return-void
.end method

.method private final isDistrictSupport(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "geocode"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "support"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v4, p2}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v0
.end method

.method private static final onCreatePreferences$lambda$0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {p2, p1}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->onEarthquakeWarningSwitchOn()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->showCloseWarningDialog()V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final onEarthquakeWarningSwitchOff()V
    .locals 1

    const-string v0, "main_switch_off"

    invoke-static {v0}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackMainResultActionModuleClick(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->closeEarthquakeWarning()V

    return-void
.end method

.method private final onEarthquakeWarningSwitchOn()V
    .locals 4

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->switchLauncher:Landroidx/activity/result/b;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private static final onViewCreated$lambda$5(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/miui/earthquakewarning/ui/EarthquakeWarningGuideSampleActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private final refreshStatus()V
    .locals 6

    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeMonitorOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->join:Lmiuix/preference/TextPreference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->getEarthquakeMonitorOrder()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->join:Lmiuix/preference/TextPreference;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1207c0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->join:Lmiuix/preference/TextPreference;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1207bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->join:Lmiuix/preference/TextPreference;

    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private final registerLiveDataObserve()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->getVm()Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->getSubscribeLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lcom/miui/earthquakewarning/ui/l0;

    invoke-direct {v2, p0}, Lcom/miui/earthquakewarning/ui/l0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->getVm()Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->getContanctMergedLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object v1

    new-instance v2, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$registerLiveDataObserve$2;

    invoke-direct {v2, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$registerLiveDataObserve$2;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V

    new-instance v3, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragmentKt$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v3, v2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragmentKt$sam$androidx_lifecycle_Observer$0;-><init>(Lak/l;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->i(Landroidx/lifecycle/v;Landroidx/lifecycle/d0;)V

    return-void
.end method

.method private static final registerLiveDataObserve$lambda$1(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "concerns"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lmiuix/preference/TextPreference;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmiuix/preference/TextPreference;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final setupEqmEntry()V
    .locals 3

    const-string v0, "ew_monitor_join"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    sget-boolean v1, Lsl/a;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/earthquakewarning/utils/Utils;->showEqmEntry(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->refreshStatus()V

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "preferenceScreen"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private final showCloseWarningDialog()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12079b

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12079a

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/earthquakewarning/ui/j0;

    invoke-direct {v1, p0}, Lcom/miui/earthquakewarning/ui/j0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/earthquakewarning/ui/k0;

    invoke-direct {v1}, Lcom/miui/earthquakewarning/ui/k0;-><init>()V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private static final showCloseWarningDialog$lambda$6(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "dialog"

    invoke-static {p1, p2}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->onEarthquakeWarningSwitchOff()V

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->refreshSwitchButton()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final showCloseWarningDialog$lambda$7(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "dialog"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final switchLauncher$lambda$3(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->refreshSwitchButton()V

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

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const p1, 0x7f15002b

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "ew_switch"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->switch:Landroidx/preference/SwitchPreference;

    const-string p1, "banner"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->switch:Landroidx/preference/SwitchPreference;

    const/4 p2, 0x0

    const-string v0, "switch"

    if-nez p1, :cond_0

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->switch:Landroidx/preference/SwitchPreference;

    if-nez p1, :cond_1

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    new-instance p1, Lcom/miui/earthquakewarning/ui/i0;

    invoke-direct {p1, p0}, Lcom/miui/earthquakewarning/ui/i0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$c;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->getSubscribeCites()V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->refreshStatus()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lmiuix/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->setupEqmEntry()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/v;

    move-result-object p1

    invoke-interface {p1}, Landroidx/lifecycle/v;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object p1

    new-instance p2, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$onViewCreated$1;

    invoke-direct {p2, p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$onViewCreated$1;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V

    invoke-virtual {p1, p2}, Landroidx/lifecycle/l;->a(Landroidx/lifecycle/u;)V

    const-string p1, "category_contact"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    const-string v0, "preferenceScreen"

    invoke-static {p2, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    const-string p1, "banner"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/miui/earthquakewarning/ui/h0;

    invoke-direct {p2, p0}, Lcom/miui/earthquakewarning/ui/h0;-><init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$d;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->registerLiveDataObserve()V

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->getVm()Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel;->mergeContacts()V

    return-void
.end method

.method public final refreshSwitchButton()V
    .locals 4

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->switch:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    const-string v2, "switch"

    if-nez v0, :cond_0

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-static {}, Lcom/miui/earthquakewarning/utils/Utils;->isEarthquakeWarningOpen()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->switch:Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_1

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;->getLocation()V

    :cond_2
    return-void
.end method
