.class public final Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field private _binding:Ljf/k;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic a0(Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;->initView$lambda$1(Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;->initView$lambda$2(Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;Landroid/view/View;)V

    return-void
.end method

.method private final getBinding()Ljf/k;
    .locals 1

    iget-object v0, p0, Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;->_binding:Ljf/k;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    return-object v0
.end method

.method private final initView()V
    .locals 5

    invoke-direct {p0}, Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;->getBinding()Ljf/k;

    move-result-object v0

    iget-object v0, v0, Ljf/k;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://privacy.mi.com/emergency_location/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://terms.miui.com/doc/alarmassistance.html?lang="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const v1, 0x7f121c52

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3f

    invoke-static {v1, v2}, Landroidx/core/text/e;->a(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-direct {p0}, Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;->getBinding()Ljf/k;

    move-result-object v0

    iget-object v0, v0, Ljf/k;->b:Landroid/widget/Button;

    new-instance v1, Lcom/miui/policeassist/ui/a;

    invoke-direct {v1, p0}, Lcom/miui/policeassist/ui/a;-><init>(Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;->getBinding()Ljf/k;

    move-result-object v0

    iget-object v0, v0, Ljf/k;->e:Landroid/widget/Button;

    new-instance v1, Lcom/miui/policeassist/ui/b;

    invoke-direct {v1, p0}, Lcom/miui/policeassist/ui/b;-><init>(Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final initView$lambda$1(Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->getInstance()Lcom/miui/earthquakewarning/EarthquakeWarningManager;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/earthquakewarning/EarthquakeWarningManager;->openEarthquakeWarning(Landroid/content/Context;)V

    const-string p1, "main_switch_on"

    invoke-static {p1}, Lcom/miui/earthquakewarning/analytics/AnalyticHelper;->trackMainResultActionModuleClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final initView$lambda$2(Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Ljf/k;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Ljf/k;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;->_binding:Ljf/k;

    invoke-direct {p0}, Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;->initView()V

    invoke-direct {p0}, Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;->getBinding()Ljf/k;

    move-result-object p1

    invoke-virtual {p1}, Ljf/k;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string p2, "binding.root"

    invoke-static {p1, p2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;->getBinding()Ljf/k;

    move-result-object v1

    iget-object v1, v1, Ljf/k;->g:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->unregisterCoordinatedScrollView(Landroid/view/View;)V

    :cond_1
    iput-object v2, p0, Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;->_binding:Ljf/k;

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

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p2, p1, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz p2, :cond_0

    check-cast p1, Lmiuix/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/policeassist/ui/PoliceassistGuideLawFragment;->getBinding()Ljf/k;

    move-result-object p2

    iget-object p2, p2, Ljf/k;->g:Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ActionBar;->registerCoordinatedScrollView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
